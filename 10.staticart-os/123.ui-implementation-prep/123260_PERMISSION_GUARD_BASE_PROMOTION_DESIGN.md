# ============================================================
# PERMISSION GUARD BASE PROMOTION DESIGN
# ============================================================

status: promotion-design
system: StaticArtOS
layer_origin: implementation-basis
component_name: permission guard base
owner: Boss
prepared_by: Zero

purpose:
Defines the promotion design for permission guard base
as a reusable service-side access-control primitive.

canonical_responsibility:
- require actor presence
- require allowed role or scope
- require ownership or publisher-boundary compatibility
- expose explicit forbidden / denied result
- normalize guard outcome for service consumers

not_responsible_for:
- StaticArtOS-specific actor taxonomy
- StaticArtOS-specific lifecycle block rules
- business-specific approval decisions
- UI messaging

reuse_scope:
- service guards
- creator apps
- admin apps
- governance-aware APIs
- ownership-sensitive workflows

required_inputs:
- actor_context
- target_context
- guard_profile
- required_scope_or_role
- ownership_relation_or_null
- inherited_policy_or_null

emitted_outputs:
- guard_passed
- guard_denied
- denied_reason_code
- denial_details_or_null

state_model:
- guard_not_evaluated
- guard_passed
- guard_denied

promotion_caution:
- do not hard-code StaticArtOS role names
- do not absorb business workflow policy
- do not become the global permission engine

initial_promotion_judgment:
- promotion_design_ready: yes
- official_promotion_recommended: yes
