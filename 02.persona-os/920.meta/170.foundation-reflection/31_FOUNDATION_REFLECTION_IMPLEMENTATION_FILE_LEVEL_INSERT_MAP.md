# ============================================================
# PERSONA OS FOUNDATION REFLECTION IMPLEMENTATION FILE-LEVEL INSERT MAP
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
owner: Boss
prepared_by: Zero

purpose:
Defines the file-level insertion strategy for implementation-layer
normalization of VisualRuntime-related non-authoritative rules
inside PersonaOS.

# ============================================================
# 0. BASIS
# ============================================================

basis:
- 22_FOUNDATION_REFLECTION_IMPLEMENTATION_FILE_LEVEL_TARGET_MAP.md
- 24_FOUNDATION_REFLECTION_IMPLEMENTATION_INSERT_TEXT.md
- 26_FOUNDATION_REFLECTION_IMPLEMENTATION_EXECUTION_PLAN.md
- 29_FOUNDATION_REFLECTION_IMPLEMENTATION_CANDIDATE_SELECTION.md

goal:
Translate implementation normalization from candidate buckets
into practical insertion guidance.

# ============================================================
# 1. FILE-LEVEL INSERTION QUESTIONS
# ============================================================

for_each_implementation_file:
- does this file define local cache behavior
- does this file define persistence behavior
- does this file define runtime/session handling
- does this file define output/result handling
- does this file define fallback/retry behavior
- does this file define local validation wording
- does this file define support/diagnostic trace handling

if_yes:
insert implementation authority-separation reinforcement.

# ============================================================
# 2. INSERTION THEMES
# ============================================================

theme_a:
cache and persistence must remain non-authoritative

theme_b:
execution status must remain separate from authority status

theme_c:
fallback and local validation are execution-side only

theme_d:
support traces are not authority records

theme_e:
VisualRuntime implementation behavior may execute/cache/display,
but must not silently become truth owner semantics

# ============================================================
# 3. RECOMMENDED INSERTION ZONES
# ============================================================

preferred_zones:
- after purpose / scope block
- before implementation rules section
- before persistence / cache section
- before execution status section
- before current canonical status block

selection_rule:
Choose the earliest section where the file first introduces
execution behavior, cache behavior, output behavior,
or validation behavior.

# ============================================================
# 4. PRIORITY ORDER
# ============================================================

priority_order:
1. files that describe render/runtime implementation behavior
2. files that describe cache/storage/persistence behavior
3. files that describe output/result handling
4. files that describe fallback/retry/diagnostics behavior
5. files that describe apply/status/response implementation behavior

# ============================================================
# 5. EXPECTED LOCAL INSERT HEADINGS
# ============================================================

recommended_headings:
- VISUALRUNTIME IMPLEMENTATION AUTHORITY SEPARATION
- CACHE AND PERSISTENCE MUST REMAIN NON-AUTHORITATIVE
- EXECUTION STATUS VS AUTHORITY STATUS
- FALLBACK AND LOCAL VALIDATION ARE EXECUTION-SIDE ONLY
- SUPPORT TRACES ARE NOT AUTHORITY RECORDS
- FIXED IMPLEMENTATION STATEMENT

# ============================================================
# 6. COMPLETION CHECK
# ============================================================

completion_check:
- file now states cache/output are non-authoritative
- file now separates execution status from authority status
- file now separates local validation from security verdict
- file now separates support trace from authority record
- no new truth-owner drift is introduced

# ============================================================
# 7. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This insert map defines how implementation-layer normalization
should be applied at file level so that VisualRuntime-related
execution semantics remain explicitly non-authoritative.
