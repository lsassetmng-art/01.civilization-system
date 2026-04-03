# ============================================================
# NATION SEED SAVE MODEL
# ============================================================

status: canonical
layer: model
scope: nation-builder-final-integration
component: nation-seed-save

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SAVE GROUPS
# ============================================================

save_groups:
- nation_identity_group
- geography_group
- population_group
- economy_group
- culture_group
- zoning_group
- military_group
- structure_locked_group
- scope_editable_group
- regime_change_state_group
- preview_group
- validation_group
- export_group


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

nation_seed_save_fields:
- nation_seed_id
- nation_id
- build_status
- draft_or_published_state
- created_at
- updated_at
- structure_locked_snapshot
- scope_editable_snapshot
- transition_state_snapshot
- validation_state_snapshot
- preview_state_snapshot
- export_ready_state


# ============================================================
# 3. BUILD STATUS TYPES
# ============================================================

build_status_types:
- draft
- foundation_defined
- governance_defined
- validated_with_warnings
- validated_clean
- published_seed
- transition_locked
- deprecated


# ============================================================
# 4. FINAL RULE
# ============================================================

Nation seeds must be persistable
as layered state,
not as one flat blob.
