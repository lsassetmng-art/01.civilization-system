# ============================================================
# CIVILIZATION NATION BUILDER REGIME REQUIREMENT TABLE
# ============================================================

status: canonical
layer: 030.model
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official mandatory/optional requirement table
for regime bundles inside CivilizationOS nation builder.


# ============================================================
# 1. ALWAYS-MANDATORY REGIME BUNDLES
# ============================================================

mandatory_regime_bundles:

- identity_bundle
  reason:
  nation must have legal/display identity

- territory_bundle
  reason:
  nation must have territorial scope

- population_bundle
  reason:
  nation must have population baseline and composition

- currency_bundle
  reason:
  nation must define monetary baseline

- governance_bundle
  reason:
  nation must define authority structure

- company_regime_bundle
  reason:
  company creation/operation requires legal baseline

- property_regime_bundle
  reason:
  ownership, use, tenancy, transfer, and site logic depend on this

- tax_regime_bundle
  reason:
  economic and company activity requires tax basis

- public_service_baseline_bundle
  reason:
  service target structure is required for later facility validation

- zoning_bundle
  reason:
  company/site/store opening depends on zone compatibility

- notification_profile_bundle
  reason:
  opening/company/market/infrastructure notifications must be routed


# ============================================================
# 2. RECOMMENDED REGIME BUNDLES
# ============================================================

recommended_regime_bundles:

- welfare_regime_bundle
  reason:
  strongly affects nation operation and social profile

- education_regime_bundle
  reason:
  strongly affects child education and public-service profile

- military_regime_bundle
  reason:
  strongly affects security and military command profile

- culture_religion_value_bundle
  reason:
  strongly affects nation identity and operation flavor

- holiday_event_bundle
  reason:
  strongly affects scheduling, culture, and operations

- operating_profile_bundle
  reason:
  recommended for balancing and runtime interpretation

- initial_nation_frame_bundle
  reason:
  recommended for later initial data setup consistency


# ============================================================
# 3. OPTIONAL REGIME BUNDLES
# ============================================================

optional_regime_bundles:

- special_restriction_bundle
  reason:
  not every nation needs advanced exceptional restrictions

- ceremonial_protocol_bundle
  reason:
  useful for immersion but not always required

- advanced_symbolic_identity_bundle
  reason:
  recommended but can be initially light

- advanced_notification_routing_bundle
  reason:
  optional detail beyond baseline notification profile


# ============================================================
# 4. CONDITIONALLY MANDATORY REGIME BUNDLES
# ============================================================

conditional_mandatory_regime_bundles:

- banking_regime_bundle
  trigger:
  if nation enables bank services, loan services,
  deposit/payment rails, or finance-facing company operations
  severity:
  blocking_when_triggered

- securities_regime_bundle
  trigger:
  if nation enables listing style, market tiers,
  securities institutions, investment products, or securities trading
  severity:
  blocking_when_triggered

- listing_style_bundle
  trigger:
  if any company type is listing_eligible
  or any market tier is configured
  severity:
  blocking_when_triggered

- authority_seat_bundle
  trigger:
  if governance profile is enabled
  severity:
  blocking_when_triggered

- city_role_bundle
  trigger:
  if multi-city operational model is used
  or capital/sub-capital/core-city distinction is enabled
  severity:
  blocking_when_triggered

- religion_authority_bundle
  trigger:
  if governance_style_code is religious_state
  or religious authority is part of authority structure
  severity:
  blocking_when_triggered

- facility_placement_bundle
  trigger:
  if nation uses facility placement as active nation structure
  severity:
  blocking_when_triggered

- infrastructure_placement_bundle
  trigger:
  if nation uses infrastructure placement as active nation structure
  severity:
  blocking_when_triggered

- major_holiday_market_bundle
  trigger:
  if market holiday or exchange holiday behavior is enabled
  severity:
  blocking_when_triggered


# ============================================================
# 5. NATION-TYPE-SENSITIVE RECOMMENDATION TABLE
# ============================================================

nation_type_sensitive_recommendations:

democratic:
- governance_bundle: mandatory
- authority_seat_bundle: conditional_mandatory
- listing_style_bundle: recommended
- public_service_baseline_bundle: mandatory

military:
- military_regime_bundle: recommended_high
- authority_seat_bundle: conditional_mandatory
- public_service_baseline_bundle: mandatory

religious:
- culture_religion_value_bundle: recommended_high
- religion_authority_bundle: conditional_mandatory
- holiday_event_bundle: recommended_high

commercial:
- banking_regime_bundle: recommended_high
- securities_regime_bundle: recommended_high
- listing_style_bundle: recommended_high
- zoning_bundle: mandatory

education:
- education_regime_bundle: recommended_high
- public_service_baseline_bundle: mandatory
- city_role_bundle: recommended

culture:
- culture_religion_value_bundle: recommended_high
- holiday_event_bundle: recommended_high
- arts/opening-compatible zoning: recommended_high


# ============================================================
# 6. PUBLISH-BLOCKING SUMMARY
# ============================================================

publish_blocking_if_missing:
- identity_bundle
- territory_bundle
- population_bundle
- currency_bundle
- governance_bundle
- company_regime_bundle
- property_regime_bundle
- tax_regime_bundle
- public_service_baseline_bundle
- zoning_bundle
- notification_profile_bundle

publish_blocking_if_triggered_and_missing:
- banking_regime_bundle
- securities_regime_bundle
- listing_style_bundle
- authority_seat_bundle
- city_role_bundle
- religion_authority_bundle
- facility_placement_bundle
- infrastructure_placement_bundle
- major_holiday_market_bundle


# ============================================================
# 7. WARNING-ONLY SUMMARY
# ============================================================

warning_if_missing:
- welfare_regime_bundle
- education_regime_bundle
- military_regime_bundle
- culture_religion_value_bundle
- holiday_event_bundle
- operating_profile_bundle
- initial_nation_frame_bundle


# ============================================================
# 8. FINAL TABLE RULE
# ============================================================

This table is the official requirement table
for nation builder regime bundles in CivilizationOS.

Core summary:

- some regime bundles are always mandatory
- some are recommended but not blocking
- some become mandatory only when triggered
- validation severity must follow requirement level
