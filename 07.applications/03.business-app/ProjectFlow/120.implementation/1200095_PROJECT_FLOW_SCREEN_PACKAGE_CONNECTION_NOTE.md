# ============================================================
# PROJECT FLOW SCREEN PACKAGE CONNECTION NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-start guidance
for connecting screen orchestration work
to planning package execution.

implementation_rules:
- screen orchestration should feed package deliverables explicitly
- package deliverables should identify which screens they unblock
- screen-level local structure should be clarified
  before deeper package breakdown
- boundary-aware screens should keep blocked dependency notes visible
