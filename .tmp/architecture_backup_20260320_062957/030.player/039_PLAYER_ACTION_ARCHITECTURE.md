# ============================================================
# PLAYER ACTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Player action is the executable outcome of an explicit player decision.

purpose:
- transform selected decisions into valid action events
- prevent direct mutation and bypass execution

action_types:
- study
- apply
- work
- interact
- consume
- found_company
- migrate
- vote
- propose

rules:
- actions must originate from explicit decisions
- actions require validation
- invalid actions are rejected and logged
- action execution emits events only

event_flow:
- player_action_requested
- action_validated
- action_emitted
- downstream_domain_processing

constitution_alignment:
- explicit execution only
- no hidden action dispatch
- fail closed on invalid action

final_rule:
No player action may reach state change without validation and event emission.
