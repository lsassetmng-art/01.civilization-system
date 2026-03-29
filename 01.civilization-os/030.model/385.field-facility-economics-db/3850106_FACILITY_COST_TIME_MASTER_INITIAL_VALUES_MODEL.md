# ============================================================
# FACILITY COST TIME MASTER INITIAL VALUES MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-economics-db
component: facility-cost-time-master-initial-values

owner: Boss
prepared_by: Zero


# ============================================================
# 1. SMALL LOT FACILITIES
# ============================================================

small_lot_initial_values:
- marketplace_facility -> build_cost medium / maintenance low / time 10
- bank_facility -> build_cost medium / maintenance low / time 5
- securities_company_facility -> build_cost medium / maintenance low / time 10
- insurance_facility -> build_cost low / maintenance low / time 5
- real_estate_finance_facility -> build_cost low / maintenance low / time 5
- recruitment_information_center -> build_cost low / maintenance low / time 5
- recruitment_company_facility -> build_cost low / maintenance low / time 5
- company_recruitment_counter -> build_cost low / maintenance low / time 5
- user_company_direct_store -> build_cost low / maintenance low / time 5


# ============================================================
# 2. MEDIUM LOT FACILITIES
# ============================================================

medium_lot_initial_values:
- education_service_facility -> build_cost medium / maintenance medium / time 10
- medical_service_facility -> build_cost medium / maintenance medium / time 10
- religion_service_facility -> build_cost medium / maintenance low / time 10
- station_service_facility -> build_cost medium / maintenance medium / time 10
- user_company_headquarters -> build_cost medium / maintenance medium / time 10
- mixed_service_building -> build_cost high / maintenance medium / time 20


# ============================================================
# 3. LARGE OR ANCHOR FACILITIES
# ============================================================

large_or_anchor_initial_values:
- major_medical_complex -> build_cost high / maintenance high / time 20
- large_school_complex -> build_cost high / maintenance high / time 20
- major_temple_or_cathedral_complex -> build_cost high / maintenance medium / time 20
- national_securities_market_facility -> build_cost medium / maintenance low / time 5
- banking_rate_board_facility -> build_cost low / maintenance very_low / time 0
- real_estate_market_board_facility -> build_cost low / maintenance very_low / time 0
- recruitment_information_board -> build_cost low / maintenance very_low / time 0
- nation_market_information_board -> build_cost low / maintenance very_low / time 0
- civic_notice_board -> build_cost very_low / maintenance very_low / time 0


# ============================================================
# 4. FINAL RULE
# ============================================================

These are initial tuning placeholders
for DB seeding,
not final economy balance.
