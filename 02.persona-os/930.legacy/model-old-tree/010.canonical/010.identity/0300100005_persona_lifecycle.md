# ============================================================
# MODEL
# ============================================================

model_id: 0300100005
model_name: persona_lifecycle

domain: 0010.identity
system: 03.persona_os


# ============================================================
# PURPOSE
# ============================================================

Defines lifecycle stages of a persona.


# ============================================================
# DESCRIPTION
# ============================================================

Lifecycle represents the long-term state
transitions of a persona.

Examples:

- creation
- activation
- evolution
- retirement


# ============================================================
# RELATIONS
# ============================================================

persona_lifecycle
 -> persona
 -> persona_state
