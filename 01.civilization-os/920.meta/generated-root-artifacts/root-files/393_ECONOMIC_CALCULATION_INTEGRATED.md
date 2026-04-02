# ============================================================
# 393 ECONOMIC CALCULATION INTEGRATED
# ============================================================

status: canonical
type: integrated
owner: Boss
prepared_by: Zero

# ============================================================
# SOURCE FILES
# ============================================================
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/393.economic-calculation/3930001_ECONOMIC_AND_FINANCIAL_CALCULATION_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/393.economic-calculation/3930002_PRICING_AND_RATING_CALCULATION_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/393.economic-calculation/3930003_MACRO_INDICATOR_CALCULATION_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/393.field-nation-cross-integration/3930001_FIELD_NATION_CROSS_INTEGRATION_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.economic-calculation/3930001_ECONOMIC_AND_FINANCIAL_CALCULATION_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.economic-calculation/3930002_PRICING_AND_RATING_CALCULATION_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.economic-calculation/3930003_MACRO_INDICATOR_CALCULATION_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.field-nation-cross-integration/3930101_FIELD_TO_NATION_CANONICAL_SEQUENCE_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.field-nation-cross-integration/3930102_FACILITY_ACTION_TO_NATION_UI_BINDING_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.field-nation-cross-integration/3930103_NATION_PREVIEW_SOURCE_OF_TRUTH_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.field-nation-cross-integration/3930104_CROSS_LAYER_REFRESH_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.field-nation-cross-integration/3930105_CROSS_LAYER_EXPLANATION_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.field-nation-cross-integration/3930106_CROSS_LAYER_AUDIT_TRACE_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.field-nation-cross-integration/3930107_CROSS_LAYER_FAILURE_AND_FALLBACK_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.field-nation-cross-integration/3930108_FIELD_NATION_CROSS_INTEGRATION_CODE_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/393.economic-calculation/3930001_ECONOMIC_AND_FINANCIAL_CALCULATION_IMPLEMENTATION.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/393.economic-calculation/3930002_PRICING_AND_RATING_CALCULATION_IMPLEMENTATION.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/393.economic-calculation/3930003_MACRO_INDICATOR_CALCULATION_IMPLEMENTATION.md



# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/393.economic-calculation/3930001_ECONOMIC_AND_FINANCIAL_CALCULATION_ARCHITECTURE.md
# ============================================================

# ============================================================
# ECONOMIC AND FINANCIAL CALCULATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: economic-and-financial-calculation
component: economic-and-financial-calculation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical upper architecture
for economic, market, pricing, rating,
and macro-indicator calculation
inside Civilization.

This document supplements existing design assets such as:

- land_value_profile
- stock_market
- bond_market
- fx_market
- GDP simple formula posture

This document defines:

- calculation family boundaries
- market-price family boundaries
- rating family boundaries
- macro-indicator family boundaries
- relation between micro, market, and macro layers

This document does not redefine:

- existing land-value profile concepts
- existing stock existence and holding models
- existing bond-market domain existence
- existing FX principle ownership
- existing GDP concept existence


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Civilization economic calculation
must remain layered.

At minimum,
the following families must remain distinct.

- land and real-asset pricing
- stock pricing
- bond pricing and yield
- FX rate movement
- sovereign and corporate rating
- labor and consumption indicators
- GDP and investment indicators

These may interact,
but must not be collapsed
into one opaque economy number.


# ============================================================
# 3. EXISTING-ASSET PRESERVATION RULE
# ============================================================

This architecture is additive.

It preserves existing concepts such as:

- land value profile categories
- stock market and stock holding concepts
- bond market domain concepts
- FX architecture principles
- GDP existing simple formula posture

New calculation design
must complement these assets,
not erase them.


# ============================================================
# 4. CALCULATION HIERARCHY
# ============================================================

Economic calculation should be viewed
in the following hierarchy.

Layer 1:
micro posture
- household
- firm
- project
- asset
- listing
- labor unit

Layer 2:
market posture
- land market
- stock market
- bond market
- FX market

Layer 3:
rating posture
- state rating
- company rating

Layer 4:
macro posture
- unemployment
- consumption propensity
- GDP
- machinery orders
- related macro indicators

Higher layers may consume lower-layer outputs,
but lower layers must remain independently meaningful.


