# ============================================================
# EXPENSE PRE IMPLEMENTATION OPEN ITEMS LOCK
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Locks which open items are allowed to remain unresolved when implementation starts,
and which must be fixed first.

# ============================================================
# 1. MUST BE FIXED BEFORE IMPLEMENTATION
# ============================================================

must_be_fixed_before_implementation:
- exact department/project route matrix for initial company scope
- exact finance reason code catalog for initial company scope
- exact category rows for initial company scope
- exact evidence rows for initial company scope
- exact localized label baseline for initial supported languages
- exact settlement confirmation source rule for initial company scope

# ============================================================
# 2. MAY BE FIXED DURING IMPLEMENTATION UNDER CONTROL
# ============================================================

may_be_fixed_during_implementation_under_control:
- exact reminder cadence fine-tuning
- exact export masking fine-tuning
- exact file size/count numeric tuning
- exact duplicate sensitivity tuning
- exact template visibility narrowing refinement

condition:
These may vary only if they do not reopen architecture or policy structure.

# ============================================================
# 3. MUST NOT BE REOPENED DURING IMPLEMENTATION
# ============================================================

must_not_be_reopened_during_implementation:
- BusinessOS-side lightweight but serious positioning
- ERP source-of-truth boundary
- multilingual / multi currency / all-device requirement
- MUST + SHOULD initial release stance
- approval / finance / ERP / settlement separation
- candidate / template / formal-object separation
- additive audit/history principle
- correction vs deletion distinction
- file acceptance vs evidence acceptance distinction

# ============================================================
# 4. CONCLUSION
# ============================================================

conclusion:
Implementation may begin only after the must-fix items are concretely locked
for the initial company scope.

