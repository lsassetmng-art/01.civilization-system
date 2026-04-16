# ============================================================
# EXPENSE POST FREEZE CHANGE RULE
# ============================================================

status: canonical
layer: meta
application: ExpenseSettlement
owner: Boss
prepared_by: Zero

purpose:
Defines what kinds of changes are acceptable after the design round
is treated as freeze-candidate.

acceptable_post_freeze_changes:
- exact threshold/value tuning
- label catalog completion
- reason code catalog completion
- masking/tolerance matrix completion
- safe summary clarification
- navigation maintenance
- clearly bounded consolidation

changes_requiring_explicit_reason:
- broad policy restructuring
- changing canonical separation principles
- removing high-value restart/closure assets
- changing ERP boundary meaning
- changing initial release scope stance

change_rule:
After freeze-candidate, every non-trivial change should answer:
- what changed
- why it changed
- whether it is tuning or redesign
- whether restart docs also need refresh

