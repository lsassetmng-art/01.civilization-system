# ============================================================
# FACILITY ZONING COMPATIBILITY MODEL
# ============================================================

status: canonical
layer: model
scope: field-map-facility-dictionary-and-placement
component: facility-zoning-compatibility

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ZONING TAGS
# ============================================================

zoning_tags:
- commerce_zone
- finance_zone
- civic_zone
- education_zone
- medical_zone
- religion_zone
- transport_zone
- mixed_use_zone
- housing_zone
- industrial_zone
- memorial_zone
- information_zone


# ============================================================
# 2. COMPATIBILITY RULES
# ============================================================

compatibility_rules:
- marketplace_facility is compatible with commerce_zone or mixed_use_zone
- bank_facility is compatible with finance_zone, commerce_zone, or mixed_use_zone
- securities_company_facility is compatible with finance_zone or mixed_use_zone
- national_securities_market_facility is compatible with civic_zone, finance_zone, or information_zone
- insurance_facility is compatible with finance_zone, commerce_zone, or mixed_use_zone
- real_estate_finance_facility is compatible with finance_zone, commerce_zone, or mixed_use_zone
- recruitment_information_center is compatible with civic_zone, commerce_zone, or mixed_use_zone
- medical_service_facility is compatible with medical_zone or mixed_use_zone
- education_service_facility is compatible with education_zone or mixed_use_zone
- religion_service_facility is compatible with religion_zone or memorial_zone
- station_service_facility is compatible with transport_zone
- mixed_service_building is compatible with mixed_use_zone


# ============================================================
# 3. FINAL RULE
# ============================================================

Zoning compatibility determines
whether a facility is culturally and structurally plausible
in a given lot.
