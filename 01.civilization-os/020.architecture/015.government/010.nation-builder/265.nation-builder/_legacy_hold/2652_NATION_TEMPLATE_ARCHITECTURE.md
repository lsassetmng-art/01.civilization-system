# ============================================================
# NATION TEMPLATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: nation-builder
component: nation-template

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

This document defines the official structure
of Nation Template used by Nation Builder.

Nation Template is not a nation instance.

Nation Template is a reusable structured preset
that provides default guidance for creating
a nation draft.

It is used to accelerate nation creation,
improve design coherence,
and standardize nation families.

Examples:
- commercial_nation_template
- education_nation_template
- military_nation_template
- culture_nation_template
- religion_nation_template
- hybrid_nation_template


# ============================================================
# 2. DESIGN PRINCIPLES
# ============================================================

Nation Template must follow these principles.

- template is guidance, not forced runtime reality
- template must be structured, not narrative-only
- template must support staged builder application
- template must remain nation-configurable after selection
- template must support conditional regimes
- template must support future preset families
- template must not hardcode nation instance identity


# ============================================================
# 3. ROLE OF NATION TEMPLATE
# ============================================================

Nation Template provides:

- recommended nation direction
- default regime assumptions
- default zoning assumptions
- default market structure assumptions
- recommended city role distribution
- facility and infrastructure priority guidance
- culture / religion / value posture
- public service baseline guidance
- notification profile defaults
- initial nation frame guidance

Nation Template does not directly publish or activate a nation.

A selected template produces a draft baseline
which remains editable.


# ============================================================
# 4. TEMPLATE LAYER MODEL
# ============================================================

Nation Template consists of the following logical layers.

- metadata layer
- identity recommendation layer
- governance recommendation layer
- regime default layer
- market default layer
- zoning default layer
- city / territory recommendation layer
- facility / infrastructure priority layer
- population / industry profile layer
- culture / religion / value layer
- public service / holiday layer
- notification layer
- initial nation frame layer


# ============================================================
# 5. CORE TEMPLATE STRUCTURE
# ============================================================

A Nation Template should contain the following
logical fields.

## 5-1. metadata
- template_code
- template_name
- template_category
- template_summary
- difficulty_code
- core_value_tags

## 5-2. recommended identity
- recommended_nation_type
- symbolic_style_summary
- map_color_style_summary

## 5-3. governance recommendation
- recommended_governance_style
- recommended_authority_model
- authority_seat_guidance

## 5-4. regime defaults
- property_regime_profile
- tax_regime_profile
- company_regime_profile
- banking_regime_profile
- securities_regime_profile
- welfare_regime_profile
- education_regime_profile
- military_regime_profile

## 5-5. market defaults
- listing_system_style
- default_market_tiers
- listing_eligible_company_type_scope

## 5-6. zoning defaults
- default_zone_types
- recommended_company_type_allowances
- recommended_site_type_allowances
- recommended_zone_restrictions

## 5-7. city / territory recommendation
- recommended_major_city_roles
- capital_required_facilities
- territory_shape_summary

## 5-8. facility / infrastructure priority
- facility_priority_summary
- infrastructure_priority_summary

## 5-9. population / industry profile
- population_profile_summary
- priority_industries
- workforce_profile_summary

## 5-10. public service baseline
- public_service_baseline_targets

## 5-11. culture / religion / value
- culture_summary
- religion_summary
- three_gods_relation_summary
- social_value_tags

## 5-12. holiday / event
- holiday_event_profile

## 5-13. notification
- notification_profile

## 5-14. initial frame
- initial_nation_frame_summary


# ============================================================
# 6. REQUIRED VS OPTIONAL FIELDS
# ============================================================

## 6-1. always required
The following fields are always required.

- template_code
- template_name
- template_category
- template_summary
- recommended_nation_type
- recommended_governance_style
- difficulty_code
- core_value_tags
- property_regime_profile
- tax_regime_profile
- company_regime_profile
- default_zone_types
- priority_industries
- public_service_baseline_targets
- notification_profile
- initial_nation_frame_summary

