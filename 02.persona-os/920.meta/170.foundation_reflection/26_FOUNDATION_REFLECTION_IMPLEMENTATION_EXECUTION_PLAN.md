# ============================================================
# PERSONA OS FOUNDATION REFLECTION IMPLEMENTATION EXECUTION PLAN
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
owner: Boss
prepared_by: Zero

purpose:
Defines the practical execution plan for absorbing
VisualRuntime-related non-authoritative execution rules
into PersonaOS implementation-layer documents.

# ============================================================
# 0. EXECUTION GOAL
# ============================================================

goal:
Apply implementation-layer reinforcement so that
runtime/session behavior, cache handling, render output handling,
fallback logic, and support traces cannot be misread
as authority truth in implementation-facing documents.

primary_outcome:
Implementation documents must explicitly encode:
- cache is non-authoritative
- render output is non-authoritative
- runtime/session state is disposable
- local validation is not security verdict
- support traces are not authority records
- execution status is not authority status

# ============================================================
# 1. TARGET AREA
# ============================================================

target_area:
- 120.implementation/*

target_focus:
- visual runtime implementation docs
- render / compose implementation docs
- cache / storage implementation docs
- engine / runtime implementation docs
- apply / status / response implementation docs
- diagnostics-related implementation docs

# ============================================================
# 2. WHAT MUST BE ADDED
# ============================================================

must_add:
- local cache is non-authoritative
- render output is non-authoritative unless explicit canonical adoption path exists
- runtime/session state is disposable execution state
- fallback behavior is execution-side only
- local validation is not security verdict
- support/debug traces are not authority records
- execution statuses must remain distinct from authority statuses

must_add_fixed_rule:
VisualRuntime-related implementation behavior may execute,
cache, display, retry, diagnose, and persist execution-side artifacts,
but it must not silently convert those artifacts into authority truth.

# ============================================================
# 3. WHAT MUST BE REMOVED OR TIGHTENED
# ============================================================

must_remove_or_tighten:
- wording that implies cached data equals canonical truth
- wording that implies render output equals canonical result
- wording that implies execution success equals commit success
- wording that implies local validation equals authorization
- wording that implies runtime state equals Persona state truth
- wording that implies support traces equal mutation/security/governance records

# ============================================================
# 4. PATCH METHOD
# ============================================================

patch_method:
1. inspect 120.implementation files matching visual/runtime/render/cache/engine/apply themes
2. locate cache, persistence, output, fallback, and status wording
3. insert implementation authority-separation block
4. insert cache/output non-authoritative block where persistence is described
5. insert execution-status vs authority-status block where statuses are described
6. re-check consistency with architecture/runtime/interface/security/operations rules

# ============================================================
# 5. PREFERRED WORDING SHIFTS
# ============================================================

avoid:
- canonical result
- committed output
- authoritative cache
- verified local state
- secure validation
- persistent truth

prefer_when_execution_only:
- cached execution artifact
- local runtime state
- render output available
- execution-ready
- local validation passed
- support trace recorded
- canonical adoption not implied

# ============================================================
# 6. REVIEW CHECKLIST
# ============================================================

review_checklist:
- does this file describe cache as non-authoritative
- does this file describe output as non-authoritative
- does this file keep runtime/session state disposable
- does this file avoid validation-to-verdict collapse
- does this file avoid support-trace-to-authority collapse
- does this file preserve execution-status vs authority-status separation

# ============================================================
# 7. PATCH COMPLETION CONDITION
# ============================================================

completion_condition:
The implementation pass is complete when:
- target implementation docs no longer overclaim truth ownership
- cache/output/status wording is explicitly bounded
- fallback/local-validation wording remains execution-scoped
- implementation semantics align with earlier reflection phases

# ============================================================
# 8. NEXT STEP AFTER THIS PLAN
# ============================================================

next_step:
Create the development execution plan results and then,
if desired, build file-level candidate lists from actual 120/130 directories.

# ============================================================
# 9. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
This execution plan defines how VisualRuntime-related
non-authoritative rules should be practically absorbed
into PersonaOS implementation documents
without reintroducing truth-owner drift.
