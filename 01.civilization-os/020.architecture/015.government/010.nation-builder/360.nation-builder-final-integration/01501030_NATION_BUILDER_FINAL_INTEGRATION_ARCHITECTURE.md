# ============================================================
# NATION BUILDER FINAL INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: nation-builder-final-integration
component: nation-builder-final-integration

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical final integration architecture
for Nation Builder
as the primary civilization-state design system.

This architecture integrates:

- nation identity definition
- geography and settlement definition
- economy and society definition
- culture and daily-life definition
- power structure definition
- legislature, executive, appointment, and faction builders
- lock, validation, preview, and persistence
- integrated master and implementation bridge connection


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Nation Builder must act as
the top-level composition surface,
not as a place that redefines
the meaning of lower builders.

Nation Builder must:
- compose
- route
- lock
- validate
- preview
- persist

Lower builders remain the source of detail.
Nation Builder remains the orchestration surface.


# ============================================================
# 3. LAYER MODEL
# ============================================================

Nation Builder must explicitly separate:

- Foundation Layer
- Structure Locked Layer
- Scope Editable Layer
- Regime Change Layer
- Preview and Summary Layer

Foundation Layer:
- nation identity
- geography
- capital
- population base
- economy base
- culture base

Structure Locked Layer:
- constitutional structure
- legislature structure
- executive structure
- appointment structure
- faction category base

Scope Editable Layer:
- power scope
- practical influence
- ministry scope
- local discretion
- operating intensities

Regime Change Layer:
- constitutional reform
- revolution
- collapse
- reconstruction
- restoration

Preview and Summary Layer:
- quick reference
- matrix position
- signature UI tone
- implementation bridge visibility


# ============================================================
# 4. REQUIRED SUBBUILDERS
# ============================================================

required_subbuilders:
- geography_builder
- population_builder
- economy_builder
- culture_builder
- zoning_builder
- military_builder
- power_structure_builder
- legislature_builder
- executive_builder
- appointment_builder
- faction_builder
- validation_and_lock_engine
- preview_and_summary_engine
- persistence_engine


# ============================================================
# 5. FINAL RULE
# ============================================================

Nation Builder must let a user
construct a nation as one coherent object
without collapsing the distinction between
constitution, operation, and transition.
