# ============================================================
# IDEMPOTENCY SERVICE BASE PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: implementation-basis
component_name: idempotency service base
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for idempotency service base
as a reusable action-safety primitive for repeated requests.

canonical_responsibility:
- accept idempotency key context
- normalize first-run vs replayed action handling
- expose duplicate-request safe result
- preserve stable action identity
- support pluggable persistence adapter

not_responsible_for:
- storage backend implementation
- business-specific command rules
- retry policy ownership
- queue scheduler ownership

reuse_scope:
- POST/action endpoints
- command handlers
- create/update actions requiring replay safety
- payment-adjacent safe action surfaces
- governed mutation operations

required_inputs:
- idempotency_key
- actor_context
- action_fingerprint
- request_payload_hash_or_null
- persistence_adapter
- expiry_policy_or_null

emitted_outputs:
- first_execution_allowed
- replay_detected
- replayed_result_reference
- idempotency_conflict_detected

state_model:
- idempotency_new
- idempotency_in_progress
- idempotency_replayed
- idempotency_conflicted
- idempotency_completed

promotion_caution:
- keep storage pluggable
- keep business meaning outside
- do not merge with retry engine
- do not assume one persistence model

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
