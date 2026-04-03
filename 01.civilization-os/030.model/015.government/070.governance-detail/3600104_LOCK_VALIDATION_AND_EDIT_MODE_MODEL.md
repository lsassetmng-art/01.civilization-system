# ============================================================
# LOCK VALIDATION AND EDIT MODE MODEL
# ============================================================

status: canonical
layer: model
scope: nation-builder-final-integration
component: lock-validation-and-edit-mode

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EDIT MODES
# ============================================================

edit_modes:
- foundation_mode
- constitution_mode
- governance_operation_mode
- regime_change_mode
- preview_mode


# ============================================================
# 2. LOCK RULES
# ============================================================

lock_rules:
- foundation_mode may define nation base
- constitution_mode may define structure-locked governance
- governance_operation_mode may edit only scope-editable fields
- regime_change_mode may unlock transition-authorized structural rewrite
- preview_mode is read-only


# ============================================================
# 3. VALIDATION GROUPS
# ============================================================

validation_groups:
- identity_validation
- geography_validation
- economy_validation
- culture_validation
- power_structure_validation
- legislature_validation
- executive_validation
- appointment_validation
- faction_validation
- integrated_preview_validation
- export_validation


# ============================================================
# 4. FINAL RULE
# ============================================================

Nation Builder must always display
which mode is active,
which fields are locked,
and why.
