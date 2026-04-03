# ============================================================
# NATION BUILDER PERMISSION MODEL
# ============================================================

status: canonical
layer: model
scope: field-permission-control
component: nation-builder-permission

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ACTIONS
# ============================================================

nation_builder_actions:
- create_nation
- edit_custom_nation
- view_existing_nation
- modify_power_structure
- modify_regime_settings
- modify_nation_policy
- preview_nation_effect


# ============================================================
# 2. RULES
# ============================================================

rules:
- create_nation requires explicit nation creation authority
- edit_custom_nation requires ownership or delegated nation authority
- fixed or protected nations may remain view-only
- power structure and regime changes may require higher authority than cosmetic edits
- nation policy mutation may require nation-scope approval


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation Builder permissions
must distinguish viewing,
drafting,
editing,
and sovereign mutation.
