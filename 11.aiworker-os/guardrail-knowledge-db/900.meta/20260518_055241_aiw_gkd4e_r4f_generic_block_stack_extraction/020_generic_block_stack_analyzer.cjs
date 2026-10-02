'use strict';

const fs = require('node:fs');

const serverPath = process.argv[2];
const topStart = Number(process.argv[3]);
const topEnd = Number(process.argv[4]);
const blockStackOut = process.argv[5];
const blockContextOut = process.argv[6];
const signalLinesOut = process.argv[7];
const insertionDesignOut = process.argv[8];

const text = fs.readFileSync(serverPath, 'utf8');
const lines = text.split(/\r?\n/);

function stripForBrace(line) {
  let out = '';
  let quote = null;
  let escaped = false;

  for (let i = 0; i < line.length; i += 1) {
    const ch = line[i];
    const next = line[i + 1];

    if (!quote && ch === '/' && next === '/') break;

    if (quote) {
      if (escaped) escaped = false;
      else if (ch === '\\') escaped = true;
      else if (ch === quote) quote = null;
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

function classifyHeader(header) {
  const h = header.trim();

  if (/createServer|app\.(post|get|use|all)|router\.(post|get|use|all)/.test(h)) return 'route_or_server';
  if (/async\s+function|function\s+[A-Za-z0-9_$]+\s*\(/.test(h)) return 'function_decl';
  if (/const\s+[A-Za-z0-9_$]+\s*=\s*(async\s*)?\(/.test(h)) return 'const_function';
  if (/async\s+[A-Za-z0-9_$]+\s*\(/.test(h)) return 'method_or_async_block';
  if (/if\s*\(/.test(h)) return 'if_block';
  if (/for\s*\(|while\s*\(/.test(h)) return 'loop_block';
  if (/try\s*\{/.test(h)) return 'try_block';
  if (/catch\s*\(/.test(h)) return 'catch_block';
  if (/switch\s*\(/.test(h)) return 'switch_block';
  if (/else\s*\{/.test(h)) return 'else_block';
  if (/=>\s*\{/.test(h)) return 'arrow_block';
  return 'generic_block';
}

function nearestHeader(startLine) {
  const from = Math.max(1, startLine - 6);
  const parts = [];
  for (let n = from; n <= startLine; n += 1) {
    const t = (lines[n - 1] || '').trim();
    if (t) parts.push(t);
  }
  return parts.join(' ');
}

const stack = [];
const closedBlocks = [];

for (let idx = 0; idx < lines.length; idx += 1) {
  const lineNo = idx + 1;
  const stripped = stripForBrace(lines[idx]);

  for (let c = 0; c < stripped.length; c += 1) {
    const ch = stripped[c];

    if (ch === '{') {
      const header = nearestHeader(lineNo);
      stack.push({
        startLine: lineNo,
        startColumn: c + 1,
        header,
        kind: classifyHeader(header)
      });
    }

    if (ch === '}') {
      const b = stack.pop();
      if (b) {
        closedBlocks.push({
          ...b,
          endLine: lineNo,
          endColumn: c + 1,
          lineCount: lineNo - b.startLine + 1
        });
      }
    }
  }
}

const enclosing = closedBlocks
  .filter((b) => b.startLine <= topStart && b.endLine >= topEnd)
  .sort((a, b) => a.lineCount - b.lineCount || b.startLine - a.startLine);

let blockTsv = 'rank\tstart_line\tend_line\tline_count\tkind\theader\n';
enclosing.forEach((b, i) => {
  blockTsv += `${i + 1}\t${b.startLine}\t${b.endLine}\t${b.lineCount}\t${b.kind}\t${String(b.header).replace(/\t/g, ' ')}\n`;
});
fs.writeFileSync(blockStackOut, blockTsv);

const best = enclosing[0] || null;
const contextStart = Math.max(1, topStart - 120);
const contextEnd = Math.min(lines.length, topEnd + 160);

let signalTsv = 'line\tcategory\tscore\ttext\n';
const patterns = [
  ['runtime_var', 2, /(runtimeRequest|runtime_request|request|queueItem|job|task|payload|body|row|record|source|input|params|request_id|execution_id)/i],
  ['side_effect', 5, /(pool\.query|\.query\(|insert\s+into|update\s+|delete\s+from|writeFile|mkdir|createWriteStream|spawn|exec\(|fetch\(|http\.request|https\.request|artifact|deliverable|zip|summary_text|generated_artifacts|worker|execute|run[A-Z_])/i],
  ['response', 4, /(res\.writeHead|res\.end|sendJson|jsonResponse|writeJson|return\s+\{|ok:|reason:|message:|statusCode|throw\s+new|catch\s*\()/i],
  ['control', 1, /(if\s*\(|for\s*\(|while\s*\(|try\s*\{|catch\s*\(|switch\s*\()/i],
  ['await', 2, /await\s+/]
];

for (let n = contextStart; n <= contextEnd; n += 1) {
  const line = lines[n - 1] || '';
  let score = 0;
  const cats = [];

  for (const [name, s, re] of patterns) {
    if (re.test(line)) {
      score += s;
      cats.push(name);
    }
  }

  if (score > 0) {
    signalTsv += `${n}\t${cats.join(',')}\t${score}\t${line.trim().replace(/\t/g, ' ')}\n`;
  }
}
fs.writeFileSync(signalLinesOut, signalTsv);

let context = '# GKD-4E-R4F Block Context\n\n';
context += `SERVER_JS=${serverPath}\n`;
context += `TOP_START=${topStart}\nTOP_END=${topEnd}\n\n`;

context += '## Enclosing blocks\n\n';
context += '```text\n';
context += blockTsv;
context += '```\n\n';

if (best) {
  context += '## Best block\n\n';
  context += `- start_line=${best.startLine}\n`;
  context += `- end_line=${best.endLine}\n`;
  context += `- line_count=${best.lineCount}\n`;
  context += `- kind=${best.kind}\n`;
  context += `- header=${best.header}\n\n`;
}

context += `## Context ${contextStart}-${contextEnd}\n\n`;
context += '```text\n';
for (let n = contextStart; n <= contextEnd; n += 1) {
  context += `${String(n).padStart(6, ' ')}\t${lines[n - 1]}\n`;
}
context += '```\n\n';

fs.writeFileSync(blockContextOut, context);

const signalRows = signalTsv.trim().split('\n').slice(1);
const sideEffects = signalRows.filter((r) => r.includes('side_effect'));
const responses = signalRows.filter((r) => r.includes('response'));
const runtimeVars = signalRows.filter((r) => r.includes('runtime_var'));

const firstSideEffectLine = sideEffects[0] ? Number(sideEffects[0].split('\t')[0]) : null;
const firstResponseLine = responses[0] ? Number(responses[0].split('\t')[0]) : null;

let status = 'STOP_R5_NO_SAFE_DESIGN_YET';
let proposedLine = '';
let reason = '';

if (best && runtimeVars.length > 0 && firstSideEffectLine) {
  proposedLine = String(Math.max(best.startLine + 1, firstSideEffectLine - 1));
  status = 'REVIEW_R5_NOT_EXECUTED_DESIGN_POSSIBLE';
  reason = 'candidate_before_first_side_effect_in_best_block';
}

let design = '# AIWorkerOS Guardrail Knowledge DB GKD-4E-R4F Insertion Design Not Executed\n\n';
design += 'PHASE=GKD-4E-R4F_GENERIC_BLOCK_STACK_EXTRACTION\n';
design += 'CODE_PATCH=NO\nAPI_POST=NO\nDB_WRITE=NO\n\n';
design += `R5_DESIGN_STATUS=${status}\n\n`;

design += '## Candidate\n\n';
if (best) {
  design += `- best_block_start=${best.startLine}\n`;
  design += `- best_block_end=${best.endLine}\n`;
  design += `- best_block_kind=${best.kind}\n`;
  design += `- best_block_header=${best.header}\n`;
  design += `- proposed_insertion_line=${proposedLine}\n`;
  design += `- proposed_reason=${reason}\n`;
} else {
  design += '- no enclosing block found\n';
}

design += '\n## Counts\n\n';
design += `- enclosing_block_count=${enclosing.length}\n`;
design += `- runtime_var_signal_count=${runtimeVars.length}\n`;
design += `- side_effect_signal_count=${sideEffects.length}\n`;
design += `- response_signal_count=${responses.length}\n`;

design += '\n## Required before code patch\n\n';
design += '- Confirm exact runtime request object name from BLOCK_CONTEXT.\n';
design += '- Confirm blocked response shape; response_signal_count may be zero near target.\n';
design += '- Confirm insertion line is before first side effect.\n';
design += '- Create R5 NOT_EXECUTED patch with exact line and rollback plan.\n';
design += '- Keep API POST for later phase.\n';

design += '\n## Evidence\n\n';
design += `- BLOCK_STACK=${blockStackOut}\n`;
design += `- BLOCK_CONTEXT=${blockContextOut}\n`;
design += `- SIGNAL_LINES=${signalLinesOut}\n`;

fs.writeFileSync(insertionDesignOut, design);
