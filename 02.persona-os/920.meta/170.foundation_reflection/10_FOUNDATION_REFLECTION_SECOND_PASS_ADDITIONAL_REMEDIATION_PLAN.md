# ============================================================
# PERSONA OS FOUNDATION REFLECTION SECOND PASS ADDITIONAL REMEDIATION PLAN
# ============================================================

status: canonical-meta
system: persona-os
layer: meta
domain: foundation-reflection
owner: Boss
prepared_by: Zero

purpose:
Captures additional remediation actions for files that still fail
the structural verification of second-pass VisualRuntime patches.

# ============================================================
# 0. CURRENT COUNTS
# ============================================================

total_files_checked: 13
pass_count: 0
needs_fix_count: 13

# ============================================================
# 1. NEEDS-FIX FILES
# ============================================================

# ============================================================
# 2. REMEDIATION RULES
# ============================================================

For each NEEDS_FIX file:
- if heading missing -> reinsert the intended block once
- if heading duplicated -> remove duplicate and keep one
- if CURRENT CANONICAL STATUS missing -> restore section marker
- inspect nearby wording for broken section boundaries
- rerun verification report and summary after fix

# ============================================================
# 3. NEXT STEP
# ============================================================

recommended_next_step:
Create or run a targeted remediation block for the NEEDS_FIX files only,
then rerun:
- 08_FOUNDATION_REFLECTION_SECOND_PASS_PATCH_VERIFICATION_REPORT.md generation
- 09_FOUNDATION_REFLECTION_SECOND_PASS_PATCH_VERIFICATION_SUMMARY.md generation

# ============================================================
# 4. FINAL FIXED STATEMENT
# ============================================================

final_fixed_statement:
Second-pass structural closure remains blocked
until all NEEDS_FIX files are corrected and pass verification.
