# ============================================================
# PROJECT FLOW STATE TRANSITION IMPLEMENTATION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep implications of state transitions.

implementation_rules:
- state transition guards should be explicit
- invalid transitions should be rejected clearly
- review and confirmation actions should not be conflated
- UI should surface current state and next valid actions
- draft/proposal status should be visually distinct from confirmed/approved status
