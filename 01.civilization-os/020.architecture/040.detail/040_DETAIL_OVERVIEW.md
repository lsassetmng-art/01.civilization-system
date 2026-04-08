# ============================================================
# 040 DETAIL OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: detail
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines the architecture overview of the detail domain.

summary:
The detail domain standardizes structured fine-grained truth
for entities, locations, activities, relationships, statuses,
and timelines without replacing their canonical core models.

design_intent:
CivilizationOS requires a stable place for detailed truth.
This domain exists to prevent detailed semantics from being
scattered across UI-only files, runtime-only logic, or ad hoc notes.

scope:
- fine-grained entity detail
- fine-grained location detail
- fine-grained activity detail
- fine-grained relationship detail
- fine-grained status detail
- fine-grained timeline detail

non_scope:
- replacement of core models
- session runtime state ownership
- flow order authority
- direct UI implementation ownership
- arbitrary note storage

architecture_rules:
- Detail must refine, not replace.
- Detail must bind to a target reference.
- Detail must declare visibility and lifecycle.
- Detail must remain consumable by runtime and interface layers.
- Detail must not become a free-form documentation dump.

required_behavior:
- Every detail record must have clear ownership scope.
- Every detail record must support validation.
- Every detail record must support lifecycle transition.
- Every detail record must be explainable through examples.

dependency:
depends_on:
- 030.model
- 002.world
- 004.mode
- 005.story
- 006.player
- 012.integration
- 018.meta

consumed_by:
- 040.runtime
- 050.flow
- 019.interface

completion_signal:
The detail domain is complete when each major subdomain
defines state model, validation rules, transition rules,
dependency rules, and example scenarios.
