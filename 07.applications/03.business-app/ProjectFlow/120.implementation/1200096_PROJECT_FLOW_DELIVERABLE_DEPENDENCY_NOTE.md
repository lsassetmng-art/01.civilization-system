# ============================================================
# PROJECT FLOW DELIVERABLE DEPENDENCY NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for using deliverable dependencies in planning.

implementation_rules:
- downstream planning should consume reviewed upstream deliverables
- dependency chains should remain explicit in package planning
- partial approval of an upstream deliverable should narrow downstream scope explicitly
- hold status should block dependent deliverables until resolved
