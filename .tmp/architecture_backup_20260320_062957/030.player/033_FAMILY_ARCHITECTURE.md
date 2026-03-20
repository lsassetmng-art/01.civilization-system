# ============================================================
# FAMILY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Family defines kinship, parent-child structure, marriage-based units,
and household influence on life progression.

purpose:
- represent upbringing conditions
- provide marriage, child birth, and parenting structures
- connect generational life systems

family_relations:
- parent
- child
- spouse
- sibling
- guardian

household_functions:
- living support
- allowance support
- early-life decision control
- educational direction
- emotional environment

rules:
- early-life decision scope may be parent-controlled
- adulthood restores direct player authority
- family influence modifies but does not directly overwrite player state

event_flow:
- family_relation_created
- marriage_established
- child_birth_event
- household_structure_changed
- inheritance_event

integration_points:
- allowance
- education
- relationship
- birth rate
- emotional state

constitution_alignment:
- no hidden state overwrite
- household effects must be event-driven
- family influence is explicit and auditable

final_rule:
Family is a structured influence system, not an implicit controller.
