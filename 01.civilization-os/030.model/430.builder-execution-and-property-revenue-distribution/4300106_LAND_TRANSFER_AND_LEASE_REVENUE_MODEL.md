# ============================================================
# LAND TRANSFER AND LEASE REVENUE MODEL
# ============================================================

status: canonical
layer: model
scope: builder-execution-and-property-revenue-distribution
component: land-transfer-and-lease-revenue

owner: Boss
prepared_by: Zero


# LAND CASE SPLITS

land_case_splits:
- owner_sale_or_rent_income
- nation_registration_or_tax_income
- real_estate_mediation_fee
- contract_processing_fee


# APPLIES TO

applies_to:
- land_purchase
- land_sale
- land_lease
- land_sublease
- land_transfer


# FINAL RULE

Land-origin transactions
must separate owner income,
nation income,
and mediation or processing fees.
