# ============================================================
# MODEL
# ============================================================

model_id: 0300800010
model_name: persona_snapshot

domain: 0080.knowledge
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents state snapshot of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Persona snapshot represents recorded state
of persona at a specific time including
emotion, cognition and behavior.


# ============================================================
# RELATIONS
# ============================================================

persona_snapshot
 -> persona_state
 -> persona_memory
