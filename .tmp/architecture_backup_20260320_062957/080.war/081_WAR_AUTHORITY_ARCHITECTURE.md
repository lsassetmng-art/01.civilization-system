# ============================================================
# WAR AUTHORITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
War authority defines who may initiate, approve, or end war actions.

authorized_actors:
- nation_leader
- authorized_government_body
- emergency_authority_if_defined_by_law

unauthorized_actors:
- ordinary_player_without_authority
- company
- ai_agent_without_explicit_authority

rules:
- no war action without explicit authority
- emergency authority must be law-bound
- unauthorized war initiation must fail closed

event_flow:
- war_authority_check_requested
- war_authority_verified
- war_authority_rejected

constitution_alignment:
- explicit authorization
- no hidden override

final_rule:
No war-state transition may occur without explicit lawful authority.
