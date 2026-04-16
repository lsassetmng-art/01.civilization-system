# ============================================================
# PROJECT FLOW IMPLEMENTATION START WORK PACKAGE NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines implementation-prep guidance
for the initial implementation-start work packages.

implementation_rules:
- begin with planning packages that consume already-fixed design inputs
- keep boundary-aware packages conditional on DB and mediation clarity
- produce explicit package outputs:
  - module map
  - state/event package map
  - repository/gateway map
  - customer-material slice map
  - local cache and sync slice map
- do not treat planning package completion as coding start automatically
