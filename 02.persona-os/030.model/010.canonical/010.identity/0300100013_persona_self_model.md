# ============================================================
# MODEL
# ============================================================

model_id: 0300100014
model_name: persona_self_model

domain: 0010.identity
system: 03.persona_os

# PURPOSE
Represents internal self representation.

# DESCRIPTION
Self model represents how a persona
perceives its own identity, abilities
and current state.

# RELATIONS
persona_self_model
 -> persona_identity
 -> persona_state
 -> persona_memory
