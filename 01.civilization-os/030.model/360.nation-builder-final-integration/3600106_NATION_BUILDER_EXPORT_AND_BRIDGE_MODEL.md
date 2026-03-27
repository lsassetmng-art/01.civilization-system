# ============================================================
# NATION BUILDER EXPORT AND BRIDGE MODEL
# ============================================================

status: canonical
layer: model
scope: nation-builder-final-integration
component: nation-builder-export-and-bridge

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EXPORT TARGETS
# ============================================================

export_targets:
- nation_master_export
- quick_reference_export
- matrix_export
- implementation_bridge_export
- builder_snapshot_export
- validation_report_export


# ============================================================
# 2. EXPORT FIELDS
# ============================================================

export_fields:
- export_id
- nation_seed_id
- export_target
- export_state
- canonical_ref_set
- generated_at
- validation_required
- warnings_included
- bridge_ready
- published_flag


# ============================================================
# 3. FINAL RULE
# ============================================================

Export must preserve canonical references
so implementation can trace back
to source design models.
