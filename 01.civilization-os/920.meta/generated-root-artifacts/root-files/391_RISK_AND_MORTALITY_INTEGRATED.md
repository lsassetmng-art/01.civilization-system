# ============================================================
# 391 RISK AND MORTALITY INTEGRATED
# ============================================================

status: canonical
type: integrated
owner: Boss
prepared_by: Zero

# ============================================================
# SOURCE FILES
# ============================================================
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/391.nation-facility-aggregate/3910001_NATION_FACILITY_AGGREGATE_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/391.risk-and-mortality/3910001_CIVILIZATION_RISK_AND_MORTALITY_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/391.risk-and-mortality/3910002_WAR_PROBABILITY_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/391.risk-and-mortality/3910003_EPIDEMIC_PROBABILITY_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/391.risk-and-mortality/3910004_FAMINE_PROBABILITY_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/391.risk-and-mortality/3910005_MORTALITY_PROBABILITY_ARCHITECTURE.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.nation-facility-aggregate/3910101_NATION_SERVICE_COVERAGE_UI_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.nation-facility-aggregate/3910102_NATION_INFRASTRUCTURE_AND_MARKET_METRIC_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.nation-facility-aggregate/3910103_NATION_CITY_DISTRICT_ROLLUP_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.nation-facility-aggregate/3910104_NATION_FACILITY_METRIC_PREVIEW_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.nation-facility-aggregate/3910105_NATION_AGGREGATE_VISIBILITY_RULE_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.risk-and-mortality/3910001_CIVILIZATION_RISK_AND_MORTALITY_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.risk-and-mortality/3910002_WAR_PROBABILITY_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.risk-and-mortality/3910003_EPIDEMIC_PROBABILITY_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.risk-and-mortality/3910004_FAMINE_PROBABILITY_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.risk-and-mortality/3910005_MORTALITY_PROBABILITY_MODEL.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/391.risk-and-mortality/3910001_CIVILIZATION_RISK_AND_MORTALITY_IMPLEMENTATION.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/391.risk-and-mortality/3910002_WAR_PROBABILITY_IMPLEMENTATION.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/391.risk-and-mortality/3910003_EPIDEMIC_PROBABILITY_IMPLEMENTATION.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/391.risk-and-mortality/3910004_FAMINE_PROBABILITY_IMPLEMENTATION.md
/data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/391.risk-and-mortality/3910005_MORTALITY_PROBABILITY_IMPLEMENTATION.md



# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/391.nation-facility-aggregate/3910001_NATION_FACILITY_AGGREGATE_ARCHITECTURE.md
# ============================================================

# ============================================================
# NATION FACILITY AGGREGATE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: nation-facility-aggregate
component: nation-facility-aggregate

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical aggregate architecture
for nation-side metrics derived
from field-map facility state.

This architecture defines:

- nation service coverage aggregation
- infrastructure and market metric aggregation
- city and district rollup structure
- nation UI exposure
- nation preview exposure


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Nation aggregation must convert
facility presence and facility state
into nation-readable metrics.

The user must be able to understand:

- what services the nation has
- where coverage is strong or weak
- how infrastructure has developed
- whether market and civic visibility are improving


# ============================================================
# 3. REQUIRED SUBSYSTEMS
# ============================================================

This layer must include:

- Nation Service Coverage UI Model
- Nation Infrastructure and Market Metric Model
- Nation City District Rollup Model
- Nation Facility Metric Preview Model


# ============================================================
# 4. FINAL RULE
# ============================================================

Nation aggregation must make
facility impact visible at state scale
without exposing low-level map noise directly.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/391.risk-and-mortality/3910001_CIVILIZATION_RISK_AND_MORTALITY_ARCHITECTURE.md
# ============================================================

# ============================================================
# CIVILIZATION RISK AND MORTALITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: civilization-risk-and-mortality
component: civilization-risk-and-mortality

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for major-risk probability calculation
and mortality probability calculation
inside Civilization.

This document covers
the upper architecture for:

- war probability
- epidemic probability
- famine probability
- mortality probability

This document defines:

- architectural separation
- probability family boundaries
- input domain categories
- calculation hierarchy
- visibility boundaries
- event connection points

This document does not define:

- exact formulas
- exact coefficients
- exact data schemas
- UI field-level contracts
- implementation-specific random mechanics


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Civilization must support
structured probability calculation
for major civilization risks.

At minimum,
the system must support
independent but connectable calculation families for:

- war
- epidemic
- famine
- mortality

These probability families must not be collapsed
into a single opaque risk number only.

Each family must remain:

- independently explainable
- independently tunable
- independently visible where required
- composable into higher-level civilization risk views


# ============================================================
# 3. ARCHITECTURAL POSITION
# ============================================================

Risk and mortality architecture
belongs to the world simulation side
of Civilization.

It interacts with:

- world model
- geography
- states
- cities
- districts
- population
- economy
- food systems
- military systems
- health systems
- disaster systems
- event systems

It may influence UI visibility,
but UI is not the owner of risk truth.

It may influence runtime behavior,
but runtime does not define architectural boundaries.


# ============================================================
# 4. PROBABILITY FAMILY SEPARATION
# ============================================================

The following families must remain distinct.

1. war probability
2. epidemic probability
3. famine probability
4. mortality probability

War probability is not the same as
general unrest probability.

Epidemic probability is not the same as
general health burden only.

Famine probability is not the same as
general poverty only.

Mortality probability is not the same as
a single undifferentiated death flag.

The system must preserve
cause-sensitive separation.


# ============================================================
# 5. CALCULATION LEVELS
# ============================================================

Probability calculation must support
multiple spatial and societal levels.

At minimum:

- world level
- continent level where applicable
- state level
- city level
- district level
- population-group level where applicable
- individual level where applicable

Not every probability family
must calculate in exactly the same way
at every level,
but the architecture must support
level-aware calculation.


# ============================================================
# 6. INPUT FACTOR CATEGORIES
# ============================================================

Major-risk probability families
must be allowed to consume
multiple categories of input factors.

Representative categories include:

- geography
- climate
- seasonality
- food production
- food reserves
- infrastructure condition
- sanitation and hygiene
- medical capacity
- population density
- crowding
- mobility and transport
- state relations
- military posture
- resource competition
- alliance structure
- internal instability
- economic stress
- historical memory
- prior event history

This document does not fix
the final field list.

It fixes the architectural allowance
for multi-domain inputs.


# ============================================================
# 7. OUTPUT STRUCTURE
# ============================================================

Each risk family must support
at minimum the following outputs.

- current probability posture
- directional trend where supported
- severity band where supported
- active factor visibility where supported
- downstream event eligibility where supported

The system may also support:

- forecast windows
- risk category summaries
- localized hot-spot outputs
- causal explanation summaries

Outputs must be usable by:

- runtime
- UI visibility layers
- alert systems
- policy systems
- simulation observers


# ============================================================
# 8. EVENT RELATION
# ============================================================

