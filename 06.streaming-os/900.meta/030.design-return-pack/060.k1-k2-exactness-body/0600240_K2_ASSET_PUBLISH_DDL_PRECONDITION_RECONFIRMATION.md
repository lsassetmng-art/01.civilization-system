# ============================================================
# K2 ASSET PUBLISH DDL PRECONDITION RECONFIRMATION
# ============================================================

status: canonical-reconfirmation
layer: meta
domain: k1-k2-exactness-body
system: StreamingOS
prepared_by: Zero
owner: Boss

ddl_precondition_rule:
K2 DDL-facing readings are allowed only if:
- persona-facing asset columns are display refs only
- rights-facing columns are formal contract/reference surfaces only
- no local persona profile canonical meaning is inferred
- no local persona-rights canonical table ownership is inferred

ddl_safe_meaning:
asset-publish DDL remains a base structure for:
- asset display
- clip display
- publish orchestration
- review/governance/publish operational truth

ddl_unsafe_meaning:
asset-publish DDL must not be read as persona-profile or persona-rights canonical storage.
