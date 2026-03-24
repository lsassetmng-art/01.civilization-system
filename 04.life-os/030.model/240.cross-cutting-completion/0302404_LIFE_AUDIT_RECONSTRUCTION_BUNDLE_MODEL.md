# ============================================================
# LIFE AUDIT RECONSTRUCTION BUNDLE MODEL
# ============================================================

status: canonical
layer: 030.model
system: life-os
owner: Boss
prepared_by: Zero

purpose:
Define the canonical audit reconstruction bundle model for LifeOS.

model_type:
- audit recovery truth model

primary_key:
- life_audit_reconstruction_bundle_id

natural_key:
- bundle_scope
- bundle_ref
- correlation_id

fields:
- life_audit_reconstruction_bundle_id
- bundle_scope
- bundle_ref
- correlation_id
- bundle_status
- source_record_set_hash
- reconstruction_summary
- source_state_version
- bundled_at
- created_at
- updated_at

bundle_status_enum:
- built
- superseded
- invalidated
- archived

truth_boundary:
Life audit reconstruction truth belongs to LifeOS cross-cutting-completion domain.
