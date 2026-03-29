# ============================================================
# BUILDING CONSTRUCTION REVENUE MODEL
# ============================================================

status: canonical
layer: model
scope: builder-execution-and-property-revenue-distribution
component: building-construction-revenue

owner: Boss
prepared_by: Zero


# BUILDING CASE SPLITS

building_case_splits:
- construction_company_revenue
- landowner_income
- nation_fee_or_tax
- real_estate_company_fee_where_applicable
- infrastructure_connection_fee_where_applicable


# APPLIES TO

applies_to:
- new_building
- major_renovation
- expansion
- rebuild


# FINAL RULE

Building construction revenue
must be distributed
according to construction, ownership, nation, and mediation roles.
