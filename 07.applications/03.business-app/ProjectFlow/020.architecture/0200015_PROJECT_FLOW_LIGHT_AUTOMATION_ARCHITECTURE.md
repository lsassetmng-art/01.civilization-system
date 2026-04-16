# ============================================================
# PROJECT FLOW LIGHT AUTOMATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines lightweight automation and notification architecture.

architecture_position:
ProjectFlow supports light operational automation,
not a heavy workflow engine.

major_domains:
- trigger detection
- rule evaluation
- notification dispatch request
- action result recording
- operator visibility

supported_trigger_domains:
- overdue task
- delayed milestone
- high risk detected
- critical issue detected
- sync failed
- report draft review pending

supported_action_domains:
- in-app notification
- notification list registration
- manager attention flag
- dashboard highlight
- optional external notification request

boundary_rules:
- automation must remain simple and reviewable
- automation must not mutate core business data invisibly
- automation should prefer notification and visibility actions
- heavy multi-step workflow orchestration is out of scope
