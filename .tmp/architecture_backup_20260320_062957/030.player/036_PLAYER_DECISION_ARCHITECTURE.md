# ============================================================
# PLAYER DECISION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Decision support system for player actions.

The system does not decide actions.
All final decisions are made by the player or explicit actor.

purpose:
- provide information for decision making
- generate possible actions
- evaluate potential outcomes
- ensure decision traceability

principles:
- system must not execute decisions autonomously
- system may suggest but not enforce actions
- all decisions must be explicit and attributable
- no hidden decision logic is allowed

inputs:
- current_state
- environment
- incoming_events
- player_goals
- system_constraints

outputs:
- action_candidates
- impact_estimates
- risk_assessment
- decision_context

decision_types:
- manual_decision
- assisted_decision

forbidden_types:
- autonomous_decision
- silent_auto_execution
- hidden_override

decision_flow:
- context_preparation
- candidate_generation
- impact_analysis
- decision_selection
- decision_event_emission

event_model:
- player_decision_requested
- decision_candidates_generated
- player_decision_selected
- player_action_emitted

rules:
- every decision must produce an explicit event
- no action may bypass the event pipeline
- decisions must be reproducible from logs

constitution_alignment:
- complies with governance rule
- complies with event rule
- complies with data rule
- complies with failure rule

final_rule:
All player actions must originate from an explicit decision
and be executed only through event emission.
