# ============================================================
# PROPERTY REVENUE DISTRIBUTION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: builder-execution-and-property-revenue-distribution
component: property-revenue-distribution

owner: Boss
prepared_by: Zero


# PURPOSE

Define the canonical revenue distribution architecture
for building construction,
land usage,
property transfer,
and mediation.


# DISTRIBUTION PRINCIPLE

Property-related money flow
must not collapse into a single undifferentiated amount.

Internal distribution must separate:

- construction revenue
- landowner income
- nation-side fee or tax
- real-estate mediation fee
- utility or infrastructure connection fee where applicable


# BUILDING CONSTRUCTION CASE

For building construction or major renovation,
distribution may include:

- construction_company_revenue
- landowner_income
- nation_fee_or_tax
- real_estate_company_fee
- infrastructure_connection_fee_where_applicable


# LAND CASE

For land purchase,
lease,
sublease,
or land transfer,
distribution may include:

- owner_sale_or_rent_income
- nation_registration_or_tax_income
- real_estate_mediation_fee
- contract_processing_fee


# UI PRINCIPLE

Builder UI may show user-facing totals as:

- construction cost
- land cost
- mediation fee
- tax or registration fee
- maintenance estimate

but internal accounting must preserve separated distribution semantics.


# FINAL RULE

Property and builder-related revenue
must be internally distributed
to the proper economic recipients
instead of being treated as a single undifferentiated payment.