Probability calculation is not identical to event execution.

The architecture must distinguish between:

- risk probability
- event trigger eligibility
- event execution
- post-event aftermath

A high probability does not necessarily mean
an event has occurred.

An executed event may change
future probability calculations.

Risk and event layers must remain connected
but not collapsed.


# ============================================================
# 9. MORTALITY ARCHITECTURE POSITION
# ============================================================

Mortality probability is the upper death-risk family.

Mortality must not be modeled
only as a single flat chance.

The architecture should allow
cause-sensitive mortality branches such as:

- natural mortality
- epidemic mortality
- famine mortality
- war mortality
- disaster mortality
- security-related mortality where applicable

A final mortality posture
may aggregate multiple causes,
but cause-level distinction must remain possible.


# ============================================================
# 10. UI VISIBILITY BOUNDARY
# ============================================================

Risk truth may be partially visible in UI.

Representative visibility targets include:

- global map
- continent map
- state information
- city information
- district detail
- facility overview where relevant
- issue and alert surfaces
- policy and authority surfaces

However,
UI visibility must remain a consumer
of risk architecture,
not the owner of risk truth.


# ============================================================
# 11. RUNTIME VISIBILITY BOUNDARY
# ============================================================

Runtime may use risk outputs for:

- event scheduling
- alert generation
- trend recalculation
- simulation steering
- intervention recommendation

However,
runtime must not redefine
the structural separation
between war, epidemic, famine, and mortality.


# ============================================================
# 12. POLICY RELATION
# ============================================================

Risk architecture may be affected by policy,
but must not be replaced by policy.

Policy may:

- reduce or increase risk
- shift thresholds
- improve resilience
- alter preparedness

But policy is one input family,
not the risk family itself.


# ============================================================
# 13. REQUIRED CHILD ARCHITECTURES
# ============================================================

This document requires child architectures for:

- WAR_PROBABILITY_ARCHITECTURE
- EPIDEMIC_PROBABILITY_ARCHITECTURE
- FAMINE_PROBABILITY_ARCHITECTURE
- MORTALITY_PROBABILITY_ARCHITECTURE


# ============================================================
# 14. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture should be followed by:

- model documents for risk factors and outputs
- runtime documents for recalculation timing and triggers
- implementation documents for formulas and weighting
- interface documents for visibility exposure where needed

The exact layer split may evolve,
but the separation principle must remain fixed.


# ============================================================
# 15. FINAL RULE
# ============================================================

Civilization major-risk architecture must remain:

- multi-family
- cause-sensitive
- level-aware
- event-connected
- UI-consumable
- runtime-consumable
- structurally explainable

War, epidemic, famine, and mortality
must remain distinct architectural families.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/391.risk-and-mortality/3910002_WAR_PROBABILITY_ARCHITECTURE.md
# ============================================================

# ============================================================
# WAR PROBABILITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: war-probability
component: war-probability

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for war probability calculation
inside Civilization.

This document defines
the probability family
for interstate and polity-level war risk.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

War probability is the architectural family
that estimates the likelihood
of armed interstate or polity conflict
becoming eligible for escalation.

War probability is not identical to:

- diplomacy score
- local crime
- social unrest
- military strength alone

War probability must remain
a conflict-escalation family.


# ============================================================
# 3. CALCULATION LEVELS
# ============================================================

War probability should support
at minimum:

- state-to-state level
- regional level
- continent-level tension posture where applicable
- world-level aggregated war pressure where applicable

War probability may also feed
city and district visibility indirectly,
but its primary calculation is above facility scale.


# ============================================================
# 4. INPUT FACTOR CATEGORIES
# ============================================================

Representative war probability inputs include:

- territorial contact
- border pressure
- resource competition
- alliance structure
- military readiness
- military imbalance
- political hostility
- diplomatic deterioration
- historical grievances
- recent incidents
- internal instability
- economic stress
- strategic chokepoints
- prior wars or unresolved outcomes

This document does not define coefficients,
only input-family legitimacy.


# ============================================================
# 5. OUTPUTS
# ============================================================

War probability outputs may include:

- bilateral war probability posture
- regional escalation posture
- strategic risk band
- tension trend
- war-eligible state where supported
- local visibility summary for affected areas


# ============================================================
# 6. EVENT RELATION
# ============================================================

War probability must connect to:

- diplomatic incident events
- border incident events
- mobilization events
- war declaration eligibility
- post-war cooling or escalation loops

Probability does not equal war execution.

Execution remains downstream.


# ============================================================
# 7. VISIBILITY
# ============================================================

War probability may be surfaced in:

- state information
- continent map overlays where supported
- authority dashboards
- strategic alert systems
- city or district warning context where exposure matters


# ============================================================
# 8. FINAL RULE
# ============================================================

War probability architecture must remain:

- interstate-centered
- escalation-aware
- diplomacy-connected
- military-aware
- resource-aware
- event-connected
- distinct from unrest-only models


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/391.risk-and-mortality/3910003_EPIDEMIC_PROBABILITY_ARCHITECTURE.md
# ============================================================

# ============================================================
# EPIDEMIC PROBABILITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: epidemic-probability
component: epidemic-probability

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for epidemic probability calculation
inside Civilization.

This document defines
the probability family
for outbreak, spread, and epidemic escalation risk.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

Epidemic probability is the architectural family
that estimates the likelihood
of disease outbreak or spread escalation
becoming eligible in a population area.

Epidemic probability is not identical to:

- hospital load alone
- sanitation score alone
- mortality probability alone

It must remain
a disease-spread probability family.


# ============================================================
# 3. CALCULATION LEVELS
# ============================================================

Epidemic probability should support
at minimum:

- state level
- city level
- district level
- population-group level where applicable

It may aggregate upward
to continent or world posture
for broad warning visibility.


# ============================================================
# 4. INPUT FACTOR CATEGORIES
# ============================================================

Representative epidemic probability inputs include:

- population density
- crowding
- sanitation
- hygiene
- clean water availability
- medical capacity
- transport and mobility
- climate
- seasonality
- food condition where relevant
- prior outbreak history
- current health burden
- containment posture
- quarantine effectiveness where applicable

This document does not define coefficients,
only input-family legitimacy.


# ============================================================
# 5. OUTPUTS
# ============================================================

Epidemic probability outputs may include:

- outbreak probability posture
- spread probability posture
- hotspot visibility
- public-health risk band
- trend posture
- event-eligible outbreak state where supported


# ============================================================
# 6. EVENT RELATION
# ============================================================

Epidemic probability must connect to:

- outbreak events
- spread events
- containment events
- medical overload events
- recovery or suppression events

Probability does not equal outbreak execution.

Execution remains downstream.


# ============================================================
# 7. VISIBILITY
# ============================================================

Epidemic probability may be surfaced in:

- state information
- city information
- district detail
- hospital and health-support visibility
- alert systems
- authority dashboards


# ============================================================
# 8. FINAL RULE
# ============================================================

