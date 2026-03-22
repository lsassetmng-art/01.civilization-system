# ============================================================
# MODEL
# ============================================================

model_id: 0300500001
model_name: communication

domain: 0050.communication
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents communication capability of persona.


# ============================================================
# DESCRIPTION
# ============================================================

Communication defines how personas exchange
information and interact through messages
and conversations.


# ============================================================
# RELATIONS
# ============================================================

communication
 -> message
 -> conversation
 -> social_relation
