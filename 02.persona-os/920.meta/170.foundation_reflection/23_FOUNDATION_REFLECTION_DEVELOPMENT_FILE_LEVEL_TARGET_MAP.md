# ============================================================
# PERSONA OS FOUNDATION REFLECTION DEVELOPMENT FILE-LEVEL TARGET MAP
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
owner: Boss
prepared_by: Zero

purpose:
Maps VisualRuntime-related foundation reflection rules
to likely development-layer absorption targets inside PersonaOS.

# ============================================================
# 0. TARGETING PRINCIPLE
# ============================================================

selection_rule:
Choose development files that are most likely to encode:
- review checklists
- implementation acceptance criteria
- anti-pattern lists
- patch review rules
- future edit rules
- release/readiness quality gates

must_preserve:
- no truth-owner drift in future edits
- no stage-collapse in future edits
- no security overclaim from local validation
- no authority overclaim from logs/support traces
- no promotion of render artifacts into truth

# ============================================================
# 1. PRIMARY DEVELOPMENT TARGET AREAS
# ============================================================

primary_target_areas:
- 130.development/*checklist*
- 130.development/*review*
- 130.development/*acceptance*
- 130.development/*quality*
- 130.development/*gate*
- 130.development/*guideline*
- 130.development/*policy*
- 130.development/*testing*

why_primary:
These files are the natural place to stop future contributors
from undoing the reflection work through casual edits.

# ============================================================
# 2. DEVELOPMENT FILE-LEVEL QUESTIONS
# ============================================================

for_each_candidate_file_check:
- does this file define review or acceptance rules
- does this file define anti-patterns
- does this file define release or merge quality gates
- does this file define wording expectations
- does this file define regression-prevention checks
- does this file define implementation rejection criteria

if_yes:
This file is a likely development normalization target.

# ============================================================
# 3. REQUIRED INSERTION THEMES
# ============================================================

development_insert_themes:
- do not let VisualRuntime become truth owner
- do not collapse accepted/resolved/executed/displayed into committed/authoritative
- do not treat renderer-valid as security-cleared
- do not treat display-visible as governance-cleared
- do not treat diagnostics/logs as authority records
- do not treat healthcheck/readiness as canonical pass
- reject cache/output/status shortcuts that overclaim truth

# ============================================================
# 4. PRIORITY BUCKETS
# ============================================================

tier_1_expected_candidates:
- review checklist docs
- acceptance criteria docs
- quality gate docs

tier_2_expected_candidates:
- testing guidance docs
- patch review docs
- regression-prevention docs

tier_3_expected_candidates:
- broader contributor guidelines
- adjacent development support docs

# ============================================================
# 5. OUTPUT OF NEXT STEP
# ============================================================

next_output_expected:
- development insert text
- development execution plan
- development execution record

# ============================================================
# 6. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This target map defines how to find the real development-layer
absorption points for VisualRuntime non-authoritative rules.
It should be used to turn the current reflection work
into future-edit guardrails.
