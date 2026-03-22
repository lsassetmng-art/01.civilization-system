# ============================================================
# MODEL
# ============================================================

model_id: 0300200011
model_name: decision_policy

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Defines decision rules used by persona.

# DESCRIPTION
Decision policy defines how decisions are evaluated
based on goals, values and context.

# RELATIONS
decision_policy
 -> decision
 -> persona_value