Epidemic probability architecture must remain:

- health-risk-centered
- spread-aware
- density-aware
- sanitation-aware
- medical-capacity-aware
- event-connected
- distinct from mortality-only models


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/391.risk-and-mortality/3910004_FAMINE_PROBABILITY_ARCHITECTURE.md
# ============================================================

# ============================================================
# FAMINE PROBABILITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: famine-probability
component: famine-probability

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for famine probability calculation
inside Civilization.

This document defines
the probability family
for food-system breakdown
and hunger-escalation risk.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

Famine probability is the architectural family
that estimates the likelihood
of food insecurity escalating
into famine-eligible conditions.

Famine probability is not identical to:

- poverty score alone
- market shortage alone
- mortality probability alone

It must remain
a food-system failure probability family.


# ============================================================
# 3. CALCULATION LEVELS
# ============================================================

Famine probability should support
at minimum:

- state level
- city level
- district level
- population-group level where applicable

It may aggregate upward
to continent or world posture
for broad warning visibility.


# ============================================================
# 4. INPUT FACTOR CATEGORIES
# ============================================================

Representative famine probability inputs include:

- food production
- harvest stability
- food reserves
- food import dependency
- logistics continuity
- infrastructure disruption
- climate stress
- drought or disaster aftermath
- market access
- affordability stress
- conflict disruption
- population burden
- policy response quality
- prior shortage history

This document does not define coefficients,
only input-family legitimacy.


# ============================================================
# 5. OUTPUTS
# ============================================================

Famine probability outputs may include:

- food insecurity posture
- famine escalation posture
- hotspot visibility
- severity band
- trend posture
- famine-eligible state where supported


# ============================================================
# 6. EVENT RELATION
# ============================================================

Famine probability must connect to:

- shortage events
- rationing events
- supply disruption events
- famine escalation events
- recovery or relief events

Probability does not equal famine execution.

Execution remains downstream.


# ============================================================
# 7. VISIBILITY
# ============================================================

Famine probability may be surfaced in:

- state information
- city information
- district detail
- agriculture, logistics, and market visibility
- alert systems
- authority dashboards


# ============================================================
# 8. FINAL RULE
# ============================================================

Famine probability architecture must remain:

- food-system-centered
- logistics-aware
- production-aware
- affordability-aware
- disruption-aware
- event-connected
- distinct from poverty-only or mortality-only models


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/020.architecture/391.risk-and-mortality/3910005_MORTALITY_PROBABILITY_ARCHITECTURE.md
# ============================================================

# ============================================================
# MORTALITY PROBABILITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: mortality-probability
component: mortality-probability

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for mortality probability calculation
inside Civilization.

This document defines
the probability family
for death-risk estimation
across multiple causes.


# ============================================================
# 2. CORE DEFINITION
# ============================================================

Mortality probability is the architectural family
that estimates the likelihood
of death occurring
for a population unit or individual unit
within simulation context.

Mortality probability must not be modeled
as a single cause-blind chance only.

Cause distinction must remain possible.


# ============================================================
# 3. CAUSE FAMILIES
# ============================================================

Mortality probability should support
distinct mortality cause branches such as:

- natural mortality
- epidemic mortality
- famine mortality
- war mortality
- disaster mortality
- security-related mortality where applicable

A combined mortality posture may exist,
but cause-sensitive branching must remain possible.


# ============================================================
# 4. CALCULATION LEVELS
# ============================================================

Mortality probability should support
at minimum:

- population-group level
- city level aggregated posture
- district level aggregated posture
- individual level where the simulation requires it

Mortality outputs may also aggregate upward
for broader visibility.


# ============================================================
# 5. INPUT FACTOR CATEGORIES
# ============================================================

Representative mortality probability inputs include:

- age or life-stage factors where applicable
- health burden
- epidemic exposure
- famine exposure
- war exposure
- disaster exposure
- medical capacity
- sanitation
- shelter condition
- support access
- environmental stress
- recent injury or instability factors where applicable

This document does not define coefficients,
only input-family legitimacy.


# ============================================================
# 6. OUTPUTS
# ============================================================

Mortality probability outputs may include:

- total mortality posture
- cause-specific mortality posture
- mortality trend
- high-risk-group visibility
- event-eligible death-risk state where supported


# ============================================================
# 7. EVENT RELATION
# ============================================================

Mortality probability must connect to:

- natural death events
- epidemic death events
- famine death events
- war death events
- disaster death events
- recovery or survival improvement loops where applicable

Probability does not equal death execution.

Execution remains downstream.


# ============================================================
# 8. VISIBILITY
# ============================================================

Mortality probability may be surfaced in:

- health-support views
- state information
- city and district warning views
- authority dashboards
- demographic simulation observers where applicable

Individual-level visibility must be handled carefully
and need not be public-facing.


# ============================================================
# 9. FINAL RULE
# ============================================================

Mortality probability architecture must remain:

- cause-sensitive
- level-aware
- health-aware
- famine-aware
- war-aware
- disaster-aware
- event-connected
- distinct from a single opaque death score


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.nation-facility-aggregate/3910101_NATION_SERVICE_COVERAGE_UI_MODEL.md
# ============================================================

# ============================================================
# NATION SERVICE COVERAGE UI MODEL
# ============================================================

status: canonical
layer: model
scope: nation-facility-aggregate
component: nation-service-coverage-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. COVERAGE SURFACES
# ============================================================

coverage_surfaces:
- nation_overview_coverage_panel
- nation_detail_coverage_panel
- nation_comparison_coverage_panel
- nation_builder_preview_coverage_panel


# ============================================================
# 2. COVERAGE DIMENSIONS
# ============================================================

coverage_dimensions:
- health_access
- education_access
- religion_access
- commerce_access
- finance_access
- recruitment_access
- transport_access
- civic_service_access
- market_information_access


# ============================================================
# 3. REQUIRED UI FIELDS
# ============================================================

required_ui_fields:
- nation_id
- coverage_dimension
- aggregate_score
- trend_state
- strongest_city_or_district
- weakest_city_or_district
- recent_change_summary
- source_facility_hint


# ============================================================
# 4. FINAL RULE
# ============================================================

Coverage UI must show
not only the score
but where the score is coming from.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.nation-facility-aggregate/3910102_NATION_INFRASTRUCTURE_AND_MARKET_METRIC_MODEL.md
# ============================================================

# ============================================================
# NATION INFRASTRUCTURE AND MARKET METRIC MODEL
# ============================================================

status: canonical
layer: model
scope: nation-facility-aggregate
component: nation-infrastructure-and-market-metric

owner: Boss
prepared_by: Zero


# ============================================================
# 1. METRIC DIMENSIONS
# ============================================================

metric_dimensions:
- infrastructure_score
- market_legibility
- civic_visibility
- district_development
- urban_service_density
- national_prestige
- stability_signal


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- nation_id
- metric_dimension
- aggregate_value
- trend_state
- primary_driver_summary
- last_updated_at
- source_event_count


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation metrics must remain explainable
through visible facility and district change.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.nation-facility-aggregate/3910103_NATION_CITY_DISTRICT_ROLLUP_MODEL.md
# ============================================================

