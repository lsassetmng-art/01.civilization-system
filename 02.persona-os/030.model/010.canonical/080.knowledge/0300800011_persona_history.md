# ============================================================
# MODEL
# ============================================================

model_id: 0300800011
model_name: persona_history

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents historical record of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona history represents chronological
record of major events and transitions
experienced by persona.


# ============================================================
# RELATIONS
# ============================================================

persona_history
 -> persona_event
 -> persona_snapshot
