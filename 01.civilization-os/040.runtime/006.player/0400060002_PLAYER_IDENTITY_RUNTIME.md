# ============================================================
# PLAYER IDENTITY RUNTIME
# ============================================================

status: canonical
layer: runtime
domain: player
subdomain: player-identity
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines runtime behavior for player identity binding.

scope:
Covers identity binding resolution,
verified identity delivery,
identity suspension handling,
and ambiguity rejection.

runtime_rules:
- Runtime must resolve player identity binding explicitly.
- Runtime must reject ambiguous conflicting active identity binds.
- Suspended identity binding must block live participation.
- Archived identity binding must remain history-safe only.

required_behavior:
- Resolve identity binding.
- Confirm verified or suspended state.
- Support historical inspection of archived identity relation.
- Emit denial on ambiguous binding.

state_model:
player_identity_runtime_state:
- pending_bind
- bound
- verified
- suspended
- archived
- blocked

validation_rules:
- identity_ref is required.
- multiple conflicting active bindings are prohibited.
- suspended identity state blocks live participation.
- archived identity binding must not be treated as current live bind.

transition_rules:
- pending_bind -> bound
- bound -> verified
- verified -> suspended
- suspended -> verified
- verified -> archived

failure_codes:
- PLAYER_ID_RT_REF_MISSING
- PLAYER_ID_RT_CONFLICT
- PLAYER_ID_RT_SUSPENDED_LIVE_DENIED
- PLAYER_ID_RT_ARCHIVE_CURRENT_CONFLICT

example_scenarios:
- A player cannot enter live participation while identity binding is suspended.
- An archived identity relation is visible only through historical inspection.