## 6-2. conditionally required
The following fields are conditionally required.

- banking_regime_profile
  when the template assumes banking availability

- securities_regime_profile
  when the template assumes listing or securities market participation

- listing_system_style
  when the template supports public listing

- default_market_tiers
  when listing_system_style is enabled

- religion_summary
  when religion is a major template pillar

- three_gods_relation_summary
  when mythological alignment is structurally relevant

- capital_required_facilities
  when capital specialization is explicitly defined

## 6-3. recommended
The following are recommended for all major templates.

- recommended_authority_model
- authority_seat_guidance
- recommended_major_city_roles
- facility_priority_summary
- infrastructure_priority_summary
- workforce_profile_summary
- holiday_event_profile
- social_value_tags


# ============================================================
# 7. TEMPLATE CATEGORY MODEL
# ============================================================

Official template families currently planned:

- commercial_nation_template
- education_nation_template
- military_nation_template
- culture_nation_template
- religion_nation_template
- hybrid_nation_template

## 7-1. commercial_nation_template
Primary orientation:
- market
- trade
- commerce
- business density

Typical emphasis:
- commercial zones
- office zones
- strong retail and finance posture
- broader listing readiness

## 7-2. education_nation_template
Primary orientation:
- schools
- research
- learning systems
- child education posture

Typical emphasis:
- education zones
- school sites
- curriculum and program economy

## 7-3. military_nation_template
Primary orientation:
- defense
- authority concentration
- strategic logistics
- readiness

Typical emphasis:
- military regime
- transport and logistics infrastructure
- stronger authority modeling

## 7-4. culture_nation_template
Primary orientation:
- art
- literature
- performance
- exhibition
- cultural prestige

Typical emphasis:
- arts zones
- galleries
- studios
- screening and exhibition support

## 7-5. religion_nation_template
Primary orientation:
- doctrine
- temple operations
- ritual systems
- religious social order

Typical emphasis:
- religious zones
- temple sites
- religion authority relation
- donation and event posture

## 7-6. hybrid_nation_template
Primary orientation:
- mixed strategic balance

Typical emphasis:
- multiple industry axes
- mixed-use zoning
- multi-tier governance and market blending


# ============================================================
# 8. GOVERNANCE RECOMMENDATION MODEL
# ============================================================

A template may recommend governance,
but it must not lock governance irreversibly.

Recommended governance section should include:

- governance_style_code
- authority_distribution_summary
- authority_seat_recommendation
- review_notes
- configuration_flexibility_notes

Templates may indicate:

- strongly recommended
- recommended
- optional
- not recommended


# ============================================================
# 9. REGIME DEFAULT MODEL
# ============================================================

A template should define default posture
for major regime bundles.

Each regime profile should communicate:

- baseline posture
- strictness level
- whether customization is expected
- whether omission is allowed
- whether additional review is recommended

Typical regime posture attributes:

- minimal
- moderate
- structured
- strict
- state_guided
- open_market
- mixed


# ============================================================
# 10. MARKET DEFAULT MODEL
# ============================================================

Templates that support public market structure
should define:

- listing_system_style
- market_tier posture
- threshold strictness
- listing eligible company type scope
- whether state-guided review exists

The market definition in template is advisory.
Nation instance may override it.


# ============================================================
# 11. ZONING DEFAULT MODEL
# ============================================================

Template zoning section should define:

- recommended zone families
- recommended company type allowances
- recommended site/store type allowances
- recommended restrictions
- expected compatibility style

Each zone recommendation may include:

- zone_type
- preferred density style
- openness level
- event allowance summary
- religious activity posture
- public access posture


# ============================================================
# 12. CITY ROLE MODEL
# ============================================================

Templates may recommend city role distribution.

Examples:
- capital_city
- sub_capital_city
- industrial_core_city
- logistics_core_city
- culture_core_city
- education_core_city
- religion_core_city
- finance_core_city

A template may specify:
- mandatory city role
- recommended city role
- optional city role

It must remain valid even if the nation
starts with a minimal city set.


