# ============================================================
# PROJECT FLOW REFERENCE CONFLICT STOP POLICY
# ============================================================

status: canonical
layer: policy
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines stop conditions when reference conflicts remain unresolved.

stop_condition_targets:
- ownership interpretation
- ERP-facing field interpretation
- BusinessOS mediation interpretation
- schema-level field mapping interpretation
- action authority interpretation
- editability interpretation

policy_rules:
- when ownership conflict is unresolved,
  local reinterpretation work should stop
- when ERP-facing field meaning is unresolved,
  field-level implementation planning should stop
- when BusinessOS mediation interpretation is unresolved,
  integration-boundary planning should stop
- when editability meaning is unresolved,
  UI affordance planning should stop
- when action authority meaning is unresolved,
  guard and permission planning should stop

non_stop_examples:
- purely local wording cleanup
- local meta summary cleanup
- explicit conflict logging
