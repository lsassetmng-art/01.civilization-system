# ============================================================
# EXTERNAL INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: integration
subdomain: external-integration
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Defines external integration architecture.

scope:
Covers contract-based data export, bounded external import,
synchronization, and externally visible integration surfaces.

design_intent:
External integration is a high-risk boundary.
It must preserve projection safety, authority basis,
historical labeling, and overwrite denial.

canonical_rules:
- External export must be projection-safe.
- Restricted or sealed data requires explicit authority basis.
- External import must be schema-bound.
- External import must not silently replace canonical truth.
- Historical export must be labeled as historical.

required_behavior:
- Support public-safe external export.
- Support restricted external export where explicitly allowed.
- Support bounded external import as proposal or sync candidate.
- Support synchronization trace.

state_model:
external_contract_class:
- public_export
- restricted_export
- external_import_proposal
- external_sync_candidate
- audit_export

validation_rules:
- projection_scope is required.
- authority_basis is required for restricted export.
- import schema is required.
- historical_flag is required for historical export.
- overwrite attempt without authority is prohibited.

decision_matrix:
- public_export + public-safe data -> allowed
- restricted_export + no authority -> denied
- external_import_proposal -> may be accepted as proposal
- sync_candidate + schema mismatch -> denied
- historical export without flag -> denied

failure_codes:
- EXTERNAL_INTEGRATION_PROJECTION_SCOPE_MISSING
- EXTERNAL_INTEGRATION_AUTHORITY_REQUIRED
- EXTERNAL_INTEGRATION_SCHEMA_INVALID
- EXTERNAL_INTEGRATION_HISTORICAL_FLAG_MISSING
- EXTERNAL_INTEGRATION_OVERWRITE_DENIED

example_scenarios:
- A public-facing consumer receives summary-only projected data.
- An external note payload is accepted as proposal path, not canonical replacement.
