# ============================================================
# NATION TYPE DEFAULT AND OVERRIDE UI MODEL
# ============================================================

status: canonical
layer: model
scope: military-and-infrastructure-ui-integration
component: nation-type-default-and-override-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED UI BLOCKS
# ============================================================

required_ui_blocks:
- nation_type_default_summary
- nation_specific_override_summary
- final_effective_profile_summary
- override_difference_highlight
- reset_to_default_action
- explicit_override_edit_action


# ============================================================
# 2. RULES
# ============================================================

rules:
- default and override must never be visually merged into one unexplained value
- final effective profile must be shown as computed result
- unchanged values may be visually collapsed in simple mode
- changed values must be clearly highlighted
- existing nations must be allowed to diverge from type defaults


# ============================================================
# 3. FINAL RULE
# ============================================================

Users must always understand
whether a rule comes from type default
or nation-specific override.
