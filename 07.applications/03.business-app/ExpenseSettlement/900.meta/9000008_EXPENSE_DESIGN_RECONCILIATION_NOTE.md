# ============================================================
# EXPENSE DESIGN RECONCILIATION NOTE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Records reconciliation intent for the current design set so that
future cleanup/consolidation work does not accidentally reopen fixed meaning.

reconciliation_goal:
- preserve canonical meaning
- reduce accidental duplication
- keep overview/index/integrated/meta layers aligned
- avoid deleting historically useful design detail too early

current_reconciliation_view:
The current ExpenseSettlement design set is structurally rich and coherent.
There may be overlap across:
- overview vs integrated summary
- policy detail docs vs gap-check docs
- current status summary vs closure candidate note vs next-chat handoff
but the overlap is currently useful for restart safety.

documents_that_should_be_treated_as_summary_layer:
- 000_EXPENSE_SETTLEMENT_OVERVIEW.md
- 00_EXPENSE_SETTLEMENT_INTEGRATED.md
- 9000005_EXPENSE_CURRENT_CLOSURE_CANDIDATE_NOTE.md
- 9000006_EXPENSE_CURRENT_STATUS_SUMMARY.md
- 9000007_EXPENSE_NEXT_CHAT_HANDOFF.md

documents_that_should_be_treated_as_detail_layer:
- policy detail documents
- runtime/state transition documents
- authority/access documents
- interface/screen map documents
- integration exact payload documents
- model physical-data documents

reconciliation_rules:
- do not collapse approval / finance / ERP / settlement distinctions
- do not collapse candidate / template / formal-object distinctions
- do not remove audit/history/exception documents merely because summary exists
- prefer additive summary creation over destructive deletion
- if a later integrated mega-summary is created, detail docs still remain canonical references

safe_cleanup_later_candidates:
- duplicate summary wording across closure/status/handoff docs
- repetitive fixed-requirement recitals in some meta docs
- repeated “no implementation yet” phrasing across meta docs

not_safe_to_cleanup_by_deletion:
- policy separation meaning
- state transition meaning
- authority boundary meaning
- audit/evidence/exception meaning
- route/finance/category/evidence/template/candidate/allocation/settlement policies

conclusion:
Future reconciliation should be summary-first and deletion-last.
The current redundancy is mostly protective redundancy, not harmful inconsistency.

