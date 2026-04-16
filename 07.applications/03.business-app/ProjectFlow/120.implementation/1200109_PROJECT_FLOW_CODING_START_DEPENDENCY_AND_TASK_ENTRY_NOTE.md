# ============================================================
# PROJECT FLOW CODING START DEPENDENCY AND TASK ENTRY NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation guidance for using coding-start dependencies
and entering actual implementation task breakdown safely.

implementation_rules:
- coding-start packages must respect upstream approved outputs
- downstream coding-start planning should consume approved outputs only
- actual implementation task breakdown must start from approved coding-start scope
- blocked boundary-aware scope must remain excluded
- actual task breakdown should be unit-oriented and explicit,
  not one large undifferentiated implementation block
