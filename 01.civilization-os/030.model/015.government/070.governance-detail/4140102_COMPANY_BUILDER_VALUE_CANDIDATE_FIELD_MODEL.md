# ============================================================
# COMPANY BUILDER VALUE CANDIDATE FIELD MODEL
# ============================================================

status: canonical
layer: model
scope: builder-value-candidate-definition
component: company-builder-value-candidate-field

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANDIDATE VALUE REQUIRED FIELDS
# ============================================================

candidate_value_required_fields:
- company_type
- company_scale_class
- ownership_type
- listing_status
- home_nation_type
- industry_sector
- business_model_type
- facility_deployment_type
- hq_type
- branch_policy_type
- storefront_type
- production_site_type
- logistics_model
- distribution_model
- market_role_type
- capital_structure_type
- funding_stage_type
- ipo_readiness_type
- acquisition_defense_type
- state_dependency_type
- regulatory_exposure_type
- nationalization_risk_type
- political_connection_type
- military_supply_relation_type
- public_contract_type
- employment_model
- labor_intensity_type
- automation_level_type
- union_relation_type
- brand_positioning_type
- sales_channel_type
- pricing_tier
- market_scope_type


# ============================================================
# 2. FREE TEXT PREFERRED FIELDS
# ============================================================

free_text_preferred_fields:
- company_display_name
- brand_story
- slogan
- founder_note
- optional_market_description


# ============================================================
# 3. FINAL RULE
# ============================================================

Company Builder
must use explicit candidates
for fields that affect
ownership,
market behavior,
or deployment logic.
