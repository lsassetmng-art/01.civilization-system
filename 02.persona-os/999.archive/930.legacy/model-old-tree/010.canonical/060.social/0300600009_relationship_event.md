# ============================================================
# MODEL
# ============================================================

model_id: 0300600009
model_name: relationship_event

domain: 0060.social
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Represents event affecting relationship.


# ============================================================
# DESCRIPTION
# ============================================================

Relationship event represents interaction
or incident that modifies relationship state.


# ============================================================
# RELATIONS
# ============================================================

relationship_event
 -> persona_relationship
 -> persona_event
