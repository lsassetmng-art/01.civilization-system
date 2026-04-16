# ============================================================
# GAMBLING SAFETY STATE MODEL
# ============================================================

status: draft-for-canonical-update
system: game-os
layer: model
domain: gambling-safety-state
document_type: model
owner: Boss
prepared_by: Zero

formal_definition:
gambling_safety_state is the ongoing protection and control state for a player
participating in national-currency gambling.

major_states:
- normal
- observed
- warned
- limited
- cooldown-active
- self-excluded
- forced-paused
- operator-held

responsibilities:
- self-exclusion state
- cooldown state
- forced pause state
- operator hold state
- risk escalation markers
- intervention history

core_principles:
- safety state is not eligibility result
- safety state feeds eligibility decisions
- player protection measures must remain auditable
