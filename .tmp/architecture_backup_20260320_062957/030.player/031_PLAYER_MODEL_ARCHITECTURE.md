# ============================================================
# PLAYER MODEL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
The player is a single human entity living inside Civilization.

purpose:
- define the player as an individual actor
- distinguish the player from nation, company, and system actors
- provide the root model for life progression

core_identity:
- player_id
- actor_type = human_player
- nationality
- age
- legal_status
- current_life_stage

core_capabilities:
- study
- work
- decide
- build relationships
- found company
- found nation when eligible

non_capabilities:
- no omniscient world control
- no direct state mutation
- no direct system override
- no micro-control of war execution

life_stages:
- infant
- child
- student
- adult
- senior
- deceased

rules:
- player is always a person, never a state abstraction
- player actions require explicit decision and permission validation
- player progression depends on age, qualification, and resources

integration_points:
- health
- skill
- economy
- governance
- war impact
- relationship
- family

constitution_alignment:
- player is one human entity
- decisions must be explicit
- system cannot replace player authority

final_rule:
Civilization must always treat the player as one human life,
not as a god-controller or nation entity.
