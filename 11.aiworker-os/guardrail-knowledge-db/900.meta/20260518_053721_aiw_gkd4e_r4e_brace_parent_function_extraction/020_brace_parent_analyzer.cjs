'use strict';

const fs = require('node:fs');

const serverPath = process.argv[2];
const topStart = Number(process.argv[3]);
const topEnd = Number(process.argv[4]);
const parentOut = process.argv[5];
const contextOut = process.argv[6];
const insertionOut = process.argv[7];
const designOut = process.argv[8];

const text = fs.readFileSync(serverPath, 'utf8');
const lines = text.split(/\r?\n/);

function stripLineForBraceScan(line) {
  let out = '';
  let quote = null;
  let escaped = false;

  for (let i = 0; i < line.length; i += 1) {
    const ch = line[i];
    const next = line[i + 1];

    if (!quote && ch === '/' && next === '/') break;

    if (quote) {
      if (escaped) {
        escaped = false;
      } else if (ch === '\\') {
        escaped = true;
      } else if (ch === quote) {
        quote = null;
      }
      out += ' ';
      continue;
    }

    if (ch === '"' || ch === "'" || ch === '`') {
      quote = ch;
      out += ' ';
      continue;
    }

    out += ch;
  }

  return out;
}

function braceDelta(line) {
  const s = stripLineForBraceScan(line);
  let delta = 0;
  for (const ch of s) {
    if (ch === '{') delta += 1;
    if (ch === '}') delta -= 1;
  }
  return delta;
}