# ============================================================
# 5. INPUT FACTOR FAMILIES
# ============================================================

Economic and financial calculation
may consume inputs from:

- population
- geography
- infrastructure
- labor
- production
- logistics
- trade
- consumption
- policy
- risk and mortality families
- war posture
- epidemic posture
- famine posture
- financial-service posture
- confidence or sentiment posture

This document fixes the architectural allowance
for cross-domain inputs.


# ============================================================
# 6. OUTPUT FAMILIES
# ============================================================

Representative outputs include:

- land price posture
- stock price posture
- bond yield and price posture
- FX rate posture
- sovereign rating posture
- corporate rating posture
- unemployment posture
- consumption posture
- GDP posture
- machinery-order posture

Outputs may be used by:

- UI visibility
- economy simulation
- investment decision logic
- risk systems
- policy systems
- business operation systems


# ============================================================
# 7. REQUIRED CHILD ARCHITECTURES
# ============================================================

This document requires:

- PRICING_AND_RATING_CALCULATION_ARCHITECTURE
- MACRO_INDICATOR_CALCULATION_ARCHITECTURE


# ============================================================
# 8. FINAL RULE
# ============================================================

Civilization economic calculation architecture must remain:

- additive to existing design
- layered
- market-aware
- rating-aware
- macro-aware
- cross-domain-compatible
- implementation-ready


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/393.economic-calculation/3930002_PRICING_AND_RATING_CALCULATION_ARCHITECTURE.md
# ============================================================

# ============================================================
# PRICING AND RATING CALCULATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: pricing-and-rating-calculation
component: pricing-and-rating-calculation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for land pricing, stock pricing,
bond pricing, FX rate movement,
and state / company rating calculation.


# ============================================================
# 2. FAMILY SEPARATION
# ============================================================

The following families must remain distinct.

- land price calculation
- stock price calculation
- government bond pricing and yield
- corporate bond pricing and yield
- FX rate calculation
- sovereign rating calculation
- corporate rating calculation

These families may influence one another,
but must not be collapsed into one score.


# ============================================================
# 3. LAND VALUE RELATION
# ============================================================

Existing land-value profile concepts
remain valid as classification or posture layers.

Formal land-price calculation
is an additional quantitative layer
that may consume:

- location posture
- accessibility posture
- demand posture
- growth expectation posture
- infrastructure posture
- risk discount posture


# ============================================================
# 4. STOCK RELATION
# ============================================================

Existing stock-market and stock-holding concepts remain valid.

Formal stock-price calculation
is the quantitative layer
for market value movement and valuation posture.


# ============================================================
# 5. BOND RELATION
# ============================================================

Existing bond-market domain existence remains valid.

Government and corporate bond calculations
should preserve separation between:

- yield posture
- price posture
- spread posture

Corporate bond calculation
may consume sovereign posture as input.


# ============================================================
# 6. FX RELATION
# ============================================================

Existing FX principles remain valid.

Formal FX-rate movement calculation
is an additional quantitative layer
that may consume:

- rate differential
- inflation differential
- trade balance posture
- capital flow posture
- country risk posture
- sentiment posture


# ============================================================
# 7. RATING RELATION
# ============================================================

State and company rating
must be treated as credit or stability ratings,
not content-rating systems.

They may influence:

- bond spread
- stock multiple posture
- FX risk
- investment confidence
- policy or funding posture


# ============================================================
# 8. FINAL RULE
# ============================================================

Pricing and rating architecture must remain:

- market-distinct
- quantitatively extensible
- compatible with existing assets
- cross-linked but not collapsed


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/393.economic-calculation/3930003_MACRO_INDICATOR_CALCULATION_ARCHITECTURE.md
# ============================================================

# ============================================================
# MACRO INDICATOR CALCULATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: macro-indicator-calculation
component: macro-indicator-calculation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for unemployment, consumption propensity,
GDP, machinery orders,
and related macro-indicator calculation
inside Civilization.


# ============================================================
# 2. FAMILY SEPARATION
# ============================================================

The following indicators must remain distinct.

- unemployment rate
- consumption propensity
- GDP
- machinery orders

They may interact strongly,
but must remain separately visible.


# ============================================================
# 3. GDP RELATION
# ============================================================

Existing GDP concept and simple formula posture remain valid.

Formal GDP calculation
may extend existing GDP posture
into a more structured macro calculation layer.


