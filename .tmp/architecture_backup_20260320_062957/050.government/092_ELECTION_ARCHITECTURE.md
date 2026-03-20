# ============================================================
# ELECTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Election is the leadership selection mechanism for eligible nation types.

eligible_nation_types:
- democracy
- limited variants in selected systems

candidates:
- player_persona
- ai_human

ineligible_candidates:
- ai_robot
- restricted public officers when disallowed by law

inputs:
- loyalty
- policy_satisfaction
- economy
- ideology_alignment
- candidate_reputation

outputs:
- leader_selection
- power_transfer
- legitimacy_update

core_entities:
- election_id
- nation_id
- office_id
- candidate_id
- vote_result
- winner_id
