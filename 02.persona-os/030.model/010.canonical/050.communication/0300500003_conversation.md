# ============================================================
# MODEL
# ============================================================

model_id: 0300500003
model_name: conversation

domain: 0050.communication
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents multi-message dialogue interaction.


# ============================================================
# DESCRIPTION
# ============================================================

Conversation represents structured dialogue
between two or more personas.


# ============================================================
# RELATIONS
# ============================================================

conversation
 -> message
 -> communication
 -> social_relation