# ============================================================
# 4. LABOR AND CONSUMPTION RELATION
# ============================================================

Unemployment and consumption propensity
must interact with:

- household income
- labor demand
- production
- confidence
- shock events

But they must not be reduced
to a single household welfare score.


# ============================================================
# 5. INVESTMENT INDICATOR RELATION
# ============================================================

Machinery orders are treated as
a forward-looking investment indicator.

They may consume:

- capacity-expansion need
- expected revenue growth
- financing availability
- confidence
- rate posture


# ============================================================
# 6. FINAL RULE
# ============================================================

Macro-indicator architecture must remain:

- macro-distinct
- GDP-compatible
- labor-aware
- confidence-aware
- investment-aware
- implementation-ready


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/393.field-nation-cross-integration/3930001_FIELD_NATION_CROSS_INTEGRATION_ARCHITECTURE.md
# ============================================================

# ============================================================
# FIELD NATION CROSS INTEGRATION ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: field-nation-cross-integration
component: field-nation-cross-integration

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical cross-integration architecture
between:

- Field Map
- Facility Build and Placement
- Nation Aggregation
- Nation Builder
- Nation Overview and Detail
- Nation Comparison and Preview

This architecture defines
how local facility actions become
nation-scale visible effects.


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Local construction and nation aggregation
must remain separate layers,
but they must connect through
stable and explainable pipelines.

The system must make it possible to answer:

- what facility changed
- where it changed
- which nation metrics changed
- where the change is visible in UI
- what preview should have shown beforehand


# ============================================================
# 3. REQUIRED CROSS PATHS
# ============================================================

required_cross_paths:
- field_map_to_build_validation
- build_validation_to_build_execution
- build_execution_to_facility_state
- facility_state_to_nation_linkage
- nation_linkage_to_nation_aggregate
- nation_aggregate_to_nation_ui
- nation_preview_back_to_field_action


# ============================================================
# 4. FINAL RULE
# ============================================================

Cross integration must preserve
traceability from one facility action
to one nation-visible consequence chain.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.economic-calculation/3930001_ECONOMIC_AND_FINANCIAL_CALCULATION_MODEL.md
# ============================================================

# ============================================================
# ECONOMIC AND FINANCIAL CALCULATION MODEL
# ============================================================

status: canonical
layer: model
scope: economic-and-financial-calculation-model
component: economic-and-financial-calculation-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the shared model posture
for economic, pricing, rating,
and macro-indicator calculation.


# ============================================================
# 2. SHARED CALCULATION CONCEPTS
# ============================================================

Representative shared model concepts include:

- subject_scope_type
- subject_scope_id
- calculation_period
- factor_summary
- base_value
- calculated_value
- trend_direction
- recalculated_at
- notes


# ============================================================
# 3. MARKET / RATING / MACRO RELATION
# ============================================================

Market, rating, and macro calculation models
may share factor structures,
but should preserve distinct final entities.

Representative final entities include:

- LandPriceCalculation
- StockPriceCalculation
- BondPricingCalculation
- FXRateCalculation
- StateRatingCalculation
- CompanyRatingCalculation
- MacroIndicatorCalculation


# ============================================================
# 4. FINAL RULE
# ============================================================

Economic and financial calculation models must remain:

- scope-aware
- factor-readable
- period-aware
- compatible with lower existing market assets


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.economic-calculation/3930002_PRICING_AND_RATING_CALCULATION_MODEL.md
# ============================================================

# ============================================================
# PRICING AND RATING CALCULATION MODEL
# ============================================================

status: canonical
layer: model
scope: pricing-and-rating-calculation-model
component: pricing-and-rating-calculation-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the model posture
for land pricing, stock pricing,
bond pricing, FX rate calculation,
and sovereign / corporate rating.


# ============================================================
# 2. LAND PRICE ENTITY
# ============================================================

LandPriceCalculation

Recommended fields:

- land_price_calculation_id
- subject_scope_type
- subject_scope_id
- base_land_price
- location_factor
- demand_factor
- growth_expectation_factor
- infrastructure_factor
- risk_discount_factor
- land_price_value
- land_value_profile_reference where applicable
- recalculated_at


# ============================================================
# 3. STOCK PRICE ENTITY
# ============================================================

StockPriceCalculation

Recommended fields:

