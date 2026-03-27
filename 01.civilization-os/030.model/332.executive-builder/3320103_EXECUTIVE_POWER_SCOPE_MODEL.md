# ============================================================
# EXECUTIVE POWER SCOPE MODEL
# ============================================================

status: canonical
layer: model
scope: executive-builder
component: executive-power-scope

owner: Boss
prepared_by: Zero


# ============================================================
# 1. POWER FIELDS
# ============================================================

power_fields:
- decree_power
- emergency_order_power
- budget_proposal_power
- appointment_power
- dismissal_power
- military_command_power
- police_direction_power
- treaty_negotiation_power
- law_veto_power
- legislative_dissolution_power
- administrative_reorganization_power
- local_override_power
- judicial_appointment_participation_power
- censorship_or_information_control_power


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
# 3. PRACTICAL CONTROL FIELDS
# ============================================================

practical_control_fields:
- practical_cabinet_control
- practical_ruler_control
- practical_bureaucracy_control
- practical_military_control
- practical_business_influence_on_executive
- practical_religious_influence_on_executive
- practical_local_elite_influence
- practical_informal_network_control


# ============================================================
# 4. FINAL RULE
# ============================================================

Legal executive power
and practical executive control
must always be modeled separately.
