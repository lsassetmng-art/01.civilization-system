# ============================================================
# REAL ESTATE UI MODEL
# ============================================================

status: canonical
layer: model
scope: insurance-realestate-recruitment-services
component: real-estate-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED SURFACES
# ============================================================

required_surfaces:
- real_estate_home
- property_search
- property_detail
- district_map_surface
- comparison_surface
- lease_or_purchase_flow
- contract_summary
- property_history
- real_estate_notice_surface


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

real_estate_ui_fields:
- operator_id
- user_id
- searchable_property_set
- district_context
- rent_summary
- sale_price_summary
- eligibility_profile
- nation_regulation_profile
- pending_contract_state
- institution_context_banner


# ============================================================
# 3. ACTIONS
# ============================================================

real_estate_ui_actions:
- search_properties
- open_property_detail
- compare_properties
- open_district_map
- start_lease_flow
- start_purchase_flow
- review_contracts
- review_notices


# ============================================================
# 4. FINAL RULE
# ============================================================

Real estate UI must prioritize
property truth,
district context,
and contract clarity.
