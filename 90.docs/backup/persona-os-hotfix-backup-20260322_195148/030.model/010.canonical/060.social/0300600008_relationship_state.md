# ============================================================
# MODEL
# ============================================================

model_id: 0300600008
model_name: relationship_state

domain: 0060.social
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents current condition of relationship.


# ============================================================
# DESCRIPTION
# ============================================================

Relationship state defines dynamic condition
such as trust, cooperation level or conflict.


# ============================================================
# RELATIONS
# ============================================================

relationship_state
 -> persona_relationship
 -> social_trust
