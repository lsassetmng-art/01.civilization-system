# ============================================================
# EXPENSE REOPEN AND CONTINUE BOUNDARY NOTE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Clarifies what may be continued narrowly and what should not be reopened casually
in future ExpenseSettlement work.

continue_without_reopening:
- exact company-specific threshold values
- exact department/project route matrices
- exact localized label catalogs
- exact finance reason-code catalogs
- exact evidence mismatch tolerance values
- exact export masking rules
- exact settlement confirmation source catalog
- safe document consolidation

do_not_reopen_casually:
- BusinessOS-side lightweight but serious positioning
- ERP as source of truth
- multilingual / multi currency / all-device requirement
- MUST + SHOULD included initial release stance
- approval / finance / ERP / settlement separation
- candidate / template / formal-object separation
- additive audit/history principle
- exception vs standard flow distinction

reopen_only_if:
- contradiction is found
- higher-level Civilization / BusinessOS / ERP rule changes
- governance explicitly requests conceptual redesign

boundary_sentence:
Future work should continue narrowly by default,
and reopen broadly only with explicit reason.

