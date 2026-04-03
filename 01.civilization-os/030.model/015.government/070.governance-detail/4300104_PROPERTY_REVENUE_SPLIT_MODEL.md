# ============================================================
# PROPERTY REVENUE SPLIT MODEL
# ============================================================

status: canonical
layer: model
scope: builder-execution-and-property-revenue-distribution
component: property-revenue-split

owner: Boss
prepared_by: Zero


# REVENUE SPLIT COMPONENTS

revenue_split_components:
- construction_company_revenue
- landowner_income
- nation_fee_or_tax
- real_estate_company_fee
- infrastructure_connection_fee_where_applicable
- contract_processing_fee_where_applicable


# FINAL RULE

Property-related payment
must preserve explicit split components.