# ============================================================
# NATION CITY DISTRICT ROLLUP MODEL
# ============================================================

status: canonical
layer: model
scope: nation-facility-aggregate
component: nation-city-district-rollup

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ROLLUP LEVELS
# ============================================================

rollup_levels:
- district_level
- city_level
- nation_level


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

required_fields:
- nation_id
- city_id_or_null
- district_id_or_null
- metric_dimension
- rollup_value
- contributing_facility_count
- anchor_facility_count
- board_facility_count
- updated_at


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation totals must remain traceable
through city and district rollups.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.nation-facility-aggregate/3910104_NATION_FACILITY_METRIC_PREVIEW_MODEL.md
# ============================================================

# ============================================================
# NATION FACILITY METRIC PREVIEW MODEL
# ============================================================

status: canonical
layer: model
scope: nation-facility-aggregate
component: nation-facility-metric-preview

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PREVIEW CONTEXTS
# ============================================================

preview_contexts:
- nation_builder_preview
- field_build_confirmation_preview
- field_replacement_preview
- nation_comparison_preview


# ============================================================
# 2. REQUIRED PREVIEW FIELDS
# ============================================================

required_preview_fields:
- target_nation_id
- target_metric_dimension
- current_value
- projected_value
- delta_value
- primary_reason
- confidence_style


# ============================================================
# 3. FINAL RULE
# ============================================================

Preview should help users understand
what opening or removing a facility
is likely to do to nation metrics.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.nation-facility-aggregate/3910105_NATION_AGGREGATE_VISIBILITY_RULE_MODEL.md
# ============================================================

# ============================================================
# NATION AGGREGATE VISIBILITY RULE MODEL
# ============================================================

status: canonical
layer: model
scope: nation-facility-aggregate
component: nation-aggregate-visibility-rule

owner: Boss
prepared_by: Zero


# ============================================================
# 1. VISIBILITY RULES
# ============================================================

visibility_rules:
- nation overview shows compact aggregate metrics
- nation detail shows expanded coverage and driver summaries
- nation comparison shows normalized metric comparisons
- nation builder preview shows projected change, not historical change
- district internals may remain hidden unless expanded


# ============================================================
# 2. FINAL RULE
# ============================================================

Visibility must scale from summary
to drill-down
without losing causality.


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.risk-and-mortality/3910001_CIVILIZATION_RISK_AND_MORTALITY_MODEL.md
# ============================================================

# ============================================================
# CIVILIZATION RISK AND MORTALITY MODEL
# ============================================================

status: canonical
layer: model
scope: civilization-risk-and-mortality-model
component: civilization-risk-and-mortality-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical model layer
for major-risk probability
and mortality probability
inside Civilization.

This model family is a supplement layer.

It does not replace existing:

- WAR_MODEL
- BATTLE_MODEL
- CIVILIZATION_DEATH_RECORD_MODEL
- DEATH_AND_FUNERAL_EVENT_MODEL

Instead,
it provides pre-event probability posture
that can feed those existing models and flows.

This model family covers:

- war probability
- epidemic probability
- famine probability
- mortality probability


# ============================================================
# 2. MODEL POSITION
# ============================================================

This model family sits before:

- war execution models
- death record models
- post-event flow models

This family exists to represent:

- probability posture
- current risk band
- active contributing factors
- trend direction
- event eligibility posture where supported

These models are not final event records.

They are pre-event state models.


# ============================================================
# 3. REQUIRED CHILD MODELS
# ============================================================

This parent model requires:

- WAR_PROBABILITY_MODEL
- EPIDEMIC_PROBABILITY_MODEL
- FAMINE_PROBABILITY_MODEL
- MORTALITY_PROBABILITY_MODEL


# ============================================================
# 4. SHARED MODEL PRINCIPLES
# ============================================================

All child probability models should support
the following shared concepts where applicable.

- subject scope
- calculation level
- probability posture
- severity band
- trend direction
- factor summary
- recalculated_at
- source period or effective window where supported
- event eligibility posture where supported

Probability models must not be treated as
executed event records.

Executed events remain separate.


# ============================================================
# 5. CALCULATION LEVEL CONCEPT
# ============================================================

Probability models may apply to:

- world
- continent
- state
- city
- district
- population group
- individual

Not every child model must support
every level identically.

But level-aware application must remain possible.


# ============================================================
# 6. RISK BAND CONCEPT
# ============================================================

All child models may use
a normalized risk band concept.

Representative bands may include:

- negligible
- low
- guarded
- elevated
- high
- critical

This document does not force
the final enum implementation,
but the architecture expects
banded readability.


# ============================================================
# 7. TREND CONCEPT
# ============================================================

All child models may expose
trend posture such as:

- decreasing
- stable
- rising
- sharply_rising

This is for visibility and control.

Trend is not identical to probability value.


# ============================================================
# 8. FACTOR SUMMARY CONCEPT
# ============================================================

Child probability models should allow
factor visibility in model form.

This may include:

- dominant_factors
- contributing_factors
- suppressed_factors
- mitigation_factors

The exact structure may differ per child model.

But opaque probability-only modeling
should be avoided.


# ============================================================
# 9. RELATION TO EXISTING MODELS
# ============================================================

This model family supplements existing models.

Representative relation:

- WAR_PROBABILITY_MODEL
  feeds war-eligibility and escalation posture
  before WAR_MODEL becomes active

- MORTALITY_PROBABILITY_MODEL
  feeds death-risk posture
  before CIVILIZATION_DEATH_RECORD_MODEL is created

- EPIDEMIC_PROBABILITY_MODEL
  feeds outbreak and spread posture
  before disease-event and mortality flows

- FAMINE_PROBABILITY_MODEL
  feeds food-system crisis posture
  before famine event and famine-linked mortality flows


# ============================================================
# 10. FINAL RULE
# ============================================================

Civilization risk and mortality models must remain:

- pre-event
- cause-sensitive
- probability-centered
- factor-readable
- compatible with existing war and death models
- non-destructive to existing design assets


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.risk-and-mortality/3910002_WAR_PROBABILITY_MODEL.md
# ============================================================

# ============================================================
# WAR PROBABILITY MODEL
# ============================================================

status: canonical
layer: model
scope: war-probability-model
component: war-probability-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical model
for war probability posture
inside Civilization.

This model supplements:

- WAR_MODEL
- WAR_DECISION_FLOW_MODEL
- WAR_DECLARATION_FLOW

This model represents
pre-war escalation posture,
not executed war truth.


# ============================================================
# 2. CORE ENTITY
# ============================================================

WarProbability

This model represents
the current probability posture
for interstate or polity-level war escalation.


# ============================================================
# 3. RECOMMENDED KEYS
# ============================================================

Recommended fields:

