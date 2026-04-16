# ============================================================
# EXPENSE SLICE01 REVIEW GATE
# ============================================================

status: canonical
layer: development
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines the review gate that slice_01 should pass before being accepted.

review_gate_questions:
- does the implemented flow stay inside slice_01 scope
- are report/item/receipt relations preserved
- are submit / approval / finance / ERP meanings still separated
- are authority boundaries preserved
- are major actions audit-visible
- are blocked states explainable
- does implementation still match initial route / reason-code / label baselines
- does implementation avoid pretending later-slice features already exist

pass_condition:
All review gate questions should be answerable with yes
for slice_01 to be accepted.

fail_condition_examples:
- one merged status replaces multiple canonical state meanings
- approver can perform finance actions without explicit role
- ERP confirmed is treated as settled automatically
- attachment is treated as accepted evidence automatically
- audit trail is missing for major actions

