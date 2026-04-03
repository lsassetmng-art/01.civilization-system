# ============================================================
# LEGISLATIVE POWER SCOPE MODEL
# ============================================================

status: canonical
layer: model
scope: legislature-builder
component: legislative-power-scope

owner: Boss
prepared_by: Zero


# ============================================================
# 1. POWER FIELDS
# ============================================================

power_fields:
- ordinary_law_initiation_power
- ordinary_law_amendment_power
- ordinary_law_approval_power
- budget_initiation_power
- budget_approval_power
- tax_approval_power
- treaty_approval_power
- executive_oversight_power
- summons_power
- inquiry_power
- impeachment_power
- appointment_confirmation_power
- war_authorization_power
- emergency_review_power
- constitutional_amendment_participation_power


# ============================================================
# 2. POWER LEVEL STYLE
# ============================================================

power_level_style:
- none
- weak
- medium
- strong
- exclusive


# ============================================================
# 3. OVERRIDE RULE FIELDS
# ============================================================

override_rule_fields:
- executive_veto_exists
- legislative_override_exists
- override_threshold
- upper_house_block_power
- lower_house_priority_rule
- deadlock_resolution_rule


# ============================================================
# 4. FINAL RULE
# ============================================================

Formal legislative power must be modeled separately
from practical influence strength.
