# ============================================================
# NATION TYPE AND POWER ACQUISITION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: nation-type-and-power-acquisition
component: nation-type-and-power-acquisition

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical architecture
for nation type,
nation character type,
and power acquisition route differences
inside Civilization.

This architecture defines:

- governance nation types
- civilization character types
- existing nation assignments
- power acquisition route defaults by governance type
- nation-specific override
- UI and political play binding


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

A nation must not be represented
by a single flat label.

Nation identity must be expressed through:

- governance_type
- civilization_character_types
- nation_specific_override_profile

Power acquisition routes
must vary by governance_type,
but the final result
must remain overridable by nation-specific design.


# ============================================================
# 3. STRUCTURAL PRINCIPLE
# ============================================================

governance_type:
Defines how authority is gained,
legitimized,
and transferred.

civilization_character_types:
Define what the nation emphasizes
economically,
socially,
militarily,
or culturally.

nation_specific_override_profile:
Defines how an existing nation
differs from its default type behavior.


# ============================================================
# 4. FINAL RULE
# ============================================================

Nation type and power acquisition
must remain layered,
nation-sensitive,
and playable.
