# ============================================================
# MODEL
# ============================================================

model_id: 0300200016
model_name: perception_event

domain: 0020.cognition
system: 03.persona_os

# PURPOSE
Represents sensory event detected by persona.

# DESCRIPTION
Perception event represents observed
environmental signal.

# RELATIONS
perception_event
 -> perception
 -> persona_event
