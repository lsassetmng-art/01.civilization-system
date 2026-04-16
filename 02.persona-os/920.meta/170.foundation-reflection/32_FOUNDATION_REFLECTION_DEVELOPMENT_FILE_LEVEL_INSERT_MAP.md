# ============================================================
# PERSONA OS FOUNDATION REFLECTION DEVELOPMENT FILE-LEVEL INSERT MAP
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
owner: Boss
prepared_by: Zero

purpose:
Defines the file-level insertion strategy for development-layer
normalization of VisualRuntime-related non-authoritative rules
inside PersonaOS.

# ============================================================
# 0. BASIS
# ============================================================

basis:
- 23_FOUNDATION_REFLECTION_DEVELOPMENT_FILE_LEVEL_TARGET_MAP.md
- 25_FOUNDATION_REFLECTION_DEVELOPMENT_INSERT_TEXT.md
- 27_FOUNDATION_REFLECTION_DEVELOPMENT_EXECUTION_PLAN.md
- 30_FOUNDATION_REFLECTION_DEVELOPMENT_CANDIDATE_SELECTION.md

goal:
Translate development normalization from candidate buckets
into practical insertion guidance.

# ============================================================
# 1. FILE-LEVEL INSERTION QUESTIONS
# ============================================================

for_each_development_file:
- does this file define review checklist items
- does this file define acceptance / rejection criteria
- does this file define anti-patterns
- does this file define quality gates
- does this file define regression-prevention rules
- does this file define contributor guidance for future edits

if_yes:
insert development guardrail reinforcement.

# ============================================================
# 2. INSERTION THEMES
# ============================================================

theme_a:
VisualRuntime is not a truth owner

theme_b:
execution stages must not collapse into authority stages

theme_c:
validation must not collapse into verdict

theme_d:
diagnostics/logs/support traces must not collapse into authority records

theme_e:
future edits must reject execution-to-truth shortcuts

theme_f:
review and acceptance criteria must preserve reflection boundaries

# ============================================================
# 3. RECOMMENDED INSERTION ZONES
# ============================================================

preferred_zones:
- after purpose / scope block
- before checklist section
- before acceptance criteria section
- before anti-pattern section
- before quality gate section
- before current canonical status block

selection_rule:
Choose the earliest section where the file first defines
review rules, acceptance rules, or future-edit expectations.

# ============================================================
# 4. PRIORITY ORDER
# ============================================================

priority_order:
1. review checklist files
2. acceptance criteria files
3. quality gate files
4. testing / regression-prevention files
5. contributor guideline files

# ============================================================
# 5. EXPECTED LOCAL INSERT HEADINGS
# ============================================================

recommended_headings:
- VISUALRUNTIME DEVELOPMENT GUARDRAIL
- REVIEW CHECKLIST FOR EXECUTION VS AUTHORITY
- VISUALRUNTIME ANTI-PATTERNS
- PATCH ACCEPTANCE CRITERIA
- REGRESSION PREVENTION
- FIXED DEVELOPMENT STATEMENT

# ============================================================
# 6. COMPLETION CHECK
# ============================================================

completion_check:
- file explicitly rejects truth-owner drift
- file explicitly rejects stage collapse
- file explicitly rejects validation-to-verdict shortcuts
- file explicitly rejects support-log-to-authority shortcuts
- file gives future maintainers clear rejection criteria

# ============================================================
# 7. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This insert map defines how development-layer normalization
should be applied at file level so that future PersonaOS edits
cannot casually undo the VisualRuntime reflection work.