- stock_price_calculation_id
- stock_market_scope_id
- stock_id
- eps_value where applicable
- per_multiple where applicable
- expected_earnings
- growth_expectation
- required_return
- stock_price_value
- recalculated_at


# ============================================================
# 4. BOND PRICING ENTITY
# ============================================================

BondPricingCalculation

Recommended fields:

- bond_pricing_calculation_id
- bond_type
- issuer_scope_type
- issuer_scope_id
- face_value
- coupon_value where applicable
- yield_value
- spread_value where applicable
- price_value
- recalculated_at


# ============================================================
# 5. FX RATE ENTITY
# ============================================================

FXRateCalculation

Recommended fields:

- fx_rate_calculation_id
- base_currency_code
- quote_currency_code
- prior_rate
- interest_diff_factor
- inflation_diff_factor
- trade_balance_factor
- capital_flow_factor
- risk_diff_factor
- sentiment_factor
- fx_rate_value
- recalculated_at


# ============================================================
# 6. STATE RATING ENTITY
# ============================================================

StateRatingCalculation

Recommended fields:

- state_rating_calculation_id
- state_id
- fiscal_strength
- gdp_growth_strength
- external_balance_strength
- currency_stability
- political_stability
- reserve_strength
- debt_burden
- war_risk
- epidemic_risk
- famine_risk
- rating_score
- rating_band
- recalculated_at


# ============================================================
# 7. COMPANY RATING ENTITY
# ============================================================

CompanyRatingCalculation

Recommended fields:

- company_rating_calculation_id
- company_id
- profitability
- cash_flow_strength
- liquidity_strength
- market_position
- governance_strength
- leverage
- earnings_volatility
- industry_risk
- country_risk
- rating_score
- rating_band
- recalculated_at


# ============================================================
# 8. FINAL RULE
# ============================================================

Pricing and rating calculation models must remain:

- entity-distinct
- factor-readable
- market-compatible
- rating-compatible


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.economic-calculation/3930003_MACRO_INDICATOR_CALCULATION_MODEL.md
# ============================================================

# ============================================================
# MACRO INDICATOR CALCULATION MODEL
# ============================================================

status: canonical
layer: model
scope: macro-indicator-calculation-model
component: macro-indicator-calculation-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the model posture
for unemployment, consumption propensity,
GDP, machinery orders,
and related macro-indicator calculation.


# ============================================================
# 2. UNEMPLOYMENT ENTITY
# ============================================================

UnemploymentCalculation

Recommended fields:

- unemployment_calculation_id
- subject_scope_type
- subject_scope_id
- employed_count
- unemployed_count
- labor_force_count
- unemployment_rate
- recalculated_at


# ============================================================
# 3. CONSUMPTION PROPENSITY ENTITY
# ============================================================

ConsumptionPropensityCalculation

Recommended fields:

- consumption_propensity_calculation_id
- subject_scope_type
- subject_scope_id
- consumption_value
- disposable_income_value
- apc_value
- mpc_value where applicable
- confidence_factor where applicable
- recalculated_at


# ============================================================
# 4. GDP ENTITY
# ============================================================

GDPCalculation

Recommended fields:

- gdp_calculation_id
- subject_scope_type
- subject_scope_id
- consumption_component
- investment_component
- government_component
- export_component
- import_component
- gdp_value
- recalculated_at


# ============================================================
# 5. MACHINERY ORDER ENTITY
# ============================================================

MachineryOrderCalculation

Recommended fields:

- machinery_order_calculation_id
- subject_scope_type
- subject_scope_id
- base_demand
- capacity_expansion_factor
- profit_expectation_factor
- interest_rate_factor
- confidence_factor
- machinery_order_value
- recalculated_at


# ============================================================
# 6. FINAL RULE
# ============================================================

Macro-indicator calculation models must remain:

- indicator-distinct
- factor-readable
- macro-compatible
- period-aware


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.field-nation-cross-integration/3930101_FIELD_TO_NATION_CANONICAL_SEQUENCE_MODEL.md
# ============================================================

# ============================================================
# FIELD TO NATION CANONICAL SEQUENCE MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-cross-integration
component: field-to-nation-canonical-sequence

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CANONICAL SEQUENCE
# ============================================================