# ============================================================
# 13. FACILITY / INFRASTRUCTURE PRIORITY MODEL
# ============================================================

Templates do not place exact facilities directly.
They provide priority guidance.

Facility guidance should indicate:
- required in capital
- recommended in major city
- optional by growth stage

Infrastructure guidance should indicate:
- strategic priority
- economic priority
- social priority
- redundancy expectation

Examples:
- rail priority high
- port priority medium
- airport priority optional
- communications priority high


# ============================================================
# 14. POPULATION / INDUSTRY PROFILE MODEL
# ============================================================

Population profile should summarize:

- workforce emphasis
- family / education orientation
- migration openness
- urban density tendency
- service composition tendency

Industry profile should summarize:

- primary industries
- secondary industries
- strategic industries
- discouraged industries if relevant

This section is recommendation only,
not fixed runtime population data.


# ============================================================
# 15. CULTURE / RELIGION / VALUE MODEL
# ============================================================

Template cultural section should communicate
nation-building tone.

This may include:

- cultural identity orientation
- religion centrality
- value tags
- mythological relation summary
- social cohesion posture
- celebration posture

For religion-centered templates,
religion authority linkage should be explicit.


# ============================================================
# 16. PUBLIC SERVICE / HOLIDAY MODEL
# ============================================================

Templates should define recommended
public service baseline targets.

Typical baseline dimensions:
- education
- health
- safety
- transport
- welfare
- cultural access

Holiday profile may include:
- holiday density
- state ceremony posture
- cultural event posture
- market holiday interaction posture


# ============================================================
# 17. NOTIFICATION PROFILE MODEL
# ============================================================

Notification profile should define
administrative visibility posture.

Examples:
- high visibility governance alerts
- moderate market activity alerts
- low-noise citizen-facing posture
- detailed facility incident reporting

This section affects dashboard defaults,
not core nation validity by itself.


# ============================================================
# 18. INITIAL NATION FRAME MODEL
# ============================================================

Initial nation frame summarizes the intended
starting condition of a nation created
from this template.

It may include:
- startup maturity posture
- economic maturity posture
- infrastructure maturity posture
- governance maturity posture
- public service maturity posture
- market maturity posture

This is a guidance frame,
not a hard-coded initial snapshot.


# ============================================================
# 19. TEMPLATE APPLICATION RULE
# ============================================================

When a template is applied:

- a nation draft baseline is generated
- editable fields remain editable
- mandatory instance identity is still required
- unresolved conditional requirements remain subject to validation
- template omission does not bypass mandatory nation rules

Template application must never skip
Nation Builder validation.


# ============================================================
# 20. OFFICIAL TEMPLATE SKELETON
# ============================================================

The following is the official logical skeleton.

template_code:
template_name:
template_category:
template_summary:

recommended_nation_type:
recommended_governance_style:
difficulty_code:
core_value_tags:

property_regime_profile:
tax_regime_profile:
company_regime_profile:
banking_regime_profile:
securities_regime_profile:
welfare_regime_profile:
education_regime_profile:
military_regime_profile:

listing_system_style:
default_market_tiers:
listing_eligible_company_type_scope:

default_zone_types:
recommended_company_type_allowances:
recommended_site_type_allowances:
recommended_zone_restrictions:

recommended_major_city_roles:
capital_required_facilities:
facility_priority_summary:
infrastructure_priority_summary:

population_profile_summary:
priority_industries:
workforce_profile_summary:
public_service_baseline_targets:

culture_summary:
religion_summary:
three_gods_relation_summary:
social_value_tags:
holiday_event_profile:

notification_profile:
initial_nation_frame_summary:


# ============================================================
# 21. EXTENSIBILITY RULE
# ============================================================

Nation Template may be expanded later,
but expansion must preserve:

- structural compatibility
- field stability
- category clarity
- conditional requirement clarity
- separation between template guidance and nation instance data


# ============================================================
# 22. FINAL RULE
# ============================================================

Nation Template is an architectural preset system.

It standardizes nation creation,
but it does not replace nation validation,
nation approval,
or nation-specific policy responsibility.
