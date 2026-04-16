# ============================================================
# GAME PERSONA CHARACTER BINDING MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: persona-character-binding
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
persona-character binding is the canonical contract linking a game character
to Persona-based appearance, interaction, relation, memory, and continuity.

responsibilities:
- character to Persona linkage
- binding depth
- binding scope
- continuity class
- canonical linkage level
- reflection eligibility

binding_depth:
- display-only
- interactive
- relation-capable
- persistent
- canonical-linked

canonical_linkage_level:
- none-bound
- template-bound
- soft-bound
- hard-bound

core_principles:
- game character and Persona are separate
- title-local character truth must not overwrite Persona canonical truth
- stronger linkage requires stronger audit and reflection control
