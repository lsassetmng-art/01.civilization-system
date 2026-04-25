# ============================================================
# K1 K6 APPROVAL DECISION RESTART MATRIX
# ============================================================

status: canonical-matrix
layer: meta
domain: ddl-reconnect-and-review-handoff
system: StreamingOS
prepared_by: Zero
owner: Boss

matrix:

K1:
- approval_restart_state: allowed
- condition:
  - foundation locked reading preserved

K2:
- approval_restart_state: allowed
- condition:
  - asset/publish display-ref reading preserved

K3:
- approval_restart_state: allowed
- condition:
  - performer assignment truth only

K4:
- approval_restart_state: allowed
- condition:
  - moderation does not imply persona internal truth ownership

K5:
- approval_restart_state: allowed
- condition:
  - company/affiliation remains formal-ref reading only

K6:
- approval_restart_state: allowed
- condition:
  - monetization/reaction remains Streaming-local operational truth only

global_rule:
Approval decisions may restart normally after reconnect gates are satisfied.
