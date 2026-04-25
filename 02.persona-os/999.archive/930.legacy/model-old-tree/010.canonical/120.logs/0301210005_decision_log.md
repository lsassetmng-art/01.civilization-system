# ============================================================
# MODEL
# ============================================================

model_id: 0301200004
model_name: decision_log

domain: 0120.logs
system: 03.persona_os

# PURPOSE
Represents decision history.

# DESCRIPTION
Decision log records decision
process and selected options.

# RELATIONS
decision_log
 -> decision
 -> decision_evaluation
