# ============================================================
# MODEL
# ============================================================

model_id: 0300200023
model_name: persona_decision

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents decision made by persona.

# DESCRIPTION
Persona decision represents
selected action from alternatives.

# RELATIONS
persona_decision
 -> decision_log
 -> behavior