- war_probability_id
- subject_scope_type
- subject_scope_id
- counterparty_scope_type where applicable
- counterparty_scope_id where applicable
- regional_scope_id where applicable
- probability_value
- risk_band
- trend_direction
- escalation_posture
- event_eligible_flag
- dominant_factor_summary
- mitigation_factor_summary
- recalculated_at
- effective_from where applicable
- effective_to where applicable
- notes where applicable


# ============================================================
# 4. SUBJECT SCOPE
# ============================================================

Supported subject scope examples:

- state
- polity
- alliance block where supported
- region where supported

This model is primarily interstate-facing,
not facility-facing.


# ============================================================
# 5. REPRESENTATIVE FACTOR FAMILIES
# ============================================================

Representative factor families include:

- border pressure
- resource competition
- alliance instability
- military imbalance
- diplomatic hostility
- recent incident pressure
- internal instability spillover
- strategic chokepoint pressure
- unresolved prior conflict pressure


# ============================================================
# 6. OUTPUT POSTURE
# ============================================================

Representative readable outputs include:

- stable_peace_posture
- guarded_tension_posture
- escalation_warning_posture
- war_eligible_posture

The exact enum may evolve,
but readable escalation posture is required.


# ============================================================
# 7. RELATION TO EXISTING WAR MODEL
# ============================================================

WAR_PROBABILITY_MODEL exists before WAR_MODEL.

Representative relation:

war_probability_posture
-> escalation eligibility
-> war decision flow
-> war declaration flow
-> WAR_MODEL activation

This model must not replace WAR_MODEL.

WAR_MODEL remains the active war-state model.


# ============================================================
# 8. FINAL RULE
# ============================================================

WarProbability must remain:

- pre-war
- escalation-readable
- interstate-centered
- factor-aware
- compatible with existing war design assets


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.risk-and-mortality/3910003_EPIDEMIC_PROBABILITY_MODEL.md
# ============================================================

# ============================================================
# EPIDEMIC PROBABILITY MODEL
# ============================================================

status: canonical
layer: model
scope: epidemic-probability-model
component: epidemic-probability-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical model
for epidemic probability posture
inside Civilization.

This model represents:

- outbreak probability posture
- spread probability posture
- hotspot posture

This model is pre-event and pre-outbreak-record.


# ============================================================
# 2. CORE ENTITY
# ============================================================

EpidemicProbability

This model represents
the current epidemic-risk posture
for a geographic or population scope.


# ============================================================
# 3. RECOMMENDED KEYS
# ============================================================

Recommended fields:

- epidemic_probability_id
- subject_scope_type
- subject_scope_id
- disease_family_code where applicable
- probability_value
- spread_probability_value where applicable
- risk_band
- trend_direction
- hotspot_flag
- event_eligible_flag
- dominant_factor_summary
- mitigation_factor_summary
- recalculated_at
- effective_from where applicable
- effective_to where applicable
- notes where applicable


# ============================================================
# 4. SUBJECT SCOPE
# ============================================================

Supported subject scope examples:

- state
- city
- district
- population_group

This model may aggregate upward,
but should remain locally meaningful.


# ============================================================
# 5. REPRESENTATIVE FACTOR FAMILIES
# ============================================================

Representative factor families include:

- population density
- crowding
- sanitation weakness
- hygiene weakness
- clean water weakness
- medical capacity weakness
- mobility pressure
- climate pressure
- seasonality pressure
- outbreak history pressure
- containment mitigation


# ============================================================
# 6. OUTPUT POSTURE
# ============================================================

Representative readable outputs include:

- low_outbreak_posture
- guarded_outbreak_posture
- elevated_spread_posture
- epidemic_hotspot_posture

The exact enum may evolve,
but outbreak and spread readability is required.


# ============================================================
# 7. RELATION TO EXISTING HEALTH / DEATH DESIGN
# ============================================================

EPIDEMIC_PROBABILITY_MODEL may feed:

- outbreak event eligibility
- hospital burden visibility
- epidemic-linked mortality posture

This model does not replace
death records or hospital operation models.

It precedes them.


# ============================================================
# 8. FINAL RULE
# ============================================================

EpidemicProbability must remain:

- pre-outbreak
- spread-aware
- locality-aware
- factor-aware
- compatible with downstream health and mortality models


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.risk-and-mortality/3910004_FAMINE_PROBABILITY_MODEL.md
# ============================================================

# ============================================================
# FAMINE PROBABILITY MODEL
# ============================================================

status: canonical
layer: model
scope: famine-probability-model
component: famine-probability-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical model
for famine probability posture
inside Civilization.

This model represents:

- food insecurity escalation posture
- famine eligibility posture
- local hunger hotspot posture

This model is pre-event and pre-famine-record.


# ============================================================
# 2. CORE ENTITY
# ============================================================

FamineProbability

This model represents
the current food-system crisis posture
for a geographic or population scope.


# ============================================================
# 3. RECOMMENDED KEYS
# ============================================================

Recommended fields:

- famine_probability_id
- subject_scope_type
- subject_scope_id
- food_system_scope_code where applicable
- probability_value
- food_insecurity_value where applicable
- risk_band
- trend_direction
- hotspot_flag
- event_eligible_flag
- dominant_factor_summary
- mitigation_factor_summary
- recalculated_at
- effective_from where applicable
- effective_to where applicable
- notes where applicable


# ============================================================
# 4. SUBJECT SCOPE
# ============================================================

Supported subject scope examples:

- state
- city
- district
- population_group

This model should remain meaningful
at local and regional levels.


# ============================================================
# 5. REPRESENTATIVE FACTOR FAMILIES
# ============================================================

Representative factor families include:

- food production weakness
- reserve weakness
- logistics disruption
- import dependency stress
- market access weakness
- affordability stress
- disaster aftermath
- conflict disruption
- climate stress
- relief mitigation


# ============================================================
# 6. OUTPUT POSTURE
# ============================================================

Representative readable outputs include:

- food_stable_posture
- guarded_food_insecurity_posture
- elevated_famine_risk_posture
- famine_hotspot_posture

The exact enum may evolve,
but food-system readability is required.


# ============================================================
# 7. RELATION TO EXISTING AGRICULTURE / MARKET / DEATH DESIGN
# ============================================================

FAMINE_PROBABILITY_MODEL may feed:

- famine event eligibility
- market warning visibility
- agriculture warning visibility
- famine-linked mortality posture

This model does not replace
agriculture operation models,
market models,
or death records.

It precedes them.


# ============================================================
# 8. FINAL RULE
# ============================================================

FamineProbability must remain:

- pre-famine
- food-system-aware
- logistics-aware
- locality-aware
- factor-aware
- compatible with downstream event and mortality models


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/030.model/391.risk-and-mortality/3910005_MORTALITY_PROBABILITY_MODEL.md
# ============================================================

# ============================================================
# MORTALITY PROBABILITY MODEL
# ============================================================

