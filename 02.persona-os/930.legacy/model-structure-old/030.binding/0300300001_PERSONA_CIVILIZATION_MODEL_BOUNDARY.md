# ============================================================
# PERSONA ↔ CIVILIZATION MODEL BOUNDARY
# ============================================================

status: canonical
scope: cross-system
layer: model-validation

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define clear conceptual boundaries
between PersonaOS models and
CivilizationOS models.

This document prevents:

- conceptual duplication
- model conflicts
- responsibility overlap


# ============================================================
# CORE PRINCIPLE
# ============================================================

CivilizationOS defines macro structures.

PersonaOS defines micro agents.

Macro structures must never be defined
inside PersonaOS.

Micro agents must never be defined
inside CivilizationOS.


# ============================================================
# CIVILIZATIONOS DOMAIN
# ============================================================

CivilizationOS models represent
civilization-scale structures.

Examples:

world
civilization
nation
territory
population
economy
market
resource
technology
law
institution
organization
governance
culture


# ============================================================
# PERSONAOS DOMAIN
# ============================================================

PersonaOS models represent
individual-level agents.

Examples:

persona
persona_identity
persona_state
persona_memory
persona_goal
persona_decision
persona_relationship
persona_event


# ============================================================
# ALLOWED REFERENCES
# ============================================================

PersonaOS may reference CivilizationOS
through participation concepts.

Examples:

persona_role
persona_affiliation
persona_membership
persona_position
persona_participation


Example relationships:

persona
 └ participates_in → institution

persona
 └ member_of → organization

persona
 └ citizen_of → nation


# ============================================================
# FORBIDDEN MODELS IN PERSONAOS
# ============================================================

The following concepts must never
be defined as models in PersonaOS.

world
civilization
nation
territory
population
law
market
economy
governance
institution
organization


These belong exclusively
to CivilizationOS.


# ============================================================
# PERSONA-SIDE REPRESENTATIONS
# ============================================================

If PersonaOS needs to reference
Civilization structures,
persona-side models must be used.

Examples:

persona_membership
persona_role
persona_position
persona_affiliation
persona_activity


Example structure:

persona_membership
 ├ persona
 └ organization_id


persona_role
 ├ persona
 └ institution_role


# ============================================================
# DESIGN RULE
# ============================================================

CivilizationOS defines systems.

PersonaOS defines actors.


Example conceptual flow:

CivilizationOS

institution
organization
economy
law


PersonaOS

persona
persona_goal
persona_decision
persona_action


Interaction:

persona
 → participates in → organization

persona
 → acts under → law

persona
 → operates within → economy


# ============================================================
# ARCHITECTURE PRINCIPLE
# ============================================================

CivilizationOS
defines the world.

PersonaOS
defines the agents.


Agents act inside the world,
but do not define it.


# ============================================================
# STATUS
# ============================================================

This document defines
the canonical boundary
between PersonaOS and CivilizationOS.

