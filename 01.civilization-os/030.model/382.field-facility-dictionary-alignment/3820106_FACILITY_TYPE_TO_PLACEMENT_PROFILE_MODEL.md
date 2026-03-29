# ============================================================
# FACILITY TYPE TO PLACEMENT PROFILE MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-dictionary-alignment
component: facility-type-to-placement-profile

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EXAMPLE PLACEMENT PROFILES
# ============================================================

placement_profiles:
- marketplace_facility -> buildable small_lot_or_medium_lot commerce_or_mixed_use
- bank_facility -> buildable small_lot_or_medium_lot finance_or_commerce_or_mixed_use
- securities_company_facility -> buildable medium_lot finance_or_mixed_use
- national_securities_market_facility -> view_only_or_city_anchor civic_or_finance_or_information
- insurance_facility -> buildable small_lot_or_medium_lot finance_or_commerce_or_mixed_use
- real_estate_finance_facility -> buildable small_lot_or_medium_lot finance_or_commerce_or_mixed_use
- recruitment_information_center -> buildable small_lot_or_medium_lot civic_or_commerce_or_mixed_use
- recruitment_information_board -> non_placeable_view_object_or_civic_small information_or_civic
- education_service_facility -> buildable medium_lot education_or_mixed_use
- medical_service_facility -> buildable medium_lot medical_or_mixed_use
- religion_service_facility -> buildable medium_lot religion_or_memorial
- station_service_facility -> buildable district_anchor transport
- mixed_service_building -> buildable medium_lot_or_large_lot mixed_use


# ============================================================
# 2. FINAL RULE
# ============================================================

Placement profile extends facility meaning
into field-map buildability
without redefining the facility.
