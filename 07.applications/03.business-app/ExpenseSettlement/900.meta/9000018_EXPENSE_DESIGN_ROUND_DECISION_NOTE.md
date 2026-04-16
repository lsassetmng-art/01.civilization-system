# ============================================================
# EXPENSE DESIGN ROUND DECISION NOTE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Captures the design-round decision posture for the current ExpenseSettlement set.

decision_posture:
- current round is treated as design-closure-candidate
- broad concept redesign is not recommended
- remaining work should be narrow and parameter-driven
- implementation is still out of scope unless explicitly reopened later

decisions_fixed_in_this_round:
- ExpenseSettlement is BusinessOS-side
- ERP is the accounting source of truth
- multilingual / multi currency / all-device support are first-class
- initial release includes MUST + SHOULD
- approval / finance / ERP / settlement meanings are separated
- audit / history / exception handling are first-class
- candidate/template/formal-object meanings are separated

remaining_decision_scope:
- exact company values
- exact matrices
- exact label catalogs
- exact masking/tolerance values
- exact downstream confirmation catalogs

decision_rule_for_future_chat:
Do not reopen these fixed round decisions unless:
- a contradiction is found
- a higher-level system rule changes
- governance explicitly requests concept revision

round_outcome:
pass-candidate at design-round level