canonical_sequence:
- user_selects_target_lot
- user_selects_facility_type
- placement_validation_runs
- build_confirmation_opens
- build_execution_commits
- facility_construction_state_updates
- facility_open_state_updates
- nation_linkage_executes
- nation_aggregate_updates
- nation_ui_surfaces_refresh


# ============================================================
# 2. FINAL RULE
# ============================================================

The same canonical sequence
must be reusable for add,
remove,
replace,
suspend,
and reopen flows.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.field-nation-cross-integration/3930102_FACILITY_ACTION_TO_NATION_UI_BINDING_MODEL.md
# ============================================================

# ============================================================
# FACILITY ACTION TO NATION UI BINDING MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-cross-integration
component: facility-action-to-nation-ui-binding

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ACTION TYPES
# ============================================================

action_types:
- add_facility
- remove_facility
- replace_facility
- suspend_facility
- reopen_facility


# ============================================================
# 2. UI TARGETS
# ============================================================

ui_targets:
- nation_builder_metric_panel
- nation_overview_metric_card
- nation_detail_metric_drilldown
- nation_comparison_metric_view
- nation_preview_projected_delta


# ============================================================
# 3. BINDING RULES
# ============================================================

binding_rules:
- add_facility may affect builder preview and nation detail
- remove_facility may affect builder preview and nation detail
- replace_facility may affect preview, detail, and comparison
- suspend_facility may affect overview and detail
- reopen_facility may affect overview and detail


# ============================================================
# 4. FINAL RULE
# ============================================================

Every meaningful facility action
must know where its nation-side consequence appears.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.field-nation-cross-integration/3930103_NATION_PREVIEW_SOURCE_OF_TRUTH_MODEL.md
# ============================================================

# ============================================================
# NATION PREVIEW SOURCE OF TRUTH MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-cross-integration
component: nation-preview-source-of-truth

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PREVIEW SOURCES
# ============================================================

preview_sources:
- current_field_state
- current_facility_state
- current_nation_aggregate
- candidate_facility_action
- projected_metric_evaluation


# ============================================================
# 2. RULES
# ============================================================

rules:
- preview must not use already-updated nation values as if they were projected values
- preview must evaluate candidate action against current committed state
- preview must distinguish current_value from projected_value
- preview must remain invalidated if target lot context changes


# ============================================================
# 3. FINAL RULE
# ============================================================

Preview must be counterfactual,
not post-hoc.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.field-nation-cross-integration/3930104_CROSS_LAYER_REFRESH_MODEL.md
# ============================================================

# ============================================================
# CROSS LAYER REFRESH MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-cross-integration
component: cross-layer-refresh

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REFRESH TARGETS
# ============================================================

refresh_targets:
- field_map_surface
- facility_overview_surface
- construction_status_surface
- nation_builder_surface
- nation_overview_surface
- nation_detail_surface
- nation_comparison_surface


# ============================================================
# 2. REFRESH RULES
# ============================================================

refresh_rules:
- field map refresh must preserve map context and filters
- nation builder refresh must preserve selected nation context
- nation detail refresh must preserve active drilldown if possible
- comparison refresh may defer until comparison surface is opened
- preview refresh must invalidate stale projections


# ============================================================
# 3. FINAL RULE
# ============================================================

Refresh must preserve user context
while surfacing meaningful state change.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.field-nation-cross-integration/3930105_CROSS_LAYER_EXPLANATION_MODEL.md
# ============================================================

# ============================================================
# CROSS LAYER EXPLANATION MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-cross-integration
component: cross-layer-explanation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. REQUIRED EXPLANATION THEMES
# ============================================================

required_explanation_themes:
- why_this_facility_changes_this_metric
- why_this_district_changes_nation_score
- why_preview_differs_from_current_state
- why_removed_facility_lowered_coverage
- why_anchor_facility_has_larger_effect
- why_suspension_reduces_but_does_not_delete_history


# ============================================================
# 2. FINAL RULE
# ============================================================

Cross-layer explanation
must connect local action
to nation-visible consequence
in user-readable terms.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.field-nation-cross-integration/3930106_CROSS_LAYER_AUDIT_TRACE_MODEL.md
# ============================================================

# ============================================================
# CROSS LAYER AUDIT TRACE MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-cross-integration
component: cross-layer-audit-trace

owner: Boss
prepared_by: Zero


# ============================================================
# 1. TRACE FIELDS
# ============================================================