function headerName(line) {
  const patterns = [
    /async\s+function\s+([A-Za-z0-9_$]+)\s*\(/,
    /function\s+([A-Za-z0-9_$]+)\s*\(/,
    /const\s+([A-Za-z0-9_$]+)\s*=\s*async\s*\(/,
    /const\s+([A-Za-z0-9_$]+)\s*=\s*\(/,
    /async\s+([A-Za-z0-9_$]+)\s*\(/,
    /([A-Za-z0-9_$]+)\s*:\s*async\s*\(/,
    /([A-Za-z0-9_$]+)\s*:\s*\(/
  ];

  for (const p of patterns) {
    const m = line.match(p);
    if (m) return m[1];
  }

  return '-';
}

function isFunctionHeader(line) {
  return /(async\s+function|function\s+[A-Za-z0-9_$]+\s*\(|const\s+[A-Za-z0-9_$]+\s*=\s*(async\s*)?\(|=>\s*\{|app\.(post|get|use|all)|router\.(post|get|use|all)|createServer)/.test(line);
}

function findEnclosures() {
  const candidates = [];

  for (let i = 0; i < lines.length; i += 1) {
    const lineNo = i + 1;
    const line = lines[i];

    if (!isFunctionHeader(line)) continue;

    let foundOpen = false;
    let depth = 0;
    let startLine = lineNo;
    let endLine = null;

    for (let j = i; j < lines.length; j += 1) {
      const current = lines[j];

      if (!foundOpen && current.includes('{')) {
        foundOpen = true;
      }

      if (foundOpen) {
        depth += braceDelta(current);
        if (depth <= 0) {
          endLine = j + 1;
          break;
        }
      }
    }

    if (!foundOpen || !endLine) continue;

    if (startLine <= topStart && endLine >= topEnd) {
      candidates.push({
        startLine,
        endLine,
        name: headerName(line),
        header: line.trim(),
        lineCount: endLine - startLine + 1
      });
    }
  }

  candidates.sort((a, b) => a.lineCount - b.lineCount || b.startLine - a.startLine);
  return candidates;
}

const sideEffectPattern = /(pool\.query|\.query\(|insert\s+into|update\s+|delete\s+from|writeFile|mkdir|createWriteStream|spawn|exec\(|fetch\(|http\.request|https\.request|artifact|deliverable|zip|summary_text|generated_artifacts|run[A-Z_]|execute|worker|consumer|queue)/i;
const variablePattern = /(request|runtimeRequest|runtime_request|queueItem|job|task|payload|body|source|input|params|row|record|request_id|execution_id|company|robot|artifact)/i;
const responsePattern = /(res\.writeHead|res\.end|sendJson|jsonResponse|writeJson|return\s+\{|ok:|reason:|message:|statusCode|throw\s+new|catch\s*\()/i;

const enclosures = findEnclosures();

let parentTsv = 'start_line\tend_line\tline_count\tname\theader\n';
for (const e of enclosures) {
  parentTsv += `${e.startLine}\t${e.endLine}\t${e.lineCount}\t${e.name}\t${e.header.replace(/\t/g, ' ')}\n`;
}
fs.writeFileSync(parentOut, parentTsv);

const best = enclosures[0] || null;

let context = '# GKD-4E-R4E Parent Function Context\n\n';
context += `SERVER_JS=${serverPath}\n`;
context += `TOP_START=${topStart}\n`;
context += `TOP_END=${topEnd}\n\n`;

if (best) {
  context += '## Best enclosing function\n\n';
  context += `- start_line=${best.startLine}\n`;
  context += `- end_line=${best.endLine}\n`;
  context += `- line_count=${best.lineCount}\n`;
  context += `- name=${best.name}\n`;
  context += `- header=${best.header}\n\n`;

  const start = Math.max(1, topStart - 80);
  const end = Math.min(lines.length, topEnd + 100);

  context += `## Context ${start}-${end}\n\n`;
  context += '```text\n';
  for (let n = start; n <= end; n += 1) {
    context += `${String(n).padStart(6, ' ')}\t${lines[n - 1]}\n`;
  }
  context += '```\n\n';

  context += '## Parent function head/tail\n\n';
  context += '```text\n';
  for (let n = best.startLine; n <= Math.min(best.startLine + 80, best.endLine); n += 1) {
    context += `${String(n).padStart(6, ' ')}\t${lines[n - 1]}\n`;
  }
  context += '\n--- tail ---\n';
  for (let n = Math.max(best.endLine - 60, best.startLine); n <= best.endLine; n += 1) {
    context += `${String(n).padStart(6, ' ')}\t${lines[n - 1]}\n`;
  }
  context += '```\n';
} else {
  context += 'NO_PARENT_FUNCTION_FOUND\n';
}

fs.writeFileSync(contextOut, context);

let insertion = 'line\tcategory\tscore\ttext\n';
if (best) {
  const scanStart = Math.max(best.startLine, topStart - 120);
  const scanEnd = Math.min(best.endLine, topEnd + 120);

  for (let n = scanStart; n <= scanEnd; n += 1) {
    const line = lines[n - 1] || '';
    const trimmed = line.trim();
    if (!trimmed) continue;

    let score = 0;
    const categories = [];

    if (variablePattern.test(line)) {
      score += 2;
      categories.push('variable');
    }
    if (sideEffectPattern.test(line)) {
      score += 5;
      categories.push('side_effect');
    }
    if (responsePattern.test(line)) {
      score += 4;
      categories.push('response');
    }
    if (/await\s+/.test(line)) {
      score += 2;
      categories.push('await');
    }
    if (/if\s*\(|for\s*\(|while\s*\(|try\s*\{|catch\s*\(/.test(line)) {
      score += 1;
      categories.push('control');
    }

    if (score > 0) {
      insertion += `${n}\t${categories.join(',')}\t${score}\t${trimmed.replace(/\t/g, ' ')}\n`;
    }
  }
}
fs.writeFileSync(insertionOut, insertion);

const insertionRows = insertion.trim().split('\n').slice(1);
const sideEffectRows = insertionRows.filter((r) => r.includes('side_effect'));
const responseRows = insertionRows.filter((r) => r.includes('response'));
const variableRows = insertionRows.filter((r) => r.includes('variable'));

const firstSideEffect = sideEffectRows[0] || '';
const firstSideEffectLine = firstSideEffect ? Number(firstSideEffect.split('\t')[0]) : null;

let proposedInsertionLine = null;
let proposedReason = '';

if (best && firstSideEffectLine) {
  proposedInsertionLine = Math.max(best.startLine + 1, firstSideEffectLine - 1);
  proposedReason = 'before_first_detected_side_effect_in_parent_function';
} else if (best) {
  proposedInsertionLine = Math.max(best.startLine + 1, topStart);
  proposedReason = 'no_side_effect_detected_using_top_start';
}

const canDesignR5 = Boolean(best && proposedInsertionLine && variableRows.length > 0);

let design = '# AIWorkerOS Guardrail Knowledge DB GKD-4E-R4E R5 Not-Executed Wiring Design Draft\n\n';
design += 'PHASE=GKD-4E-R4E_BRACE_PARENT_FUNCTION_EXTRACTION\n';
design += 'CODE_PATCH=NO\nAPI_POST=NO\nDB_WRITE=NO\n\n';

design += '## Decision\n\n';
design += `R5_DESIGN_STATUS=${canDesignR5 ? 'REVIEW_R5_NOT_EXECUTED_DESIGN_POSSIBLE' : 'STOP_R5_NO_SAFE_DESIGN_YET'}\n\n`;

design += '## Parent function\n\n';
if (best) {
  design += `- parent_start_line=${best.startLine}\n`;
  design += `- parent_end_line=${best.endLine}\n`;
  design += `- parent_name=${best.name}\n`;
  design += `- parent_header=${best.header}\n`;
  design += `- proposed_insertion_line=${proposedInsertionLine}\n`;
  design += `- proposed_reason=${proposedReason}\n`;
} else {
  design += '- NO_PARENT_FUNCTION_FOUND\n';
}

design += '\n## Counts\n\n';
design += `- enclosure_count=${enclosures.length}\n`;
design += `- variable_candidate_count=${variableRows.length}\n`;
design += `- side_effect_candidate_count=${sideEffectRows.length}\n`;
design += `- response_candidate_count=${responseRows.length}\n`;

design += '\n## Required before R5 apply\n\n';
design += '- Confirm exact runtime request variable name from parent context.\n';
design += '- Confirm blocked response shape.\n';
design += '- Confirm proposed insertion line occurs before worker/artifact side effects.\n';
design += '- Create R5 NOT_EXECUTED patch first.\n';
design += '- Do not API POST in R5 apply.\n';

design += '\n## Evidence\n\n';
design += `- PARENT_FUNCTIONS=${parentOut}\n`;
design += `- PARENT_CONTEXT=${contextOut}\n`;
design += `- INSERTION_CANDIDATES=${insertionOut}\n`;

fs.writeFileSync(designOut, design);
