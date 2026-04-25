# ============================================================
# PERSONA STATE ARCHITECTURE OVERVIEW
# ============================================================

status: canonical
layer: architecture
domain: state
system: persona-os
owner: Boss
prepared_by: Zero

purpose:
Defines the structural overview of persona state and lifecycle state.

summary:
Persona state architecture separates
lifecycle progression,
operational availability,
release relation,
and restriction relation
so that persona status can be mutated explicitly
without confusing identity, memory, or visual state.

state_groups:
lifecycle state
availability state
release state
restriction state

lifecycle_state_examples:
draft
validated
approved
released
active
retired
archived

availability_state_examples:
available
paused
suspended

release_relation_examples:
not_released
released
withdrawn

restriction_relation_examples:
unlocked
restricted
locked

boundary_rules:
state is not identity truth
state is not memory truth
state is not visual state
event and history may contribute to state tracking
but do not replace the current canonical state record
