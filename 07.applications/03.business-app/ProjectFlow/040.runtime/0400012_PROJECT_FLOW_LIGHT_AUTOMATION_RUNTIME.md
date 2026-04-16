# ============================================================
# PROJECT FLOW LIGHT AUTOMATION RUNTIME
# ============================================================

status: canonical
layer: runtime
application: ProjectFlow
owner: Boss
prepared_by: Zero

trigger_runtime_rules:
- triggers are evaluated from current operational state
- repeated identical notifications should be suppressible by rule
- failed sync trigger must remain visible until acknowledged or resolved

action_runtime_rules:
- in-app notification is the default action
- dashboard emphasis is allowed as a lightweight action
- external notification request may be optional by policy
- automation result must be recordable for later review

safety_rules:
- automation must not silently edit project dates
- automation must not silently close issues or risks
- automation must not bypass permission or approval boundaries

review_rules:
- triggered rule,
  action result,
  and execution time should remain reviewable