status: canonical
layer: model
scope: mortality-probability-model
component: mortality-probability-model

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical model
for mortality probability posture
inside Civilization.

This model supplements:

- CIVILIZATION_DEATH_RECORD_MODEL
- DEATH_AND_FUNERAL_EVENT_MODEL

This model represents
pre-death probability posture,
not death records themselves.


# ============================================================
# 2. CORE ENTITY
# ============================================================

MortalityProbability

This model represents
the current death-risk posture
for a population scope or individual scope
where the simulation requires it.


# ============================================================
# 3. RECOMMENDED KEYS
# ============================================================

Recommended fields:

- mortality_probability_id
- subject_scope_type
- subject_scope_id
- subject_population_group_code where applicable
- total_probability_value
- risk_band
- trend_direction
- natural_mortality_value where applicable
- epidemic_mortality_value where applicable
- famine_mortality_value where applicable
- war_mortality_value where applicable
- disaster_mortality_value where applicable
- security_related_mortality_value where applicable
- dominant_factor_summary
- mitigation_factor_summary
- recalculated_at
- effective_from where applicable
- effective_to where applicable
- notes where applicable


# ============================================================
# 4. SUBJECT SCOPE
# ============================================================

Supported subject scope examples:

- population_group
- district
- city
- individual where applicable

Individual support is allowed,
but public visibility is not required.


# ============================================================
# 5. CAUSE BRANCHES
# ============================================================

MortalityProbability should preserve
cause-sensitive branches such as:

- natural mortality
- epidemic mortality
- famine mortality
- war mortality
- disaster mortality
- security-related mortality

A total mortality posture may aggregate them,
but cause distinction must remain possible.


# ============================================================
# 6. REPRESENTATIVE FACTOR FAMILIES
# ============================================================

Representative factor families include:

- age or life-stage pressure where applicable
- health burden
- epidemic exposure
- famine exposure
- war exposure
- disaster exposure
- medical support weakness
- sanitation weakness
- shelter weakness
- support access weakness
- environmental stress
- protective mitigation


# ============================================================
# 7. OUTPUT POSTURE
# ============================================================

Representative readable outputs include:

- ordinary_mortality_posture
- guarded_mortality_posture
- elevated_mortality_posture
- critical_mortality_posture

Cause-specific visibility may also exist.


# ============================================================
# 8. RELATION TO EXISTING DEATH RECORD MODEL
# ============================================================

MORTALITY_PROBABILITY_MODEL exists before
CIVILIZATION_DEATH_RECORD_MODEL.

Representative relation:

mortality_probability_posture
-> death event eligibility or trigger logic
-> death occurrence
-> death record creation
-> death-related flows

This model must not replace
death records.

Death records remain post-event truth.


# ============================================================
# 9. FINAL RULE
# ============================================================

MortalityProbability must remain:

- pre-death
- cause-sensitive
- factor-aware
- compatible with existing death records
- non-destructive to existing death design assets


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/391.risk-and-mortality/3910001_CIVILIZATION_RISK_AND_MORTALITY_IMPLEMENTATION.md
# ============================================================

# ============================================================
# CIVILIZATION RISK AND MORTALITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: civilization-risk-and-mortality-implementation
component: civilization-risk-and-mortality-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for major-risk probability
and mortality probability
inside Civilization.

This document must align with:

- CIVILIZATION_RISK_AND_MORTALITY_ARCHITECTURE
- CIVILIZATION_RISK_AND_MORTALITY_MODEL
- WAR_PROBABILITY_ARCHITECTURE
- EPIDEMIC_PROBABILITY_ARCHITECTURE
- FAMINE_PROBABILITY_ARCHITECTURE
- MORTALITY_PROBABILITY_ARCHITECTURE

This document defines:

- recalculation timing
- input aggregation behavior
- normalization posture
- event-eligibility handoff
- visibility handoff
- compatibility with existing war and death systems

This document does not redefine:

- existing WAR_MODEL execution truth
- existing death-record truth
- event record truth
- UI field contracts


# ============================================================
# 2. IMPLEMENTATION POSITION
# ============================================================

Risk probability implementation
sits before event execution
and before post-event records.

Representative sequence:

factor aggregation
-> probability calculation
-> banding and trend update
-> event eligibility output
-> downstream event system
-> downstream record system

Probability calculation must remain
pre-event and non-destructive
to existing event or record models.


# ============================================================
# 3. REQUIRED CHILD IMPLEMENTATIONS
# ============================================================

This document requires child implementations for:

- WAR_PROBABILITY_IMPLEMENTATION
- EPIDEMIC_PROBABILITY_IMPLEMENTATION
- FAMINE_PROBABILITY_IMPLEMENTATION
- MORTALITY_PROBABILITY_IMPLEMENTATION


# ============================================================
# 4. SHARED CALCULATION PHASES
# ============================================================

All probability families should follow
a shared high-level phase structure.

Phase 1:
collect input factors

Phase 2:
normalize factor posture

Phase 3:
apply family-specific weighting

Phase 4:
produce probability posture

Phase 5:
produce risk band

Phase 6:
produce trend direction

Phase 7:
produce event eligibility posture where supported

Phase 8:
persist or expose outputs

Not all families must have identical formulas,
but they should preserve this implementation order.


# ============================================================
# 5. INPUT AGGREGATION RULE
# ============================================================

Input factors may come from multiple layers.

Representative sources include:

- geography
- state posture
- city posture
- district posture
- infrastructure posture
- agriculture posture
- health posture
- military posture
- logistics posture
- historical event posture

Input aggregation must be explicit.

Hidden or untracked implicit inputs
should be avoided.


# ============================================================
# 6. NORMALIZATION RULE
# ============================================================

Before final family-specific calculation,
inputs should be normalized
into consistent internal postures
where possible.

Normalization may include:

- scaling to a common range
- converting categorical conditions to weighted posture
- smoothing extreme swings where policy requires
- separating acute shock from structural baseline

Normalization must not erase
major-cause visibility.


# ============================================================
# 7. BANDING RULE
# ============================================================

After final probability posture is produced,
the implementation should map
probability values into readable bands.

Banding must be deterministic
for the same inputs and coefficients.

Banding should remain stable enough
for UI and alert interpretation.


# ============================================================
# 8. TREND RULE
# ============================================================

Trend direction should compare
current posture against recent prior posture.

Trend should not be inferred
from one isolated value only
when prior calculation history exists.

Representative trend states include:

- decreasing
- stable
- rising
- sharply_rising


# ============================================================
# 9. EVENT ELIGIBILITY RULE
# ============================================================

Probability output may feed
event eligibility logic.

However:

- high probability is not automatic execution
- event execution remains downstream
- cooldown and gating logic may still apply
- mitigation systems may still suppress execution

This keeps probability and execution separate.


# ============================================================
# 10. RECALCULATION TIMING RULE
# ============================================================

Probability families should support
both periodic recalculation
and event-driven recalculation.

Representative triggers include:

