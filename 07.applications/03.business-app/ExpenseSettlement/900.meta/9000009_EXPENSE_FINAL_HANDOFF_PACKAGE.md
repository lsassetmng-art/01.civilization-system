# ============================================================
# EXPENSE FINAL HANDOFF PACKAGE
# ============================================================

status: canonical-handoff
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Provides a final handoff package for continuing ExpenseSettlement design
in another chat or another work session without reopening the whole concept.

# ============================================================
# 1. WHAT IS FIXED
# ============================================================

what_is_fixed:
- BusinessOS-side lightweight but serious positioning
- ERP as accounting source of truth
- multilingual / multi currency / all-device requirement
- initial release includes MUST + SHOULD together
- approval / finance / ERP / settlement separation
- candidate / template / formal object separation
- additive audit/history principle
- policy-driven category/evidence/allocation/settlement structure

# ============================================================
# 2. WHAT SHOULD NOT BE REOPENED LIGHTLY
# ============================================================

what_should_not_be_reopened_lightly:
- broad product concept
- ERP boundary concept
- fixed top-level requirements
- state separation model
- auditability concept
- exception vs standard flow separation
- candidate inbox semantics
- template semantics
- file acceptance vs evidence acceptance distinction

# ============================================================
# 3. WHAT CAN BE CONTINUED NEXT
# ============================================================

what_can_be_continued_next:
- exact company-specific policy matrices
- localized label catalogs
- reason-code catalogs
- export masking policy
- settlement confirmation source catalog
- final summary/closure package refinement
- duplication cleanup / document consolidation

# ============================================================
# 4. RECOMMENDED NEXT-CHAT PROMPTS
# ============================================================

recommended_next_chat_prompts:

  - prompt_mode_A:
      Continue ExpenseSettlement from the current canonical design set.
      Do not reopen broad concept decisions.
      Fix the remaining company-specific matrices and code catalogs.

  - prompt_mode_B:
      Continue ExpenseSettlement from the current canonical design set.
      Do not reopen broad concept decisions.
      Produce a final integrated summary and closure package.

  - prompt_mode_C:
      Continue ExpenseSettlement from the current canonical design set.
      Do not reopen broad concept decisions.
      Review duplication and propose safe consolidation only.

# ============================================================
# 5. MINIMUM RESTART REFERENCE FILES
# ============================================================

minimum_restart_reference_files:
- 000_EXPENSE_SETTLEMENT_OVERVIEW.md
- 00_EXPENSE_SETTLEMENT_INTEGRATED.md
- 00_EXPENSE_SETTLEMENT_FINAL_INTEGRATED_SUMMARY.md
- 9000005_EXPENSE_CURRENT_CLOSURE_CANDIDATE_NOTE.md
- 9000006_EXPENSE_CURRENT_STATUS_SUMMARY.md
- 9000007_EXPENSE_NEXT_CHAT_HANDOFF.md
- 9000009_EXPENSE_FINAL_HANDOFF_PACKAGE.md

# ============================================================
# 6. CURRENT HANDOFF JUDGEMENT
# ============================================================

current_handoff_judgement:
ExpenseSettlement is ready for handoff as a mature design set.
The remaining work is narrow enough that a future chat can resume quickly
without re-laying the foundation.

