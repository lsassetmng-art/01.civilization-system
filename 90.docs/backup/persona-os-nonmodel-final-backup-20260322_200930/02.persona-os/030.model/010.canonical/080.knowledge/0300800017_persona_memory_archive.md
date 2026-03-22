# ============================================================
# MODEL
# ============================================================

model_id: 0300800017
model_name: persona_memory

domain: 0080.knowledge
system: 03.persona_os

# PURPOSE
Represents stored experience.

# DESCRIPTION
Persona memory stores events,
facts and interactions experienced
by persona.

# RELATIONS
persona_memory
 -> memory_index
 -> persona_event
