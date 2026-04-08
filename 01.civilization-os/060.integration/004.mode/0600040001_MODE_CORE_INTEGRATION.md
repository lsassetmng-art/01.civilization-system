# ============================================================
# MODE CORE INTEGRATION
# ============================================================

status: canonical
layer: integration
domain: mode
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines core integration behavior for mode data.

scope:
Covers internal projection, external projection,
historical mode export, bounded synchronization,
and rejection of invalid mode-boundary transfers.

design_intent:
Mode influences interpretation across the system,
but its canonical ownership must remain stable.
Core mode integration exists so that downstream consumers
receive only the mode semantics they are allowed to receive.

canonical_rules:
- Canonical mode truth remains owned by CivilizationOS.
- Mode export must be projection-based.
- Historical mode export must declare historical_flag.
- Imported mode payload must not silently redefine effective canonical mode.
- Restricted operational or emergency semantics must be masked when necessary.

required_behavior:
- Support internal current mode projection.
- Support internal historical mode projection.
- Support external public-safe mode projection.
- Support bounded sync candidate intake.
- Reject unauthorized mode overwrite attempts.

integration_state_model:
mode_integration_state:
- projected
- masked
- delivered
- proposal_only
- sync_candidate
- rejected

projection_mode:
- internal_current
- internal_historical
- external_public
- external_restricted
- audit

integration_contract_fields:
- contract_type
- mode_type
- scope_ref
- projection_scope
- authority_basis
- historical_flag
- source_revision
- exported_at

validation_rules:
- mode_type is required.
- scope_ref is required.
- projection_scope is required.
- historical export requires historical_flag=true.
- external restricted export requires authority basis.
- import attempting canonical overwrite without authority is prohibited.

decision_matrix:
- internal_current + valid scope -> projected delivery allowed
- external_public + public-safe projection -> allowed
- external_public + restricted mode semantics -> masked or denied
- bounded sync candidate + no overwrite -> proposal_only or sync_candidate
- overwrite attempt + no authority -> rejected

failure_codes:
- MODE_INT_MODE_TYPE_MISSING
- MODE_INT_SCOPE_REF_MISSING
- MODE_INT_PROJECTION_SCOPE_MISSING
- MODE_INT_HISTORICAL_FLAG_REQUIRED
- MODE_INT_AUTHORITY_REQUIRED
- MODE_INT_OVERWRITE_DENIED

example_scenarios:
- An internal operational module receives the current effective operation mode.
- A public surface receives only a masked public-safe mode summary.
- An inbound mode suggestion is stored as proposal_only rather than canonical overwrite.