trace_fields:
- trace_id
- source_facility_event_id
- source_facility_id
- source_facility_type
- source_action_type
- nation_id
- metric_target_set
- aggregate_update_id
- ui_refresh_target_set
- recorded_at


# ============================================================
# 2. FINAL RULE
# ============================================================

Audit trace must connect
facility action,
nation update,
and UI refresh
inside one explainable chain.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.field-nation-cross-integration/3930107_CROSS_LAYER_FAILURE_AND_FALLBACK_MODEL.md
# ============================================================

# ============================================================
# CROSS LAYER FAILURE AND FALLBACK MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-cross-integration
component: cross-layer-failure-and-fallback

owner: Boss
prepared_by: Zero


# ============================================================
# 1. FAILURE TYPES
# ============================================================

failure_types:
- facility_event_missing_context
- nation_linkage_skipped
- aggregate_update_failed
- preview_evaluation_failed
- ui_refresh_deferred
- metric_target_unknown


# ============================================================
# 2. FALLBACK RULES
# ============================================================

fallback_rules:
- facility state remains committed even if nation UI refresh is deferred
- failed preview must degrade to no-preview notice rather than false projection
- aggregate update failure must be audit-visible
- missing metric target must not silently invent a mapping


# ============================================================
# 3. FINAL RULE
# ============================================================

Cross-layer failure handling
must protect consistency
before convenience.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/393.field-nation-cross-integration/3930108_FIELD_NATION_CROSS_INTEGRATION_CODE_MODEL.md
# ============================================================

# ============================================================
# FIELD NATION CROSS INTEGRATION CODE MODEL
# ============================================================

status: canonical
layer: model
scope: field-nation-cross-integration
component: field-nation-cross-integration-code

owner: Boss
prepared_by: Zero


# ============================================================
# 1. EXECUTION CODES
# ============================================================

execution_codes:
- FNC-001 sequence_started
- FNC-002 field_commit_completed
- FNC-003 nation_link_completed
- FNC-004 nation_aggregate_completed
- FNC-005 nation_ui_refresh_completed
- FNC-006 preview_evaluated
- FNC-007 preview_invalidated
- FNC-008 fallback_applied


# ============================================================
# 2. FINAL RULE
# ============================================================

Cross-integration codes must remain stable
for audit, debugging, and UI summary support.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/393.economic-calculation/3930001_ECONOMIC_AND_FINANCIAL_CALCULATION_IMPLEMENTATION.md
# ============================================================

# ============================================================
# ECONOMIC AND FINANCIAL CALCULATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: economic-and-financial-calculation-implementation
component: economic-and-financial-calculation-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the shared implementation posture
for economic, pricing, rating,
and macro-indicator calculation
inside Civilization.

This document must align with:

- ECONOMIC_AND_FINANCIAL_CALCULATION_ARCHITECTURE
- ECONOMIC_AND_FINANCIAL_CALCULATION_MODEL
- existing land_value_profile concepts
- existing stock / bond / fx / GDP concepts


# ============================================================
# 2. SHARED IMPLEMENTATION PHASES
# ============================================================

All economic calculation families
should follow this high-level order.

Phase 1:
collect factors

Phase 2:
normalize factor posture

Phase 3:
apply family-specific weighting

Phase 4:
compute raw value

Phase 5:
apply smoothing where required

Phase 6:
update trend or band posture

Phase 7:
persist calculation result


# ============================================================
# 3. SMOOTHING RULE
# ============================================================

To avoid unstable simulation spikes,
economic values may use smoothing such as:

X(t+1) = (1 - λ) * X(t) + λ * X_new

where:

- X(t) is prior value
- X_new is newly computed value
- λ is smoothing weight

This rule is especially useful for:

- land prices
- FX
- stock prices
- macro indicators


# ============================================================
# 4. SHOCK AND STRUCTURAL SEPARATION RULE
# ============================================================

Implementation should distinguish between:

- structural factor
- cyclical factor
- shock factor

This improves stability and explainability.

Representative pattern:

X_change = StructuralTrend + CyclicalComponent + ShockComponent


# ============================================================
# 5. EXISTING-ASSET COMPATIBILITY RULE
# ============================================================

Where existing design already defines
profiles, markets, or simple formulas,
implementation must extend rather than replace.

Representative examples:

- land_value_profile remains valid as a profile layer
- stock market remains valid as market container
- bond market remains valid as instrument domain
- FX principle remains valid as governance layer
- GDP simple formula remains valid as fallback posture


# ============================================================
# 6. FINAL RULE
# ============================================================

Shared economic implementation must remain:

- additive
- factor-readable
- smoothing-capable
- shock-aware
- compatible with existing calculation-adjacent assets


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/393.economic-calculation/3930002_PRICING_AND_RATING_CALCULATION_IMPLEMENTATION.md
# ============================================================

# ============================================================
# PRICING AND RATING CALCULATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: pricing-and-rating-calculation-implementation
component: pricing-and-rating-calculation-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation formulas
for land price, stock price,
bond pricing, FX rate movement,
and state / company rating
inside Civilization.

This document supplements existing market assets
without replacing them.


# ============================================================
# 2. LAND PRICE CALCULATION
# ============================================================

Representative land-price formula:

LandPrice(a,t)
=
BaseLandPrice(a)
× LocationFactor(a,t)
× DemandFactor(a,t)
× GrowthExpectationFactor(a,t)
× InfrastructureFactor(a,t)
× RiskDiscountFactor(a,t)

Representative normalized index form:

LandPriceIndex
=
1
+ 0.25 × Accessibility
+ 0.20 × PopulationPressure
+ 0.20 × CommercialAttractiveness
+ 0.15 × IncomeLevel
+ 0.10 × DevelopmentExpectation
- 0.20 × RiskLevel

LandPrice
=
BaseLandPrice × max(0.2, LandPriceIndex)

Existing land_value_profile may be used
as a banding or profile overlay,
not a replacement for formula.


# ============================================================
# 3. STOCK PRICE CALCULATION
# ============================================================

Representative valuation form:

StockPrice(i,t)
=
EPS(i,t) × PER(i,t)

Representative PER form:

PER(i,t)
=
BasePER
× GrowthFactor
× StabilityFactor
× LiquidityFactor
× RatingFactor
× MarketSentimentFactor

Alternative required-return form:

StockPrice(i,t)
=
ExpectedEarnings(i,t+1) × (1 + GrowthExpectation(i,t))
/
RequiredReturn(i,t)

RequiredReturn(i,t)
=
RiskFreeRate(t)
+ EquityRiskPremium(t)
+ FirmSpecificRiskPremium(i,t)


# ============================================================
# 4. GOVERNMENT BOND CALCULATION
# ============================================================

Representative government-bond yield:

GovBondYield(c,t)
=
RiskFreeBase(t)
+ InflationExpectation(c,t)
+ FiscalRiskPremium(c,t)
+ CurrencyRiskPremium(c,t)
+ PoliticalRiskPremium(c,t)

Representative government-bond price:

GovBondPrice
=
Σ[ Coupon / (1 + Yield)^k ] + FaceValue / (1 + Yield)^n

Simplified index form may be used:

GovBondPriceIndex
=
1 / (1 + GovBondYield)


# ============================================================
# 5. CORPORATE BOND CALCULATION
# ============================================================

Representative corporate-bond yield:

CorpBondYield(i,t)
=
GovBondYield(c,t)
+ CreditSpread(i,t)

CreditSpread(i,t)
=
BaseSpread
+ DefaultRiskPremium(i,t)
+ LiquidityPremium(i,t)
+ IndustryRiskPremium(i,t)

Representative corporate-bond price:

CorpBondPrice
=
Σ[ Coupon / (1 + CorpBondYield)^k ] + FaceValue / (1 + CorpBondYield)^n


# ============================================================
# 6. FX RATE CALCULATION
# ============================================================

Representative FX movement formula:

FX(A/B,t+1)
=
FX(A/B,t)
×
(1 + Δr - Δπ + Δtrade + Δcapital - Δrisk + Δsentiment)

Expanded rate-of-change form:

(ΔFX / FX)
=
α × InterestDiff
- β × InflationDiff
+ γ × TradeBalanceStrength
+ δ × CapitalInflowStrength
- ε × CountryRiskDiff
+ ζ × MarketSentiment

Existing FX principle remains governance owner.
This formula is the quantitative movement layer.


# ============================================================
# 7. STATE RATING CALCULATION
# ============================================================

Representative state-rating score:

StateRatingScore
=
w1 × FiscalStrength
+ w2 × GDPGrowthStrength
+ w3 × ExternalBalanceStrength
+ w4 × CurrencyStability
+ w5 × PoliticalStability
+ w6 × ReserveStrength
- w7 × DebtBurden
- w8 × WarRisk
- w9 × EpidemicRisk
- w10 × FamineRisk

Representative rating-band conversion:

90+  = AAA
80+  = AA
70+  = A
60+  = BBB
50+  = BB
40+  = B
30+  = CCC
20+  = CC
10+  = C
below = D-equivalent


# ============================================================
# 8. COMPANY RATING CALCULATION
# ============================================================

Representative company-rating score:

CompanyRatingScore
=
a1 × Profitability
+ a2 × CashFlowStrength
+ a3 × LiquidityStrength
+ a4 × MarketPosition
+ a5 × GovernanceStrength
- a6 × Leverage
- a7 × EarningsVolatility
- a8 × IndustryRisk
- a9 × CountryRisk

Representative sovereign-adjusted posture:

AdjustedCorporateRating
=
f(CompanyStandaloneScore, SovereignConstraint)


# ============================================================
# 9. FINAL RULE
# ============================================================

Pricing and rating implementation must remain:

- formula-explicit
- additive to existing market assets
- smoothing-compatible
- cross-market-aware
- rating-aware


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/393.economic-calculation/3930003_MACRO_INDICATOR_CALCULATION_IMPLEMENTATION.md
# ============================================================

# ============================================================
# MACRO INDICATOR CALCULATION IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: macro-indicator-calculation-implementation
component: macro-indicator-calculation-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation formulas
for unemployment, consumption propensity,
GDP, machinery orders,
and related macro indicators
inside Civilization.

This document supplements existing GDP posture
without replacing it.


# ============================================================
# 2. UNEMPLOYMENT RATE CALCULATION
# ============================================================

Representative unemployment-rate formula:

UnemploymentRate(t)
=
UnemployedLaborForce(t) / LaborForce(t)

LaborForce(t)
=
Employed(t) + Unemployed(t)

Employment update posture:

Employed(t+1)
=
Employed(t)
+ NewHires(t)
- Separations(t)


# ============================================================
# 3. CONSUMPTION PROPENSITY CALCULATION
# ============================================================

Representative average propensity to consume:

APC(t)
=
Consumption(t) / DisposableIncome(t)

Representative marginal propensity to consume:

MPC(t)
=
ΔConsumption(t) / ΔDisposableIncome(t)

Representative group-adjusted form:

MPC(group)
=
BaseMPC
+ LowIncomeBoost
- HighWealthDiscount
- FearShock
+ ConfidenceBoost


# ============================================================
# 4. GDP CALCULATION
# ============================================================

Representative structured GDP formula:

GDP(t)
=
C(t) + I(t) + G(t) + (X(t) - M(t))

where:

C = household consumption
I = corporate investment + housing investment + infrastructure investment
G = government spending
X = exports
M = imports

Existing simple posture such as
User Consumption + Company Transactions
may remain as fallback or legacy-compatible simplification,
but structured GDP is preferred.


# ============================================================
# 5. MACHINERY ORDER CALCULATION
# ============================================================

Representative machinery-order formula:

MachineryOrders(t)
=
BaseDemand(t)
× CapacityExpansionFactor(t)
× ProfitExpectationFactor(t)
× InterestRateFactor(t)
× ConfidenceFactor(t)

Alternative capex-derived posture:

MachineryOrders(t)
=
Σ [ PlannedCapex(i,t) × EquipmentIntensity(i) ]

where:

PlannedCapex(i,t)
=
RevenueExpectation(i,t)
× CapacityNeed(i,t)
× Confidence(i,t)
× FinancingAvailability(i,t)


# ============================================================
# 6. RELATED COMMON UPDATE RULE
# ============================================================

Macro indicators may use smoothed update posture:

X(t+1)
=
(1 - λ) × X(t) + λ × X_new

This is recommended for:

- unemployment
- consumption propensity
- GDP growth posture
- machinery orders

to reduce extreme simulation instability.


# ============================================================
# 7. FINAL RULE
# ============================================================

Macro-indicator implementation must remain:

- formula-explicit
- GDP-compatible
- labor-aware
- consumption-aware
- investment-aware
- smoothing-compatible