- scheduled recalculation tick
- major policy change
- disaster occurrence
- supply disruption
- war or diplomatic incident
- medical overload
- harvest outcome
- death surge
- city / district status change

Event-driven recalculation should be used
when a major factor changes materially.


# ============================================================
# 11. VISIBILITY HANDOFF RULE
# ============================================================

Probability outputs may be exposed to:

- authority dashboards
- map warning layers
- state and city information
- district detail
- selected facility warning contexts
- issue and alert systems

Visibility is a consumer layer only.

This implementation layer owns
probability production,
not final UI composition.


# ============================================================
# 12. EXISTING MODEL COMPATIBILITY RULE
# ============================================================

This implementation family must not replace
existing war and death assets.

Representative compatibility:

- war probability feeds war decision eligibility
  before active war-state models

- mortality probability feeds death-risk posture
  before death-record creation

Existing post-event truth remains canonical.


# ============================================================
# 13. FAILURE HANDLING RULE
# ============================================================

Probability calculation failures must be explicit.

Representative failure states include:

- missing input subset
- partial calculation
- stale calculation
- blocked calculation
- hard failure

If partial calculation is used,
the resulting posture must be marked accordingly.


# ============================================================
# 14. FINAL RULE
# ============================================================

Risk and mortality implementation must remain:

- pre-event
- deterministic where intended
- factor-aware
- trend-aware
- band-readable
- event-compatible
- non-destructive to existing war and death systems


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/391.risk-and-mortality/3910002_WAR_PROBABILITY_IMPLEMENTATION.md
# ============================================================

# ============================================================
# WAR PROBABILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: war-probability-implementation
component: war-probability-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for war probability calculation
inside Civilization.

This implementation supplements,
but does not replace:

- WAR_MODEL
- WAR_DECISION_FLOW_MODEL
- WAR_DECLARATION_FLOW


# ============================================================
# 2. CALCULATION POSITION
# ============================================================

War probability is calculated before:

- war declaration eligibility
- war model activation
- battle-resolution flow activation

Representative sequence:

state relation posture
-> border and strategic pressure aggregation
-> military and diplomacy weighting
-> war probability posture
-> war eligibility handoff where supported


# ============================================================
# 3. PRIMARY SUBJECTS
# ============================================================

Primary calculation subjects include:

- state-to-state pair
- polity-to-polity pair
- regional strategic zone where applicable

World-level summaries may exist,
but bilateral or paired posture
remains primary.


# ============================================================
# 4. INPUT AGGREGATION RULE
# ============================================================

Representative input families include:

- border adjacency pressure
- territorial dispute pressure
- resource competition pressure
- alliance instability
- diplomatic hostility
- military imbalance
- military readiness
- unresolved prior conflict pressure
- recent hostile incident pressure
- internal instability spillover

Implementation should preserve
cause-family readability.


# ============================================================
# 5. SHOCK VS STRUCTURAL RULE
# ============================================================

War probability should distinguish between:

- structural tension
- acute incident shock

Structural tension reflects
longer-lived hostility posture.

Acute shock reflects
recent incidents or escalations.

Both may contribute,
but should not be collapsed too early.


# ============================================================
# 6. TREND UPDATE RULE
# ============================================================

Trend should compare:

- current bilateral war posture
against
- recent prior bilateral war posture

Trend should be more sensitive
after acute incident shocks,
but should not become unstable
under trivial fluctuations.


# ============================================================
# 7. BANDING RULE
# ============================================================

War probability should be mapped
to readable strategic bands.

Representative bands may include:

- low tension
- guarded tension
- escalation warning
- war-eligible

The exact names may vary,
but escalation readability is required.


# ============================================================
# 8. EVENT ELIGIBILITY HANDOFF
# ============================================================

War probability may feed:

- war decision logic
- declaration eligibility
- mobilization warning systems
- strategic alert systems

But probability alone must not
instantiate war automatically.

Final downstream gates still apply.


# ============================================================
# 9. RECALCULATION TRIGGERS
# ============================================================

Representative recalculation triggers include:

- diplomatic incident
- border event
- sanction event
- alliance change
- military mobilization change
- territorial claim change
- resource disruption
- prior conflict resolution or renewed hostility
- scheduled strategic tick


# ============================================================
# 10. EXISTING WAR ASSET COMPATIBILITY
# ============================================================

This implementation must preserve
the canonical role of existing war assets.

Representative relation:

WAR_PROBABILITY
-> war decision posture
-> war declaration flow
-> WAR_MODEL active war state

WAR_MODEL remains the executed conflict state.

This implementation is only the pre-war layer.


# ============================================================
# 11. FINAL RULE
# ============================================================

War probability implementation must remain:

- bilateral-first
- escalation-aware
- incident-aware
- diplomacy-aware
- military-aware
- compatible with existing war execution assets


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/391.risk-and-mortality/3910003_EPIDEMIC_PROBABILITY_IMPLEMENTATION.md
# ============================================================

# ============================================================
# EPIDEMIC PROBABILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: epidemic-probability-implementation
component: epidemic-probability-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for epidemic probability calculation
inside Civilization.

This implementation covers:

- outbreak posture
- spread posture
- hotspot posture

This implementation remains pre-outbreak
and pre-death-record.


# ============================================================
# 2. CALCULATION POSITION
# ============================================================

Representative sequence:

population and sanitation posture
-> mobility and seasonality posture
-> medical mitigation posture
-> outbreak probability posture
-> spread probability posture
-> hotspot eligibility where supported
-> downstream event handoff


# ============================================================
# 3. PRIMARY SUBJECTS
# ============================================================

Primary calculation subjects include:

- state
- city
- district
- population group where supported

District and city calculations
should be especially important
for hotspot emergence.


# ============================================================
# 4. INPUT AGGREGATION RULE
# ============================================================

Representative input families include:

- density
- crowding
- sanitation weakness
- hygiene weakness
- water quality weakness
- medical capacity weakness
- mobility pressure
- climate and seasonality pressure
- prior outbreak history
- containment mitigation

Implementation should preserve
outbreak and spread distinction.


# ============================================================
# 5. OUTBREAK VS SPREAD RULE
# ============================================================

The implementation should distinguish between:

- outbreak probability
- spread probability

A location may have
moderate outbreak probability
but high spread probability once active.

These postures should remain separately visible
where model supports both.


# ============================================================
# 6. HOTSPOT RULE
# ============================================================

Hotspot posture should be derived
from concentrated epidemic pressure.

Hotspot identification may consider:

- repeated elevated risk
- multiple reinforcing factors
- high spread posture
- weak mitigation posture

Hotspot must remain a derived posture,
not the base probability itself.


# ============================================================
# 7. RECALCULATION TRIGGERS
# ============================================================

Representative recalculation triggers include:

- sanitation collapse
- water disruption
- medical overload
- seasonal shift
- mobility surge
- containment change
- district density change
- outbreak event
- scheduled health tick


# ============================================================
# 8. EVENT ELIGIBILITY HANDOFF
# ============================================================

