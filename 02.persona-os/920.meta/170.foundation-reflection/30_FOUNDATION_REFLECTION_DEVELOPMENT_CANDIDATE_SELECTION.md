# ============================================================
# PERSONA OS FOUNDATION REFLECTION DEVELOPMENT CANDIDATE SELECTION
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
owner: Boss
prepared_by: Zero

purpose:
Selects the development-layer candidate buckets
for deeper VisualRuntime-related normalization inside PersonaOS.

# ============================================================
# 0. SELECTION BASIS
# ============================================================

selection_basis:
- 23_FOUNDATION_REFLECTION_DEVELOPMENT_FILE_LEVEL_TARGET_MAP.md
- 25_FOUNDATION_REFLECTION_DEVELOPMENT_INSERT_TEXT.md
- 27_FOUNDATION_REFLECTION_DEVELOPMENT_EXECUTION_PLAN.md
- 28_FOUNDATION_REFLECTION_120_130_CANDIDATE_DISCOVERY_REPORT.md

selection_rule:
Prioritize files that are most likely to encode:
- review guardrails
- acceptance criteria
- anti-pattern lists
- quality gates
- regression-prevention rules
- contributor guidance

# ============================================================
# 1. TIER 1 DEVELOPMENT CANDIDATES
# ============================================================

tier_1_candidate_buckets:
- review checklist docs
- acceptance criteria docs
- quality gate docs

tier_1_selection_reason:
These are the strongest locations for preventing
future reintroduction of execution-to-truth shortcuts.

tier_1_expected_insert_themes:
- VisualRuntime is not a truth owner
- do not collapse execution stages into authority stages
- do not collapse validation into verdict
- do not collapse logs/support into authority records

# ============================================================
# 2. TIER 2 DEVELOPMENT CANDIDATES
# ============================================================

tier_2_candidate_buckets:
- testing guidance docs
- regression-prevention docs
- patch review docs

tier_2_selection_reason:
These files help ensure future changes
do not silently undo the reflection work.

# ============================================================
# 3. TIER 3 DEVELOPMENT CANDIDATES
# ============================================================

tier_3_candidate_buckets:
- contributor guideline docs
- broader development support docs
- adjacent governance-oriented development docs

tier_3_selection_reason:
These files matter for long-term consistency,
but they are usually one step further from the direct failure path.

# ============================================================
# 4. SELECTION QUESTIONS
# ============================================================

for_each_candidate_confirm:
- does this file define review rules
- does this file define acceptance or rejection criteria
- does this file define anti-patterns
- does this file define quality gates
- does this file define regression checks
- does this file define future-edit wording guidance

if_yes:
keep the file in the development normalization set.

# ============================================================
# 5. NEXT OUTPUT
# ============================================================

recommended_next_output:
- development candidate shortlist with actual file names
- development file-level insert map
- development execution record

# ============================================================
# 6. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This selection document narrows development normalization
to the highest-value candidate buckets
for turning the current reflection work
into future-edit guardrails.
