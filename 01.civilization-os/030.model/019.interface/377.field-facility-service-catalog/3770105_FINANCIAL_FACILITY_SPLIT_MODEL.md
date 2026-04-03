# ============================================================
# FINANCIAL FACILITY SPLIT MODEL
# ============================================================

status: canonical
layer: model
scope: field-facility-service-catalog
component: financial-facility-split

owner: Boss
prepared_by: Zero


# ============================================================
# 1. FACILITY SPLIT
# ============================================================

financial_facility_split:
- bank_facility
- securities_company_facility
- national_securities_market_facility
- insurance_facility
- real_estate_finance_facility


# ============================================================
# 2. ROLE RULES
# ============================================================

role_rules:
- bank_facility provides account and fund movement services
- securities_company_facility provides brokerage and portfolio services
- national_securities_market_facility provides graph and board viewing only
- insurance_facility provides insurance service access
- real_estate_finance_facility provides real-estate-linked finance access


# ============================================================
# 3. FINAL RULE
# ============================================================

Financial facilities with different roles
must not be collapsed into one generic finance building.