Epidemic probability may feed:

- outbreak event eligibility
- spread escalation eligibility
- health alert systems
- hospital burden alerts

Probability alone must not equal outbreak execution.

Downstream gates still apply.


# ============================================================
# 9. MORTALITY RELATION
# ============================================================

Epidemic probability may influence
epidemic mortality posture downstream.

However,
epidemic probability is not itself
the mortality model.

Mortality remains a separate family.


# ============================================================
# 10. FINAL RULE
# ============================================================

Epidemic probability implementation must remain:

- outbreak-aware
- spread-aware
- locality-aware
- sanitation-aware
- medical-mitigation-aware
- compatible with downstream health and mortality systems


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/391.risk-and-mortality/3910004_FAMINE_PROBABILITY_IMPLEMENTATION.md
# ============================================================

# ============================================================
# FAMINE PROBABILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: famine-probability-implementation
component: famine-probability-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for famine probability calculation
inside Civilization.

This implementation covers:

- food insecurity posture
- famine escalation posture
- hotspot posture

This implementation remains pre-famine
and pre-famine-death-record.


# ============================================================
# 2. CALCULATION POSITION
# ============================================================

Representative sequence:

food production posture
-> reserve and logistics posture
-> affordability and access posture
-> famine probability posture
-> hotspot eligibility where supported
-> downstream event handoff


# ============================================================
# 3. PRIMARY SUBJECTS
# ============================================================

Primary calculation subjects include:

- state
- city
- district
- population group where supported

District and city calculations
should be especially important
for hunger hotspot emergence.


# ============================================================
# 4. INPUT AGGREGATION RULE
# ============================================================

Representative input families include:

- production weakness
- reserve weakness
- logistics disruption
- import dependency
- market access weakness
- affordability stress
- climate stress
- drought or disaster aftermath
- conflict disruption
- relief mitigation

Implementation should preserve
food-system readability.


# ============================================================
# 5. FOOD INSECURITY VS FAMINE RULE
# ============================================================

The implementation should distinguish between:

- food insecurity posture
- famine escalation posture

A scope may have
persistent food insecurity
without yet crossing famine eligibility.

These postures should remain separately meaningful
where model supports both.


# ============================================================
# 6. HOTSPOT RULE
# ============================================================

Hotspot posture should be derived
from concentrated hunger-system pressure.

Hotspot identification may consider:

- repeated elevated risk
- supply disruption overlap
- affordability collapse
- weak mitigation posture
- localized burden concentration

Hotspot must remain a derived posture,
not the base probability itself.


# ============================================================
# 7. RECALCULATION TRIGGERS
# ============================================================

Representative recalculation triggers include:

- harvest outcome change
- reserve change
- logistics breakdown
- market disruption
- import loss
- war disruption
- disaster aftermath
- relief deployment
- scheduled food-system tick


# ============================================================
# 8. EVENT ELIGIBILITY HANDOFF
# ============================================================

Famine probability may feed:

- shortage event eligibility
- famine escalation eligibility
- food alert systems
- state and city warning systems

Probability alone must not equal famine execution.

Downstream gates still apply.


# ============================================================
# 9. MORTALITY RELATION
# ============================================================

Famine probability may influence
famine mortality posture downstream.

However,
famine probability is not itself
the mortality model.

Mortality remains a separate family.


# ============================================================
# 10. FINAL RULE
# ============================================================

Famine probability implementation must remain:

- food-system-aware
- logistics-aware
- affordability-aware
- locality-aware
- hotspot-aware
- compatible with downstream event and mortality systems


# ============================================================
# FILE: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/120.implementation/391.risk-and-mortality/3910005_MORTALITY_PROBABILITY_IMPLEMENTATION.md
# ============================================================

# ============================================================
# MORTALITY PROBABILITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: mortality-probability-implementation
component: mortality-probability-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for mortality probability calculation
inside Civilization.

This implementation supplements,
but does not replace:

- CIVILIZATION_DEATH_RECORD_MODEL
- CIVILIZATION_DEATH_REGISTRATION_RUNTIME
- DEATH_AND_FUNERAL_EVENT_MODEL


# ============================================================
# 2. CALCULATION POSITION
# ============================================================

Representative sequence:

cause-family exposure posture
-> mitigation posture
-> cause-specific mortality posture
-> total mortality posture
-> death-event eligibility where supported
-> downstream death record creation when death occurs

Mortality probability remains pre-death.

Death record remains post-event truth.


# ============================================================
# 3. PRIMARY SUBJECTS
# ============================================================

Primary calculation subjects include:

- population group
- district
- city
- individual where simulation requires

Individual support is allowed,
but public visibility is not required.


# ============================================================
# 4. CAUSE-BRANCH CALCULATION RULE
# ============================================================

Mortality implementation should preserve
distinct cause-sensitive branches such as:

- natural mortality
- epidemic mortality
- famine mortality
- war mortality
- disaster mortality
- security-related mortality where applicable

These branches may later aggregate
into a total mortality posture.

Aggregation must not erase
cause-level availability.


# ============================================================
# 5. INPUT AGGREGATION RULE
# ============================================================

Representative input families include:

- age or life-stage posture where applicable
- health burden
- epidemic exposure
- famine exposure
- war exposure
- disaster exposure
- sanitation weakness
- medical-support weakness
- shelter weakness
- support-access weakness
- environmental stress
- mitigation factors

Implementation should preserve
cause-family readability.


# ============================================================
# 6. TOTAL VS CAUSE RULE
# ============================================================

The implementation should distinguish between:

- cause-specific mortality posture
- total mortality posture

Total mortality posture is a combined output.

Cause-specific posture remains
structurally important for explanation
and downstream reasoning.


# ============================================================
# 7. RECALCULATION TRIGGERS
# ============================================================

Representative recalculation triggers include:

- epidemic surge
- famine surge
- war escalation
- disaster event
- medical-capacity change
- sanitation collapse
- support-system collapse
- major demographic shift where applicable
- scheduled mortality tick


# ============================================================
# 8. EVENT ELIGIBILITY HANDOFF
# ============================================================

Mortality probability may feed:

- death-event eligibility
- demographic warning systems
- health-support warning systems
- authority dashboards

Probability alone must not equal death execution.

Downstream gates and event logic still apply.


# ============================================================
# 9. EXISTING DEATH ASSET COMPATIBILITY
# ============================================================

This implementation must preserve
the canonical role of existing death assets.

Representative relation:

mortality_probability_posture
-> death-eligibility or trigger posture
-> death occurrence
-> CIVILIZATION_DEATH_RECORD_MODEL creation
-> death and funeral event flows

Death record remains canonical post-event truth.

This implementation is only the pre-death layer.


# ============================================================
# 10. FINAL RULE
# ============================================================

Mortality probability implementation must remain:

- pre-death
- cause-sensitive
- trend-aware
- factor-aware
- compatible with existing death-record systems
- non-destructive to existing death design assets
