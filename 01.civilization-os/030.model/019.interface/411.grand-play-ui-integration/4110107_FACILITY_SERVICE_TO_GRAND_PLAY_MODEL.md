# ============================================================
# FACILITY SERVICE TO GRAND PLAY MODEL
# ============================================================

status: canonical
layer: model
scope: grand-play-ui-integration
component: facility-service-to-grand-play

owner: Boss
prepared_by: Zero


# ============================================================
# 1. FACILITY FAMILIES
# ============================================================

facility_families:
- government_facility
- military_facility
- media_facility
- securities_facility
- bank_facility
- political_office_facility
- public_order_facility
- transport_authority_facility


# ============================================================
# 2. GRAND PLAY LINKS
# ============================================================

grand_play_links:
- government_facility -> political_power_entry
- military_facility -> mobilization_and_war_entry
- media_facility -> information_war_entry
- securities_facility -> market_visibility_entry
- bank_facility -> economic_pressure_entry
- political_office_facility -> sovereign_action_entry
- public_order_facility -> crackdown_and_order_entry
- transport_authority_facility -> strategic_infrastructure_entry


# ============================================================
# 3. FINAL RULE
# ============================================================

Facility entry
must remain one of the main ways
grand play becomes actionable.
