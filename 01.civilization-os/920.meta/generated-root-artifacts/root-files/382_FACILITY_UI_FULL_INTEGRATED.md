# ============================================================
# FACILITY UI FULL INTEGRATED
# Civilization OS / 382.facility-ui
# ============================================================

status: reference-integrated
scope: facility-ui-full-integrated
component: facility-ui-full-integrated

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

This document is the full integrated reference edition
for the 382.facility-ui set.

It combines:

- 020.architecture / 382.facility-ui
- 090.interface / 382.facility-ui

This file is for:

- full reading
- review
- implementation reference
- cross-layer consistency checking

Authoritative editing targets remain
the original split documents.

Do not treat this integrated file
as the primary editing source.


# ============================================================
# INCLUDED LAYERS
# ============================================================

1. Architecture
2. Interface


# ============================================================
# LAYER: 020.architecture / 382.facility-ui
# ============================================================

# ============================================================
# FACILITY UI ARCHITECTURE INTEGRATED
# 020.architecture / 382.facility-ui
# ============================================================

status: reference-integrated
layer: architecture
scope: facility-ui-architecture-integrated
component: facility-ui-architecture-integrated

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

This document is an integrated reference edition
of the facility UI architecture documents
under 020.architecture / 382.facility-ui.

This file is for reading, review, and implementation reference.

Authoritative editing targets remain
the original split architecture documents.

Do not treat this integrated file
as the primary editing source.


# ============================================================
# FILE: 3820001_CIVILIZATION_FACILITY_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# CIVILIZATION FACILITY UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: facility-ui
component: civilization-facility-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for facility UI systems inside Civilization.

This architecture unifies:

- builder-side facility creation UI
- post-placement facility setup UI
- detailed operation configuration UI
- auto-operation observation UI
- intervention UI
- canonical UI target routing
- facility type master alignment

This document exists to prevent
facility UI fragmentation.

Facilities in Civilization must not be designed
as isolated one-off screens.

All facility UIs must belong to
one consistent architectural system.


# ============================================================
# 2. POSITION
# ============================================================

Facility UI belongs to Civilization
as an operational and spatial layer.

Facility UI is not:

- an unrelated mini-game layer
- a per-building ad hoc screen collection
- a map-only click interaction layer
- a replacement for model truth
- a replacement for interface contracts

Facility UI is the canonical presentation
and operational control architecture
for field facilities,
service facilities,
residential facilities,
public facilities,
company-operated facilities,
and builder-generated facilities.


# ============================================================
# 3. RELATION TO EXISTING CANONICAL ARCHITECTURES
# ============================================================

This architecture must align with
existing canonical architectures including:

- Nation Builder Architecture
- Facility Placement Architecture
- Infrastructure Placement Architecture
- City Builder / Housing Builder Architecture
- Company Builder Architecture
- Facility Type Master Architecture
- Retail Detailed Configuration and Auto Operation Architecture
- Agriculture and Livestock Detailed Configuration and Auto Operation Architecture
- School Detailed Configuration and Auto Operation Architecture
- Hospital Detailed Configuration and Auto Operation Architecture
- Construction and Real Estate Detailed Configuration and Auto Operation Architecture
- Streamer Agency Architecture
- other facility-specific detailed configuration architectures

This document does not replace those architectures.

This document provides the common UI architecture
that binds those architectures
into one Civilization facility UI system.


# ============================================================
# 4. NON-DUPLICATION RULE
# ============================================================

This document is a parent UI architecture.

This document must define only:

- common UI structure
- cross-category UI principles
- builder-to-operation transition rules
- canonical UI target routing rules
- facility family separation rules
- follow-up child architecture requirements

This document must not redefine
domain-owned operational details
already owned by child architectures.

Examples of domain-owned details include:

- retail shelf policy details
- retail ordering logic details
- school enrollment rule details
- school academic cycle details
- hospital triage details
- hospital care load policy details
- agriculture yield policy details
- agriculture disease-response details
- real-estate vacancy policy details
- streamer agency revenue-bridge internals

Those details remain
in their existing domain architectures
and lower-layer documents.

Therefore this document is not
a duplicate-management document.

It is a unifying parent architecture.


# ============================================================
# 5. CORE PRINCIPLE
# ============================================================

Facility UI must be unified by role,
not fragmented by building shape.

The same service type must resolve
to the same canonical UI logic
even when the physical building form differs.

Facility form determines:

- entry path
- ownership context
- spatial placement context
- tenant context
- visible shell

Facility service truth determines:

- canonical UI target
- operation UI logic
- interaction scope
- detailed configuration responsibility
- auto-operation responsibility

Therefore:

canonical_ui_target determines service truth
facility_type determines canonical identity
builder entry determines spatial origin only


# ============================================================
# 6. ARCHITECTURAL GOALS
# ============================================================

The facility UI architecture must satisfy
all of the following goals.

1. spatial consistency  
Facilities must appear and operate
as part of the Civilization world

2. operational consistency  
Facilities that share the same service logic
must share the same UI architecture family

3. builder compatibility  
Facilities created through builders
must connect cleanly into operation UI
after placement

4. detailed configuration compatibility  
Facilities that require detailed setup
must support a canonical transition
from placement to configuration

5. auto-operation compatibility  
Facilities must support observation-first management
rather than permanent manual control

6. intervention compatibility  
Users must be able to intervene
when thresholds, risks, or policy exceptions occur

7. rights and ownership compatibility  
Facility UI must respect ownership,
operator permissions,
tenant context,
and public versus private access

8. layer safety  
UI architecture must not redefine models,
policies,
or interfaces


# ============================================================
# 7. SYSTEM BOUNDARY
# ============================================================

This architecture covers:

- builder-time facility UI architecture
- post-placement setup UI architecture
- operation-time facility UI architecture
- auto-operation monitoring UI architecture
- intervention and issue-response UI architecture
- cross-category common UI frame
- category-specific operation UI branches
- housing and residence UI
- real estate UI
- retail UI
- education UI
- medical UI
- agriculture UI
- logistics and transport UI
- construction and property UI
- streamer agency UI
- public and civic facility UI
- other canonical facility operation UI families

This architecture does not directly define:

- raw database models
- RPC contracts
- REST contracts
- event payload schemas
- exact widget field contracts
- exact per-screen wireframes

Those must be defined in their proper layers.


# ============================================================
# 8. BUILDER AND OPERATION SEPARATION
# ============================================================

Facility UI must be divided into
two primary phases.

phase_1:
builder_and_placement_phase

phase_2:
operation_and_management_phase

Builder and operation must remain connected,
but they must not collapse into one screen.

Builder phase handles:

- what is created
- where it is placed
- how it is spatially composed
- what design package or shell is selected
- what ownership or operator seed is assigned
- what placement validation applies

Operation phase handles:

- what the facility actually does
- how it is configured in detail
- how it is staffed
- how goods, services, or capacity are managed
- how auto-operation behaves
- how exceptions are handled

This separation is mandatory.


# ============================================================
# 9. FACILITY UI LIFECYCLE
# ============================================================

The canonical facility UI lifecycle is:

builder entry
-> facility type selection
-> placement and validation
-> shell or design selection
-> post-placement setup
-> detailed configuration if required
-> auto-operation
-> observation
-> intervention when needed
-> continued auto-operation
-> renewal / upgrade / restructuring if supported


# ============================================================
# 10. FACILITY TYPE MASTER ALIGNMENT
# ============================================================

All facility UIs must align with
the facility type master.

facility_type is the shared canonical identity.

Facility UI architecture must not allow:

- duplicate facility identities
- UI-only invented facility categories
- per-map renaming of facility type
- tenant-specific redefinition of facility meaning
- shell-specific redefinition of service truth

Facility UI branches must be anchored by:

- facility_type
- service_family
- canonical_ui_target
- ownership and operator compatibility
- placement compatibility

Facility UI architecture may specialize
presentation and controls,
but may not redefine
facility_type meaning.


# ============================================================
# 11. CANONICAL UI TARGET RULE
# ============================================================

Canonical UI target determines
the service truth of a facility interaction.

Facility form determines entry route only.

This means:

- a bank-type service resolves to bank UI logic
- a securities-type service resolves to securities UI logic
- a medical-type service resolves to medical UI logic
- an education-type service resolves to education UI logic
- a real-estate-type service resolves to real estate UI logic
- a company direct store resolves to direct-store retail logic
- a civic notice board resolves to civic notice logic

A large complex facility may expose
an overview layer,
but service sub-entry must still resolve
to canonical service truth.


# ============================================================
# 12. PRIMARY FACILITY UI STRATA
# ============================================================

Facility UI is composed of
three architectural strata.

stratum_1:
common_facility_ui_frame

stratum_2:
category_operation_ui_family

stratum_3:
facility_specific_specialization

The common frame provides
the universal structure.

The category operation family provides
domain-specific operational logic.

The facility-specific specialization provides
necessary specialization
without breaking the common frame.


# ============================================================
# 13. COMMON FACILITY UI FRAME
# ============================================================

All facility UIs must inherit
the common facility UI frame.

The common frame contains
the following canonical areas.

- summary area
- facility identity and ownership area
- placement and shell area
- operation status area
- staffing area
- goods or services area
- pricing / revenue / cost area where applicable
- inventory / resource / capacity area where applicable
- automation and policy area
- KPI and report area
- issue / alert / inspection area
- history / event / audit area
- permission and exposure area
- linked-facility and network area where applicable


# ============================================================
# 14. CANONICAL UI MODES
# ============================================================

Facility UI must support
mode separation.

canonical_ui_modes:
- builder_mode
- setup_mode
- operate_mode
- auto_mode
- intervention_mode
- admin_mode
- overview_mode
- visitor_mode
- owner_mode
- tenant_mode where applicable
- public_service_mode where applicable


# ============================================================
# 15. FACILITY UI CATEGORY MAP
# ============================================================

All facility UIs must belong
to one or more canonical category families.

primary_category_families:
- residence_and_living
- real_estate_and_construction
- retail_and_store_operation
- market_and_commercial_hub
- food_service
- agriculture_livestock_and_fishery
- manufacturing_and_industry
- logistics_transport_rail_and_port
- education_and_school
- medical_and_welfare
- government_and_civic_service
- security_judiciary_and_correction
- military_and_defense
- finance_insurance_and_securities
- research_technology_and_energy
- culture_tourism_entertainment_and_leisure
- exhibition_and_event
- media_broadcast_and_distribution
- streamer_agency_and_creator_support
- training_employment_and_human_development
- company_premises_tenant_and_office
- infrastructure_and_utility
- lodging_and_stay
- community_and_life_support

These categories define
operation UI family structure.

They do not replace facility_type master.

They are UI architecture families,
not identity truth keys.


# ============================================================
# 16. HOUSING POSITION RULE
# ============================================================

Housing must not be forced
into only one UI family.

Housing-related objects may belong to:

- residence_and_living
- real_estate_and_construction
- lodging_and_stay
- company_premises_tenant_and_office
- community_and_life_support

The determining rule is:

living truth -> residence UI
asset / contract truth -> real estate UI
temporary stay truth -> lodging UI
company allocation truth -> company premises or dormitory-related branch
support-service truth -> community and life-support UI


# ============================================================
# 17. DORMITORY RULE
# ============================================================

Dormitory-like facilities require special handling.

Dormitory may appear in multiple truth contexts:

- school dormitory
- company dormitory
- military dormitory
- residence-dominant dormitory
- lodging-like managed dormitory

Dormitory must resolve
to the canonical operation family
that reflects service truth.


# ============================================================
# 18. COMPLEX FACILITY RULE
# ============================================================

Large complexes may contain
multiple sub-services.

Examples include:

- major medical complex
- large school complex
- transportation hub complex
- mixed commercial complex

Complex facilities may expose
a facility overview shell.

However,
sub-service entry must still resolve
to canonical UI targets.

Overview shell is an orchestration layer,
not a replacement for sub-service truth.


# ============================================================
# 19. TENANT RULE
# ============================================================

Tenant context may specialize
entry context,
branding context,
or access scope.

Tenant context must not redefine
facility type.

Tenant-specific variation may change:

- banner
- entry point
- organization context
- visible access paths
- owner / tenant permissions

Tenant-specific variation may not change:

- canonical UI target truth
- underlying facility identity
- service-family meaning


# ============================================================
# 20. PERMISSION AND AUTHORITY RULE
# ============================================================

Facility UI must always respect
authority and role boundaries.

Typical authority contexts include:

- public access
- resident access
- customer access
- tenant access
- owner access
- operator access
- maintenance access
- manager access
- government authority access
- emergency authority access

Permission changes visible controls,
editable areas,
and exposed operational depth.

Permission must not silently change
the facility truth itself.


# ============================================================
# 21. AUTO-OPERATION COMPATIBILITY RULE
# ============================================================

Any facility domain that already defines
detailed configuration and auto operation
must implement a UI architecture
compatible with that pattern.

This includes at minimum:

- retail
- agriculture and livestock
- school
- hospital
- construction and real estate
- other domains adopting the same pattern

The UI architecture must expose
the operational loop clearly.


# ============================================================
# 22. EVENT, KPI, AND ISSUE VISIBILITY RULE
# ============================================================

Facility UI must never become
a silent black box.

All operation-family UIs must provide
some combination of:

- KPI visibility
- state visibility
- issue visibility
- recent event visibility
- inspection or alert visibility
- intervention history visibility


# ============================================================
# 23. SPATIAL LINKAGE RULE
# ============================================================

Facility UI must remain connected
to world space.

Facility operation must not become
detached from:

- map position
- district context
- infrastructure context
- linked nearby facilities
- transport availability
- local population or usage context
- ownership and jurisdiction context


# ============================================================
# 24. NETWORK AND LINKED-FACILITY RULE
# ============================================================

Some facilities belong to larger networks.

Examples include:

- school networks
- hospital referral structures
- company branches
- store chains
- transport lines
- logistics nodes
- public office structures
- utility coverage structures

Facility UI architecture must support
linked-facility awareness
without merging all sites into one flat screen.


# ============================================================
# 25. REQUIRED CHILD ARCHITECTURES
# ============================================================

This architecture requires
category or domain child architectures
for operational completeness.

Required child architectures include,
but are not limited to:

- RETAIL_OPERATION_UI_ARCHITECTURE
- HOUSING_AND_RESIDENCE_UI_ARCHITECTURE
- REAL_ESTATE_OPERATION_UI_ARCHITECTURE
- LODGING_AND_STAY_UI_ARCHITECTURE
- FOOD_SERVICE_OPERATION_UI_ARCHITECTURE
- AGRICULTURE_AND_LIVESTOCK_OPERATION_UI_ARCHITECTURE
- MANUFACTURING_OPERATION_UI_ARCHITECTURE
- LOGISTICS_AND_TRANSPORT_OPERATION_UI_ARCHITECTURE
- SCHOOL_OPERATION_UI_ARCHITECTURE
- HOSPITAL_OPERATION_UI_ARCHITECTURE
- GOVERNMENT_AND_CIVIC_SERVICE_UI_ARCHITECTURE
- SECURITY_AND_JUDICIARY_UI_ARCHITECTURE
- MILITARY_BASE_OPERATION_UI_ARCHITECTURE
- FINANCE_AND_SECURITIES_UI_ARCHITECTURE
- RESEARCH_AND_TECHNOLOGY_UI_ARCHITECTURE
- CULTURE_AND_LEISURE_UI_ARCHITECTURE
- EXHIBITION_AND_EVENT_UI_ARCHITECTURE
- MEDIA_OPERATION_UI_ARCHITECTURE
- STREAMER_AGENCY_OPERATION_UI_ARCHITECTURE
- COMPANY_PREMISES_AND_TENANT_UI_ARCHITECTURE
- INFRASTRUCTURE_AND_UTILITY_UI_ARCHITECTURE
- COMMUNITY_AND_LIFE_SUPPORT_UI_ARCHITECTURE


# ============================================================
# 26. MODEL AND INTERFACE FOLLOW-UP RULE
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model must define:

- operation-family model truth
- UI-edited policy models
- category-specific configuration models
- occupancy, staffing, resource, and assignment models where needed

090.interface must define:

- UI surface contracts
- input/output structures
- editor detail contracts
- overview versus manage path contracts
- canonical entry payloads
- permission-gated exposure contracts

Architecture must not absorb those layers.


# ============================================================
# 27. FINAL RULE
# ============================================================

Civilization facility UI must be unified
as one architectural system.

Facilities may differ by category,
scale,
ownership,
and operational logic,
but they must still remain inside
one canonical structure:

builder-compatible
facility-type-aligned
canonical-ui-target-routed
detail-configurable
auto-operation-compatible
world-linked
intervention-capable

No facility UI may be designed
as a disconnected exception.



# ============================================================
# FILE: 3820002_RETAIL_OPERATION_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# RETAIL OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: retail-operation-ui
component: retail-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for retail facility operation in Civilization.

This document covers the operational UI structure
for store-type retail facilities.

This document must align with:

- Civilization Facility UI Architecture
- Facility Type Master Architecture
- Retail Detailed Configuration and Auto Operation Architecture
- Retail facility type and retail policy model documents

This document defines UI responsibility and UI structure.

This document does not redefine
retail business truth already owned
by retail-specific domain architectures.


# ============================================================
# 2. POSITION
# ============================================================

Retail operation UI is the canonical UI family
for store-type commerce in Civilization.

Retail UI is used after:

- facility placement
- store opening preparation
- post-placement setup

Retail UI is not:

- a replacement for facility placement UI
- a replacement for product master models
- a replacement for pricing models
- a replacement for shelf policy models
- a replacement for ordering models
- a replacement for staffing policy models

Retail UI is the operator-facing
management and observation architecture
for a live store operation.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- retail UI mode structure
- retail screen responsibility separation
- retail operation surface composition
- retail observation and intervention structure
- relationship between overview, setup, operation, and auto mode
- routing between retail common frame and retail specialized surfaces

This document must not redefine:

- exact retail shelf policy logic
- exact pricing formulas
- exact ordering formulas
- exact staffing algorithms
- exact KPI formulas
- exact retail inventory model truth

Those remain owned by
existing retail architectures,
retail policy models,
retail runtime documents,
and lower interface layers.


# ============================================================
# 4. RETAIL SERVICE TRUTH
# ============================================================

Retail operation UI belongs to
the retail_and_store_operation family.

Retail service truth includes
direct store operations such as:

- convenience retail
- grocery retail
- general store
- specialty store
- direct farm retail
- station kiosk
- cooperative store
- local market stall when store truth dominates
- company direct store
- pharmacy-misc retail where retail truth dominates

Retail UI must resolve from
canonical_ui_target
and not from shell appearance alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Retail UI must allow the operator
to understand and manage a live store
without turning store operation
into an opaque background simulation
or a detached mini-game.

Retail UI must expose:

- what is being sold
- how space is used
- how stock is moving
- how prices are controlled
- how staffing is arranged
- what automation is doing
- what risks are emerging
- what manual intervention is possible


# ============================================================
# 6. RETAIL UI LIFECYCLE
# ============================================================

The canonical retail UI lifecycle is:

post-placement setup
-> opening preparation
-> catalog and section setup
-> shelf / display setup
-> ordering and replenishment setup
-> pricing setup
-> staffing setup
-> auto-operation
-> KPI observation
-> issue detection
-> intervention
-> resumed auto-operation

Retail UI must support
this continuous loop explicitly.


# ============================================================
# 7. RETAIL UI MODES
# ============================================================

Retail UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode
- intervention_mode
- overview_mode
- owner_mode
- manager_mode
- staff_mode where appropriate
- inspection_mode where appropriate
- tenant_mode where appropriate

Visitor-facing browsing surfaces
may exist,
but they are not the main subject
of this operation UI architecture.


# ============================================================
# 8. RETAIL COMMON SURFACES
# ============================================================

Retail UI must inherit
the common facility UI frame
and must expose retail-specialized surfaces.

Canonical retail surfaces include:

- store summary surface
- store identity and ownership surface
- facility and floor / zone surface
- operation status surface
- merchandise structure surface
- shelf and display surface
- ordering and replenishment surface
- inventory and stock health surface
- pricing and discount surface
- staffing and shift surface
- automation and policy surface
- KPI and report surface
- issue and inspection surface
- history and event surface
- permission and role surface
- linked supplier / logistics / chain surface


# ============================================================
# 9. STORE SUMMARY SURFACE
# ============================================================

The store summary surface must provide
an operator-readable overview of the current store state.

This surface should allow fast understanding of:

- store type
- open / closed state
- key stock condition
- recent sales state
- current staffing level
- active issues
- current automation posture
- priority alerts
- recent intervention history

The summary surface is the default landing surface
for management entry.


# ============================================================
# 10. MERCHANDISE STRUCTURE SURFACE
# ============================================================

The merchandise structure surface defines
what the store intends to sell.

This surface is responsible for:

- category visibility
- category grouping
- category activation
- merchandise breadth selection
- essential-goods emphasis where needed
- category priority observation

This surface must not redefine
product master truth.

It defines the operator-facing structure
for current store assortment.


# ============================================================
# 11. SHELF AND DISPLAY SURFACE
# ============================================================

The shelf and display surface is the canonical UI surface
for shelf-space and display-space management.

This surface must support
operator understanding of:

- section allocation
- category-to-space allocation
- display emphasis
- shortage-prone sections
- dead-space risk
- high-demand section visibility
- cleanliness and presentation state where relevant

This document defines the surface role only.

Exact shelf policy logic remains
in retail-specific policy and model documents.


# ============================================================
# 12. ORDERING AND REPLENISHMENT SURFACE
# ============================================================

This surface covers
stock inflow control
from an operator viewpoint.

This surface should support:

- reorder posture
- supply risk visibility
- lead-time awareness
- replenishment priority
- emergency replenishment triggers
- chain or supplier dependency visibility
- automation state for replenishment

This surface must clarify
what is automated
and what still requires intervention.


# ============================================================
# 13. INVENTORY AND STOCK HEALTH SURFACE
# ============================================================

This surface covers
the present health of inventory.

It must expose:

- shortage risk
- overstock risk
- spoilage or freshness risk where relevant
- fast-moving versus stagnant stock
- stock imbalance by category
- backroom versus front display visibility where relevant

This is an observation and action surface.

It must not become
an unstructured raw inventory dump.


# ============================================================
# 14. PRICING AND DISCOUNT SURFACE
# ============================================================

This surface covers
operator-visible retail pricing posture.

It should allow understanding of:

- current pricing stance
- discount posture
- margin pressure
- category-level pricing signals
- emergency price correction needs
- policy-based auto pricing state where supported

This document does not define
pricing formulas.

It defines the UI responsibility
for price management and observation.


# ============================================================
# 15. STAFFING AND SHIFT SURFACE
# ============================================================

This surface covers
human operation capacity.

It should expose:

- staffing sufficiency
- role coverage
- shift imbalance
- rush-time pressure
- cleanliness or inspection workload pressure
- checkout / service bottleneck indicators
- manual staffing intervention needs

This surface may connect to
larger company staffing systems,
but must still preserve
store-local operational visibility.


# ============================================================
# 16. AUTOMATION AND POLICY SURFACE
# ============================================================

Retail domains that support auto-operation
must expose a dedicated automation surface.

This surface must clarify:

- which policies are active
- which decisions are automated
- current automation confidence
- current drift or warning conditions
- thresholds that trigger intervention
- recent automated actions of significance

Auto operation must be observable.

Automation must not be hidden.


# ============================================================
# 17. KPI AND REPORT SURFACE
# ============================================================

The KPI surface must provide
retail-meaningful operational visibility.

Typical KPI groups include:

- sales movement
- stock turnover state
- shortage frequency
- staffing sufficiency
- inspection and cleanliness status
- customer satisfaction signals where supported
- category performance imbalance
- waste or spoilage pressure where relevant

This document does not define exact KPI formulas.

It defines the UI obligation
to expose KPI families clearly.


# ============================================================
# 18. ISSUE AND INSPECTION SURFACE
# ============================================================

Retail operation requires
explicit issue visibility.

This surface should collect
material operational problems such as:

- stockout pressure
- cleanliness warnings
- compliance or inspection concerns
- service bottlenecks
- unusual shrinkage risk where supported
- supply disruption
- emergency staffing shortage

This surface is the main bridge
into intervention mode.


# ============================================================
# 19. INTERVENTION STRUCTURE
# ============================================================

Retail intervention must be explicit and bounded.

Typical intervention families include:

- urgent restock response
- emergency staffing adjustment
- temporary price correction
- section or display reprioritization
- cleanliness and inspection response
- essential-goods continuity correction
- temporary operating-hours correction where allowed

Intervention actions must be connected
to visible store conditions.

Intervention must never feel
like editing hidden simulation variables.


# ============================================================
# 20. CHAIN / MULTI-SITE RELATION
# ============================================================

A retail store may belong to
a chain or larger company structure.

Retail UI must support:

- local store view
- chain-aware reference view
- supplier linkage awareness
- logistics linkage awareness

However,
chain context must not erase
store-local reality.

The store must remain operable
as a local facility.


# ============================================================
# 21. TENANT AND FACILITY RELATION
# ============================================================

A retail operation may exist inside:

- a standalone facility
- a market section
- a station facility
- a multi-tenant commercial building
- a mixed complex

Tenant context may alter entry surface
and facility relationship surface.

Tenant context must not redefine
retail service truth.


# ============================================================
# 22. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
retail operation UI-edited truths such as:

- retail section structure
- retail assortment structure
- display grouping
- operator-visible intervention entities
- stock health grouping
- issue grouping where needed

090.interface should define
retail UI contracts such as:

- setup input surfaces
- shelf / display editor contracts
- pricing editor contracts
- replenishment editor contracts
- staffing adjustment surfaces
- KPI payload grouping
- issue and alert exposure contracts


# ============================================================
# 23. FINAL RULE
# ============================================================

Retail operation UI in Civilization must remain:

- facility-type aligned
- canonical-ui-target routed
- setup-capable
- auto-operation compatible
- intervention-capable
- store-local
- chain-aware
- world-linked

Retail UI must not be treated
as a disconnected commerce mini-game.



# ============================================================
# FILE: 3820003_HOUSING_AND_RESIDENCE_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# HOUSING AND RESIDENCE UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: housing-and-residence-ui
component: housing-and-residence-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for housing and residence operations in Civilization.

This document covers the UI family
where living truth dominates.

This document must align with:

- Civilization Facility UI Architecture
- Housing Builder Architecture
- Facility Placement Architecture
- Construction and Real Estate Detailed Configuration and Auto Operation Architecture
- residence-related model and rights documents

This document defines
the residence-side UI architecture.

It does not redefine
real-estate asset logic,
contract logic,
or property-finance truth.


# ============================================================
# 2. POSITION
# ============================================================

Housing and residence UI is the canonical UI family
for living-oriented facilities and living-oriented districts.

This family includes
cases where the main truth is:

- living
- residing
- occupying as a resident
- maintaining daily life continuity
- household or resident well-being
- neighborhood life context

Housing and residence UI is not identical to:

- real estate asset operation
- temporary lodging operation
- tenant office operation
- institutional allocation alone

Those may connect,
but they are not the same UI truth.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- residence UI structure
- living-oriented screen responsibility
- housing operation surface composition
- district and dwelling relationship structure
- resident-facing and owner-facing separation
- relation between living truth and linked property truth

This document must not redefine:

- asset valuation formulas
- contract law details
- mortgage logic
- rent collection internals
- property vacancy algorithms
- construction project internals
- temporary lodging turnover logic

Those remain in
real-estate,
construction,
lodging,
and lower-layer documents.


# ============================================================
# 4. RESIDENCE SERVICE TRUTH
# ============================================================

Residence UI belongs to
the residence_and_living family.

This family may include:

- private home
- detached house
- apartment residence
- high-density residence
- mixed living district
- residence block
- family-centered residential unit
- employee residence where living truth dominates
- student residence where living truth dominates
- neighborhood residence support context

Residence UI must be selected
when the primary truth is
daily living continuity,
not asset trading truth.


# ============================================================
# 5. CORE GOAL
# ============================================================

Residence UI must allow
the operator or resident-side authority
to understand and manage living conditions
as part of the persistent world.

Residence UI must expose:

- who lives here
- how the dwelling is structured
- whether the dwelling is suitable
- how occupancy is changing
- whether daily life support is stable
- how the residence relates to its neighborhood
- what issues require intervention

Residence UI must not collapse
into pure property bookkeeping.


# ============================================================
# 6. HOUSING UI LIFECYCLE
# ============================================================

The canonical residence UI lifecycle is:

housing placement or assignment
-> residential setup
-> occupancy initialization
-> living condition setup
-> neighborhood linkage confirmation
-> ongoing residence operation
-> issue detection
-> intervention
-> continued daily living operation
-> upgrade / reallocation / restructuring where supported

Residence UI must support
long-lived continuity.


# ============================================================
# 7. RESIDENCE UI MODES
# ============================================================

Residence UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- resident_mode
- household_mode where appropriate
- owner_mode where appropriate
- manager_mode where appropriate
- authority_mode where appropriate

Not every residence requires
every mode,
but the architecture must support
context separation.


# ============================================================
# 8. RESIDENCE COMMON SURFACES
# ============================================================

Residence UI must inherit
the common facility UI frame
and must expose residence-specialized surfaces.

Canonical residence surfaces include:

- residence summary surface
- dwelling identity surface
- resident and household surface
- unit / room / structure surface
- occupancy and capacity surface
- comfort and livability surface
- utilities and maintenance surface
- fee / cost / rent visibility surface where appropriate
- neighborhood linkage surface
- safety and life-support surface
- automation and policy surface where supported
- issue and alert surface
- history and residence event surface
- permission and access surface
- linked property / district / support facility surface


# ============================================================
# 9. RESIDENCE SUMMARY SURFACE
# ============================================================

The residence summary surface must provide
fast understanding of present living state.

This includes visibility into:

- residence type
- occupancy state
- basic livability state
- active issues
- household composition where appropriate
- maintenance warnings
- neighborhood dependence signals
- current intervention needs

The summary surface is the default landing surface
for residence management entry.


# ============================================================
# 10. DWELLING IDENTITY SURFACE
# ============================================================

This surface defines
what the residence is.

It should expose:

- dwelling type
- residence classification
- ownership / management context
- public or private status where relevant
- district placement context
- associated building or block identity

This surface must clarify
the living identity of the residence
without collapsing into pure asset treatment.


# ============================================================
# 11. RESIDENT AND HOUSEHOLD SURFACE
# ============================================================

This surface is responsible for
living-person composition.

It should expose:

- current residents
- household grouping where supported
- resident count
- occupancy change indicators
- special support needs where relevant
- assignment context for dormitory-like or managed residences where relevant

This surface must center
residents as living entities,
not only occupancy numbers.


# ============================================================
# 12. UNIT / ROOM / STRUCTURE SURFACE
# ============================================================

This surface covers
the internal living structure.

It may include visibility into:

- unit structure
- room grouping
- shared versus private areas
- household suitability
- room assignment context where relevant
- basic furnishing / facility completeness where supported

This document defines
surface responsibility only.

Detailed room models belong
to lower layers where needed.


# ============================================================
# 13. OCCUPANCY AND CAPACITY SURFACE
# ============================================================

This surface covers
residential load and suitability.

It must allow understanding of:

- vacancy
- crowding
- underuse
- target occupancy versus actual occupancy
- turnover signals
- assignment sufficiency where relevant
- expansion or reallocation pressure

Residence UI must treat occupancy
as a living-quality issue,
not only a property yield issue.


# ============================================================
# 14. COMFORT AND LIVABILITY SURFACE
# ============================================================

This surface is a core residence surface.

It should expose:

- comfort condition
- cleanliness or sanitation state where relevant
- privacy sufficiency where relevant
- access to daily-life support
- environmental suitability
- life convenience
- quality-of-life warning signals

Residence UI must visibly distinguish
a formally occupied dwelling
from a truly livable dwelling.


# ============================================================
# 15. UTILITIES AND MAINTENANCE SURFACE
# ============================================================

This surface covers
basic residence continuity.

It should expose:

- utility availability
- maintenance burden
- repair state
- aging or deterioration state
- habitability risk
- urgent maintenance warnings

This surface may connect to
property-management or infrastructure layers,
but must preserve
residence-local visibility.


# ============================================================
# 16. NEIGHBORHOOD LINKAGE SURFACE
# ============================================================

Residence is not isolated.

This surface must connect residence
to local life context.

It should expose:

- district context
- nearby service access
- transport access
- school / hospital / market accessibility where relevant
- community support access
- safety context
- neighborhood quality signals

Residence UI must remain world-linked
through neighborhood visibility.


# ============================================================
# 17. SAFETY AND LIFE-SUPPORT SURFACE
# ============================================================

This surface covers
life continuity risks.

It should expose:

- household vulnerability where relevant
- emergency support conditions
- resident-specific support needs where relevant
- safety concerns
- health-related living concerns where appropriately routed
- life-support stability

This surface does not replace
medical or welfare canonical UIs.

It provides residence-side visibility
for living continuity.


# ============================================================
# 18. AUTOMATION AND POLICY SURFACE
# ============================================================

Where residence domains support
automated management or policy-driven operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current management posture
- escalation conditions
- assignment or maintenance automation state where supported
- recent automated changes of significance

Automation must remain visible
and reviewable.


# ============================================================
# 19. ISSUE AND ALERT SURFACE
# ============================================================

Residence operation requires
explicit issue visibility.

Typical residence-side issue families include:

- overcrowding
- under-maintenance
- livability degradation
- safety concern
- utility disruption
- neighborhood dependency concern
- resident support concern
- assignment inconsistency where relevant

This is the canonical bridge
into intervention mode.


# ============================================================
# 20. INTERVENTION STRUCTURE
# ============================================================

Residence intervention must be explicit.

Typical intervention families include:

- resident reassignment where supported
- maintenance escalation
- livability correction
- occupancy correction
- safety correction
- support-service linkage
- neighborhood dependency response
- partial closure or relocation response where supported

Intervention must connect
to visible living conditions.

Residence intervention must not feel like
editing hidden numbers only.


# ============================================================
# 21. DISTRICT AND BLOCK RELATION
# ============================================================

Residence UI may operate at multiple scales.

Possible scales include:

- single dwelling
- multi-unit residence
- residence block
- mixed living district
- settlement living area

The architecture must support
scale transitions
without breaking living truth.

A district overview may exist,
but local dwelling truth must remain visible.


# ============================================================
# 22. RESIDENCE / REAL ESTATE RELATION
# ============================================================

Residence and real estate are related
but not identical.

Residence UI covers:

- living continuity
- resident composition
- livability
- neighborhood linkage
- dwelling suitability

Real estate UI covers:

- asset and contract truth
- rent and vacancy business posture
- portfolio and property-management logic
- financial and legal property control

A residence may link to real-estate surfaces,
but residence UI must not be absorbed by asset logic.


# ============================================================
# 23. RESIDENCE / LODGING RELATION
# ============================================================

Residence and lodging are related
but not identical.

Residence truth is long-lived daily living.

Lodging truth is temporary stay operation.

Residence UI may connect to lodging-like contexts
when temporary-stay structures exist,
but the canonical UI family must be determined
by dominant service truth.


# ============================================================
# 24. DORMITORY RELATION
# ============================================================

Dormitory-like facilities require careful routing.

If living continuity dominates,
dormitory may use residence-family UI.

If school life dominates,
routing may belong primarily
to education-family UI.

If company allocation dominates,
routing may connect strongly
to company premises or managed residence logic.

Dormitory must never be classified
by label alone.


# ============================================================
# 25. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
residence UI-edited truths such as:

- dwelling structure
- household grouping
- residence occupancy grouping
- livability grouping
- maintenance state grouping
- neighborhood dependency grouping
- intervention target entities where needed

090.interface should define
residence UI contracts such as:

- residential setup surfaces
- resident assignment surfaces
- room / unit structure surfaces
- livability and maintenance exposure contracts
- neighborhood linkage exposure contracts
- issue and intervention exposure contracts


# ============================================================
# 26. FINAL RULE
# ============================================================

Housing and residence UI in Civilization must remain:

- living-truth aligned
- world-linked
- neighborhood-aware
- occupancy-visible
- livability-visible
- issue-visible
- intervention-capable
- clearly separated from pure asset logic

Residence UI must treat housing
as lived reality,
not only as property inventory.



# ============================================================
# FILE: 3820004_REAL_ESTATE_OPERATION_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# REAL ESTATE OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: real-estate-operation-ui
component: real-estate-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for real-estate and property operation in Civilization.

This document covers the UI family
where asset, contract, leasing,
property management,
and ownership-control truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- Construction and Real Estate Detailed Configuration and Auto Operation Architecture
- Housing Builder Architecture
- Facility Type Master Architecture
- residence, ownership, rights, leasing,
  and property-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
legal, financial, contractual,
or valuation truth already owned
by real-estate domain architectures
and lower layers.


# ============================================================
# 2. POSITION
# ============================================================

Real estate operation UI is the canonical UI family
for property-oriented operation in Civilization.

This family applies when the primary truth is:

- property asset management
- ownership control
- leasing and tenancy control
- portfolio visibility
- building maintenance posture
- vacancy and occupancy business posture
- rent and fee administration
- redevelopment and property-use control

Real estate UI is not identical to:

- residence living-truth UI
- temporary lodging operation UI
- pure builder placement UI
- tenant office identity UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- real-estate UI structure
- property-management screen responsibility
- asset and tenancy observation surfaces
- relation between property truth and linked residence truth
- relation between property truth and linked construction truth
- overview, operation, auto, and intervention UI flow

This document must not redefine:

- contract law details
- mortgage rules
- financing formulas
- tax formulas
- inheritance rules
- legal title internals
- valuation algorithms
- vacancy algorithms
- rent-calculation formulas
- construction execution internals

Those remain owned by
existing domain architectures,
rights documents,
finance documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. REAL ESTATE SERVICE TRUTH
# ============================================================

Real estate operation UI belongs to
the real_estate_and_construction family
when property or asset truth dominates.

This family may include:

- rental property operation
- property management company operation
- commercial property operation
- residential property portfolio operation
- industrial property operation
- mixed-use property operation
- sales and leasing control context
- owned building administration
- redevelopment control context

Real estate UI must resolve from
canonical_ui_target
and dominant service truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Real estate UI must allow
the operator, owner, or manager
to understand the state of property assets
as persistent world objects.

Real estate UI must expose:

- what properties exist
- who owns or controls them
- how they are occupied
- how they are performing
- what contracts or allocations matter
- what maintenance burden exists
- what vacancy or turnover pressure exists
- what interventions are required

Real estate UI must not collapse
into abstract bookkeeping only.

Property must remain world-linked.


# ============================================================
# 6. REAL ESTATE UI LIFECYCLE
# ============================================================

The canonical real-estate UI lifecycle is:

property creation or acquisition linkage
-> initial property setup
-> ownership and control setup
-> tenancy / leasing setup where applicable
-> maintenance and portfolio setup
-> operation
-> observation
-> issue detection
-> intervention
-> continued operation
-> redevelopment / transfer / restructuring where supported

This lifecycle must support
long-lived persistent property control.


# ============================================================
# 7. REAL ESTATE UI MODES
# ============================================================

Real estate UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode
- manager_mode
- leasing_mode where appropriate
- authority_mode where appropriate
- inspection_mode where appropriate

Public browsing or resident-facing access
may connect to property surfaces,
but they are not the main subject
of this operation UI architecture.


# ============================================================
# 8. REAL ESTATE COMMON SURFACES
# ============================================================

Real estate UI must inherit
the common facility UI frame
and must expose real-estate-specialized surfaces.

Canonical real-estate surfaces include:

- property summary surface
- property identity and ownership surface
- portfolio surface
- building and site surface
- tenancy and occupancy surface
- rent, fee, and revenue surface
- vacancy and turnover surface
- maintenance and condition surface
- contract and rights visibility surface
- redevelopment and use-control surface
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and event surface
- permission and authority surface
- linked residence / construction / facility surface


# ============================================================
# 9. PROPERTY SUMMARY SURFACE
# ============================================================

The property summary surface must provide
fast understanding of current property state.

This should expose visibility into:

- property type
- current ownership / management posture
- occupancy state
- vacancy pressure
- revenue / cost posture where appropriate
- maintenance burden
- active issues
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for property-management entry.


# ============================================================
# 10. PROPERTY IDENTITY AND OWNERSHIP SURFACE
# ============================================================

This surface defines
what the property is
and who controls it.

It should expose:

- property classification
- building or site identity
- ownership context
- manager context
- public / private / company / institutional posture where relevant
- jurisdiction or district context
- linked facility-type identity where appropriate

This surface must clarify
asset-control truth
without replacing lower legal documents.


# ============================================================
# 11. PORTFOLIO SURFACE
# ============================================================

Many real-estate operators manage
multiple properties.

The portfolio surface must support:

- multi-property visibility
- grouping by asset family
- grouping by district or use
- group-level health observation
- property comparison
- concentration risk visibility where appropriate
- shared issue visibility

Portfolio view must not erase
single-property reality.

Local property truth must remain reachable.


# ============================================================
# 12. BUILDING AND SITE SURFACE
# ============================================================

This surface covers
the physical property context.

It should expose:

- building or site composition
- floor or section structure where relevant
- lot or parcel relation where relevant
- mixed-use segmentation where relevant
- linked tenant or use areas
- structural condition signals where supported

This is a property-operation surface,
not a pure builder surface.


# ============================================================
# 13. TENANCY AND OCCUPANCY SURFACE
# ============================================================

This surface covers
who is occupying the property
and under what practical state.

It should expose:

- occupied units or areas
- vacant units or areas
- turnover pressure
- tenancy grouping where applicable
- managed allocation state
- mismatch between intended and actual use
- special assignment cases where relevant

This surface must distinguish
business occupancy posture
from residence livability posture.

Residence-side truth belongs
to residence UI.


# ============================================================
# 14. RENT, FEE, AND REVENUE SURFACE
# ============================================================

This surface covers
operator-visible money posture.

It should expose:

- rent or fee posture
- collection state visibility where appropriate
- revenue pressure
- underperforming areas
- pricing posture at a management level
- exception handling visibility where needed

This document does not define
financial formulas.

It defines the UI responsibility
to expose property-revenue posture clearly.


# ============================================================
# 15. VACANCY AND TURNOVER SURFACE
# ============================================================

This surface is central
to property operation.

It should expose:

- vacancy concentration
- underused areas
- turnover risk
- unstable occupancy
- category mismatch
- pressure for reallocation or repositioning
- leasing intervention need

This surface must make
property underperformance visible.


# ============================================================
# 16. MAINTENANCE AND CONDITION SURFACE
# ============================================================

This surface covers
building continuity and condition.

It should expose:

- maintenance burden
- repair backlog
- deterioration state
- urgent condition issues
- safety-related building warnings where appropriate
- service disruption caused by condition problems
- upgrade or refurbishment pressure

This surface may connect to
construction or infrastructure domains,
but must preserve property-local visibility.


# ============================================================
# 17. CONTRACT AND RIGHTS VISIBILITY SURFACE
# ============================================================

Real-estate UI requires
visibility into property-control truth.

This surface should expose:

- contract presence and category visibility
- ownership / control posture
- managed leasing posture
- transfer or rights-change visibility
- restriction or special-condition visibility where supported
- approval dependencies where relevant

This is a visibility surface.

It does not replace
formal rights-layer truth.


# ============================================================
# 18. REDEVELOPMENT AND USE-CONTROL SURFACE
# ============================================================

This surface covers
future-oriented property decisions.

It should expose:

- redevelopment pressure
- use-change pressure
- underperforming property repositioning signals
- district-fit considerations
- rebuild / repurpose / upgrade candidates
- linked builder or project transition entry where supported

This surface bridges
operation truth
to future construction or redevelopment action.


# ============================================================
# 19. AUTOMATION AND POLICY SURFACE
# ============================================================

Where real-estate domains support
detailed configuration and auto operation,
the UI must expose a dedicated automation surface.

This surface should clarify:

- active operation posture
- automated versus manual areas
- current vacancy / maintenance / leasing automation state
- thresholds for escalation
- recent automated actions of significance
- current drift or warning state

Automation must remain visible,
reviewable,
and interruptible.


# ============================================================
# 20. KPI AND REPORT SURFACE
# ============================================================

Real-estate KPI visibility is mandatory.

Typical KPI groups include:

- occupancy posture
- vacancy pressure
- rent / fee collection posture where supported
- maintenance burden
- property condition quality
- turnover instability
- property-group comparison
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 21. ISSUE AND ALERT SURFACE
# ============================================================

Real-estate operation requires
explicit issue visibility.

Typical issue families include:

- critical vacancy
- unmanaged turnover
- maintenance backlog
- building condition degradation
- rights or contract inconsistency visibility
- property-use mismatch
- unprofitable area concentration
- urgent intervention trigger

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 22. INTERVENTION STRUCTURE
# ============================================================

Real-estate intervention must be explicit.

Typical intervention families include:

- leasing correction
- occupancy reallocation where supported
- maintenance escalation
- temporary usage correction
- redevelopment preparation
- fee or rent posture correction where allowed
- rights / approval follow-up routing
- managed closure or restructuring where supported

Intervention must connect
to visible property conditions.

Intervention must not feel like
editing hidden finance variables only.


# ============================================================
# 23. REAL ESTATE / RESIDENCE RELATION
# ============================================================

Real estate and residence are related
but not identical.

Real estate UI covers:

- property asset truth
- contract and control truth
- portfolio and management truth
- vacancy and revenue posture
- condition and maintenance posture

Residence UI covers:

- living continuity
- resident composition
- livability
- neighborhood linkage
- daily life support

A property may link to residence surfaces,
but residence truth must remain separate.


# ============================================================
# 24. REAL ESTATE / CONSTRUCTION RELATION
# ============================================================

Real estate and construction are related
but not identical.

Construction truth covers:

- project execution
- build activity
- work allocation
- delivery progress
- physical creation or repair execution

Real-estate UI may link to
construction actions,
but construction operation truth
must remain in its own domain documents.


# ============================================================
# 25. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
real-estate UI-edited truths such as:

- property grouping
- tenancy grouping
- vacancy grouping
- condition grouping
- portfolio grouping
- intervention target entities
- redevelopment candidate grouping where needed

090.interface should define
real-estate UI contracts such as:

- property summary exposure
- tenancy and occupancy surfaces
- rent / fee visibility surfaces
- maintenance and condition editor surfaces
- rights and contract visibility contracts
- intervention exposure contracts
- portfolio comparison surfaces


# ============================================================
# 26. FINAL RULE
# ============================================================

Real-estate operation UI in Civilization must remain:

- asset-truth aligned
- contract-and-control aware
- portfolio-capable
- occupancy-visible
- vacancy-visible
- condition-visible
- intervention-capable
- world-linked
- clearly separated from residence living-truth UI

Real-estate UI must treat property
as controlled world assets,
not as abstract spreadsheet rows only.



# ============================================================
# FILE: 3820005_STREAMER_AGENCY_OPERATION_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# STREAMER AGENCY OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: streamer-agency-operation-ui
component: streamer-agency-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for streamer agency operation in Civilization.

This document covers the UI family
where streamer-agency company operation,
roster management,
Civilization-side announcement,
ordinary goods sales,
physical fulfillment,
and mirrored revenue observation dominate.

This document must align with:

- Civilization Facility UI Architecture
- Company Builder Architecture
- company site / tenant / premises architectures
- Streamer Agency Architecture
- Streamer Agency and Streaming Revenue Mirror Architecture
- Streamer Agency Product Review and Fulfillment Architecture
- Marketplace-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
StreamingOS source-of-truth objects,
stream-native event truth,
or lower commerce and fulfillment contracts.


# ============================================================
# 2. POSITION
# ============================================================

Streamer agency operation UI is the canonical UI family
for Civilization-side streamer agency structures.

Streamer agency belongs to Civilization company operation.

Streamer agency UI is used when the primary truth is:

- talent scouting
- roster administration
- agency-side support and management
- Civilization-side announcement operation
- ordinary goods sales coordination
- physical fulfillment coordination
- mirrored revenue intake observation

Streamer agency UI is not:

- a replacement for StreamingOS truth
- a replacement for streaming-native runtime objects
- a replacement for Marketplace canonical commerce contracts
- a replacement for fulfillment logistics truth

Those connect to this UI family,
but remain distinct sources of truth.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- streamer-agency UI structure
- management and observation surface composition
- roster / goods / fulfillment / revenue-mirror UI responsibility
- relationship between company premises and agency operation surfaces
- overview, operation, auto, and intervention flow where supported

This document must not redefine:

- StreamingOS source-of-truth identities
- stream-native event objects
- revenue-mirror internals
- review workflow internals
- product catalog truth owned elsewhere
- fulfillment contract internals
- Marketplace transaction truth
- lower logistics truth

Those remain owned by
their existing architectures
and lower-layer documents.


# ============================================================
# 4. STREAMER AGENCY SERVICE TRUTH
# ============================================================

Streamer agency operation UI belongs to
the streamer_agency_and_creator_support family.

This family may include:

- streamer agency office operation
- agency roster operation
- scout and candidate review context
- announcement operation context
- ordinary goods sales coordination
- physical-product fulfillment coordination
- mirrored revenue observation context
- creator support company structures in Civilization
  where streamer agency truth dominates

Streamer agency UI must resolve from
canonical_ui_target
and company-operation truth,
not from branding alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Streamer agency UI must allow
the operator to understand and manage
a Civilization-side agency structure
without confusing it
with StreamingOS-native truth.

Streamer agency UI must expose:

- who belongs to the agency
- what scouting and roster state exists
- what announcements or promotions are active
- what ordinary goods are being handled
- what fulfillment state exists
- what mirrored revenue is visible
- what issues require intervention

Boundary clarity is mandatory.


# ============================================================
# 6. STREAMER AGENCY UI LIFECYCLE
# ============================================================

The canonical streamer agency UI lifecycle is:

company / premises setup
-> agency setup
-> roster initialization
-> scouting and intake operation
-> announcement and promotion setup
-> ordinary goods operation setup
-> physical fulfillment linkage
-> mirrored revenue observation
-> issue detection
-> intervention
-> continued agency operation

This lifecycle must preserve
Civilization-side company continuity.


# ============================================================
# 7. STREAMER AGENCY UI MODES
# ============================================================

Streamer agency UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode
- manager_mode
- scout_mode where appropriate
- fulfillment_mode where appropriate
- finance_observation_mode where appropriate

Fan-facing or public promotion surfaces
may connect to this family,
but are not the primary subject
of this operation UI architecture.


# ============================================================
# 8. STREAMER AGENCY COMMON SURFACES
# ============================================================

Streamer agency UI must inherit
the common facility UI frame
and must expose agency-specialized surfaces.

Canonical streamer-agency surfaces include:

- agency summary surface
- agency identity and premises surface
- roster surface
- scouting and intake surface
- support and assignment surface
- announcement and promotion surface
- ordinary goods and sales surface
- product review visibility surface
- fulfillment surface
- mirrored revenue surface
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and event surface
- permission and role surface
- linked company / marketplace / logistics / streaming-boundary surface


# ============================================================
# 9. AGENCY SUMMARY SURFACE
# ============================================================

The agency summary surface must provide
fast understanding of current agency state.

This should expose visibility into:

- agency identity
- current roster size or posture
- active scouting or intake pressure
- active announcement or promotion state
- goods and fulfillment status
- mirrored revenue posture
- active issues
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for agency-management entry.


# ============================================================
# 10. AGENCY IDENTITY AND PREMISES SURFACE
# ============================================================

This surface defines
what the agency structure is
and where it operates.

It should expose:

- company identity
- agency branch identity where relevant
- premises context
- linked office / site / tenant context
- organizational posture
- operator / manager context
- public-facing presentation posture where relevant

This surface must keep
agency-company truth visible.


# ============================================================
# 11. ROSTER SURFACE
# ============================================================

The roster surface is central
to agency operation.

It should expose:

- active roster members
- roster grouping
- support status
- role or activity grouping where supported
- current agency-side management posture
- imbalance or overload signals
- roster-related issue visibility

This surface covers Civilization-side
agency roster administration.

It must not replace
StreamingOS-native identity truth.


# ============================================================
# 12. SCOUTING AND INTAKE SURFACE
# ============================================================

This surface covers
candidate and intake activity
from an agency-operation viewpoint.

It should expose:

- scouting posture
- candidate review visibility
- intake pressure
- pipeline stage visibility where supported
- staffing or support burden
- pending decision visibility

This is an agency management surface.

It does not redefine
candidate truth held elsewhere.


# ============================================================
# 13. SUPPORT AND ASSIGNMENT SURFACE
# ============================================================

Streamer agencies often provide
management-side support and assignment coordination.

This surface should expose:

- internal support posture
- assignment grouping where appropriate
- operational burden visibility
- coordination pressure
- unresolved support issues
- required management follow-up

This surface keeps agency operation visible
as an organizational function,
not only as a sales surface.


# ============================================================
# 14. ANNOUNCEMENT AND PROMOTION SURFACE
# ============================================================

This surface covers
Civilization-side announcement operation.

It should expose:

- current announcement state
- promotion scheduling posture
- pending communication tasks
- campaign grouping where supported
- announcement issue visibility
- agency-side promotion burden

This surface must preserve
the boundary that StreamingOS
remains source-of-truth
for streaming-native activity.


# ============================================================
# 15. ORDINARY GOODS AND SALES SURFACE
# ============================================================

Streamer agency may support
ordinary Marketplace-compatible goods sales
inside Civilization.

This surface should expose:

- goods grouping
- sales posture
- active goods visibility
- sales burden or demand signals
- linked issue visibility
- coordination state with review and fulfillment

This surface is not
the full commerce truth layer.

It is the agency operation surface
for ordinary goods handling.


# ============================================================
# 16. PRODUCT REVIEW VISIBILITY SURFACE
# ============================================================

Where review flow exists,
the UI must expose review visibility.

This surface should expose:

- pending review visibility
- review-blocked items
- ready-state visibility
- correction-needed visibility
- routing into responsible follow-up flows

This is a visibility and coordination surface.

It does not redefine
review workflow internals.


# ============================================================
# 17. FULFILLMENT SURFACE
# ============================================================

Physical fulfillment is a major agency concern
when ordinary goods are handled.

This surface should expose:

- fulfillment posture
- pending shipment visibility
- backlog signals
- issue or delay visibility
- logistics linkage visibility
- fulfillment intervention need

This is an agency-facing coordination surface.

It does not replace
logistics source-of-truth layers.


# ============================================================
# 18. MIRRORED REVENUE SURFACE
# ============================================================

Where StreamingOS revenue is mirrored
into Civilization-side agency accounting visibility,
the UI must expose a mirrored revenue surface.

This surface should expose:

- mirrored revenue visibility
- period grouping where supported
- trend visibility
- anomaly visibility
- missing or delayed mirror visibility where relevant
- agency-side interpretation posture

This is an observation surface.

It does not redefine
the mirror-generation internals.


# ============================================================
# 19. AUTOMATION AND POLICY SURFACE
# ============================================================

Where agency domains support
policy-driven or partially automated operation,
the UI must expose an automation surface.

This surface should clarify:

- what is automated
- what remains manual
- current posture for agency workflows
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 20. KPI AND REPORT SURFACE
# ============================================================

Streamer agency KPI visibility is mandatory.

Typical KPI groups include:

- roster stability posture
- scouting pressure
- support burden
- announcement throughput
- goods-handling posture
- fulfillment backlog or delay posture
- mirrored revenue movement
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 21. ISSUE AND ALERT SURFACE
# ============================================================

Streamer agency operation requires
explicit issue visibility.

Typical issue families include:

- roster-management overload
- scouting backlog
- support failure or delay
- announcement blockage
- goods review blockage
- fulfillment delay
- mirrored revenue anomaly
- boundary inconsistency visibility

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 22. INTERVENTION STRUCTURE
# ============================================================

Streamer agency intervention must be explicit.

Typical intervention families include:

- roster correction
- scouting reprioritization
- management burden correction
- announcement correction
- goods-handling correction
- fulfillment escalation
- mirror anomaly follow-up
- cross-system boundary routing

Intervention must connect
to visible agency conditions.

Intervention must not feel like
editing hidden cross-system values only.


# ============================================================
# 23. COMPANY PREMISES RELATION
# ============================================================

Streamer agency often exists
inside company premises structures.

Agency UI may connect to:

- site surfaces
- premises surfaces
- tenant surfaces
- shared office or branch surfaces

However,
premises truth must not replace
agency operation truth.

Agency UI remains
a distinct operation family.


# ============================================================
# 24. STREAMINGOS BOUNDARY RULE
# ============================================================

Boundary clarity is mandatory.

StreamingOS remains the source of truth
for streaming-native objects and behaviors.

Civilization streamer agency UI may observe,
mirror,
coordinate,
or route work,
but must not silently absorb
StreamingOS truth.

Any cross-system visibility
must remain explicitly labeled
as mirrored,
linked,
or externally sourced where appropriate.


# ============================================================
# 25. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
streamer-agency UI-edited truths such as:

- agency roster grouping
- scouting grouping
- goods-handling grouping
- fulfillment issue grouping
- mirrored revenue observation grouping
- intervention target entities where needed

090.interface should define
streamer-agency UI contracts such as:

- agency summary exposure
- roster management surfaces
- scouting and intake surfaces
- announcement operation surfaces
- goods and review visibility surfaces
- fulfillment exposure contracts
- mirrored revenue exposure contracts
- issue and intervention exposure contracts


# ============================================================
# 26. FINAL RULE
# ============================================================

Streamer agency operation UI in Civilization must remain:

- company-operation aligned
- streamer-agency-truth aligned
- roster-visible
- support-visible
- goods-and-fulfillment-visible
- mirrored-revenue-visible
- intervention-capable
- boundary-clear with StreamingOS

Streamer agency UI must never blur
Civilization company truth
and StreamingOS source-of-truth objects.



# ============================================================
# FILE: 3820006_SCHOOL_OPERATION_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# SCHOOL OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: school-operation-ui
component: school-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for school and education-facility operation in Civilization.

This document covers the UI family
where education truth dominates.

This document must align with:

- Civilization Facility UI Architecture
- School Detailed Configuration and Auto Operation Architecture
- Housing and dormitory-related architectures where linked
- Facility Type Master Architecture
- education-related lower-layer model and interface documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
curriculum truth,
academic-cycle truth,
enrollment rule internals,
evaluation formulas,
or lower educational policy truth.


# ============================================================
# 2. POSITION
# ============================================================

School operation UI is the canonical UI family
for education-oriented facilities in Civilization.

This family applies when the primary truth is:

- education delivery
- student enrollment and progression
- teacher and staff allocation
- academic operation
- school safety and discipline
- campus and school-life coordination
- dormitory linkage where school truth dominates

School UI is not identical to:

- residence living-truth UI
- public training-only UI
- pure building placement UI
- generic administration UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- school UI structure
- school-operation screen responsibility
- relation between overview, operation, auto, and intervention
- school-specific surface composition
- relation between school truth and linked dormitory truth
- relation between school truth and linked public / civic functions

This document must not redefine:

- detailed curriculum internals
- exact academic scheduling formulas
- enrollment-rule algorithms
- grading formulas
- examination internals
- tuition formulas
- educational-rights policy internals
- lower student-record truth

Those remain owned by
existing school architectures,
education model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. SCHOOL SERVICE TRUTH
# ============================================================

School operation UI belongs to
the education_and_school family.

This family may include:

- public school
- private school
- university
- vocational school
- technical school
- commercial-support school
- business school
- finance academy
- large education complex
- boarding-school context where education truth dominates

School UI must resolve from
canonical_ui_target
and dominant service truth,
not from building appearance alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

School UI must allow
the operator to understand and manage
a living education institution
as part of the persistent Civilization world.

School UI must expose:

- who is being educated
- what programs are being delivered
- how teachers and staff are allocated
- what campus or facility capacity exists
- how student progression is behaving
- what safety or discipline issues are emerging
- what school-life support is required
- what intervention is needed

School UI must not collapse
into an abstract education ledger only.


# ============================================================
# 6. SCHOOL UI LIFECYCLE
# ============================================================

The canonical school UI lifecycle is:

post-placement setup
-> school identity and scope setup
-> enrollment and intake setup
-> academic and staffing setup
-> campus / facility / dormitory linkage setup where applicable
-> ongoing school operation
-> auto academic operation where supported
-> observation
-> issue detection
-> intervention
-> continued school operation

This lifecycle must support
Earth-like time flow
and long-lived institutional continuity.


# ============================================================
# 7. SCHOOL UI MODES
# ============================================================

School UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- teacher_mode where appropriate
- student_support_mode where appropriate
- authority_mode where appropriate
- public_information_mode where appropriate

Student-facing experience surfaces
may connect to school systems,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. SCHOOL COMMON SURFACES
# ============================================================

School UI must inherit
the common facility UI frame
and must expose school-specialized surfaces.

Canonical school surfaces include:

- school summary surface
- school identity and institution surface
- enrollment and student body surface
- program / course / curriculum visibility surface
- teacher and staff allocation surface
- campus / classroom / facility capacity surface
- dormitory and student-life linkage surface where applicable
- tuition / fee visibility surface where appropriate
- safety, discipline, and welfare surface
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and academic event surface
- permission and role surface
- linked residence / training / civic / support-facility surface


# ============================================================
# 9. SCHOOL SUMMARY SURFACE
# ============================================================

The school summary surface must provide
fast understanding of current institutional state.

This should expose visibility into:

- school type
- current enrollment posture
- staff sufficiency posture
- facility capacity posture
- active school-life issues
- academic-operation posture
- active alerts
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for school-management entry.


# ============================================================
# 10. SCHOOL IDENTITY AND INSTITUTION SURFACE
# ============================================================

This surface defines
what the school is
and what kind of institution it operates as.

It should expose:

- school classification
- institutional identity
- public / private / company / special posture where relevant
- linked district or jurisdiction context
- linked campus identity
- operating organization context
- education-scope visibility

This surface must clarify
education truth clearly.


# ============================================================
# 11. ENROLLMENT AND STUDENT BODY SURFACE
# ============================================================

This surface covers
who the school is serving.

It should expose:

- enrollment posture
- intake state
- student grouping where supported
- capacity pressure
- progression-stage grouping where supported
- support-needing student visibility where relevant
- imbalance or overload signals

This is a school-operation surface.

It must not replace
lower student-record truth.


# ============================================================
# 12. PROGRAM / COURSE / CURRICULUM VISIBILITY SURFACE
# ============================================================

This surface covers
what educational structure is active.

It should expose:

- active programs
- course grouping
- curriculum visibility
- specialization posture
- program-balance signals
- overburdened or under-supported areas
- academic focus posture

This is a visibility and management surface.

It does not redefine
curriculum or academic model internals.


# ============================================================
# 13. TEACHER AND STAFF ALLOCATION SURFACE
# ============================================================

This surface covers
human educational capacity.

It should expose:

- teacher allocation posture
- staff sufficiency
- role coverage
- overloaded areas
- support burden
- unfilled or unstable areas
- manual reassignment need

This surface may connect to
larger company or state staffing systems,
but must preserve
school-local operational visibility.


# ============================================================
# 14. CAMPUS / CLASSROOM / FACILITY CAPACITY SURFACE
# ============================================================

This surface covers
space and facility readiness
for education delivery.

It should expose:

- campus capacity
- classroom / facility allocation where supported
- overcrowding or underuse
- facility condition impact on education
- special-room or specialized-facility pressure where relevant
- linked dormitory or ancillary facility visibility where applicable

This is not a pure builder surface.

It is a live operational capacity surface.


# ============================================================
# 15. DORMITORY AND STUDENT-LIFE LINKAGE SURFACE
# ============================================================

Where school life includes boarding
or strong school-life support,
the UI must expose
a school-side dormitory and student-life linkage surface.

This surface should expose:

- dormitory linkage posture
- student-life support burden
- assignment visibility where appropriate
- school-life continuity concerns
- linked residence or support issue visibility
- escalation need for non-academic student-life concerns

This surface does not replace
residence-family truth.

It provides school-side operational visibility.


# ============================================================
# 16. TUITION / FEE VISIBILITY SURFACE
# ============================================================

Where relevant,
school operation UI should expose
money-related institutional visibility.

This surface may include:

- tuition posture
- fee visibility
- support or subsidy visibility where relevant
- non-payment or burden risk visibility where supported
- program-cost pressure visibility

This document does not define
fee formulas.

It defines the UI responsibility
to expose institutional money posture where needed.


# ============================================================
# 17. SAFETY, DISCIPLINE, AND WELFARE SURFACE
# ============================================================

This surface is central
to school operation.

It should expose:

- safety posture
- discipline concerns
- student welfare concerns
- incident visibility
- support burden
- escalation routes
- school-life stability signals

This surface may connect to
medical,
community-support,
or civic systems,
but must preserve
school-side operational truth.


# ============================================================
# 18. AUTOMATION AND POLICY SURFACE
# ============================================================

Where school domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current academic-operation posture
- staffing / scheduling / support automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 19. KPI AND REPORT SURFACE
# ============================================================

School KPI visibility is mandatory.

Typical KPI groups include:

- enrollment posture
- capacity sufficiency
- staff sufficiency
- program balance
- student progression posture
- welfare and discipline issue posture
- campus burden
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 20. ISSUE AND ALERT SURFACE
# ============================================================

School operation requires
explicit issue visibility.

Typical issue families include:

- overcapacity or undercapacity
- teacher shortage
- student-life support overload
- discipline issue
- safety concern
- dormitory-linked issue where relevant
- academic-operation instability
- facility-capacity mismatch

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 21. INTERVENTION STRUCTURE
# ============================================================

School intervention must be explicit.

Typical intervention families include:

- intake correction
- program reprioritization
- teacher or staff reassignment
- capacity correction
- student-life support escalation
- safety or discipline response
- dormitory or support-service linkage correction
- partial suspension or operating posture correction where supported

Intervention must connect
to visible school conditions.

Intervention must not feel like
editing hidden academic variables only.


# ============================================================
# 22. SCHOOL / RESIDENCE / TRAINING RELATION
# ============================================================

School UI is related to
residence,
training,
and civic support,
but is not identical to them.

School truth covers:

- education delivery
- student body operation
- academic continuity
- school-life institutional management

Residence truth covers:

- daily living continuity

Training truth covers:

- training-program-focused operation
- professional development emphasis
- completion and employment linkage

School UI may link to those surfaces,
but education truth must remain primary
when school routing is selected.


# ============================================================
# 23. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
school UI-edited truths such as:

- student-body grouping
- program grouping
- staff allocation grouping
- campus capacity grouping
- school-life support grouping
- issue grouping
- intervention target entities where needed

090.interface should define
school UI contracts such as:

- school summary exposure
- enrollment and student-body surfaces
- program / curriculum visibility surfaces
- teacher and staff allocation surfaces
- campus / facility-capacity surfaces
- dormitory-linkage surfaces
- safety / discipline / welfare surfaces
- issue and intervention exposure contracts


# ============================================================
# 24. FINAL RULE
# ============================================================

School operation UI in Civilization must remain:

- education-truth aligned
- enrollment-visible
- staffing-visible
- capacity-visible
- student-life-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from pure residence or training truth

School UI must treat school operation
as living institutional continuity,
not only as academic bookkeeping.



# ============================================================
# FILE: 3820007_HOSPITAL_OPERATION_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# HOSPITAL OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: hospital-operation-ui
component: hospital-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for hospital and medical-facility operation in Civilization.

This document covers the UI family
where medical-care truth dominates.

This document must align with:

- Civilization Facility UI Architecture
- Hospital Detailed Configuration and Auto Operation Architecture
- Facility Type Master Architecture
- medical, care, supply, staffing,
  and welfare-linked lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
triage internals,
care-path internals,
medical-policy internals,
clinical formulas,
or lower medical-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Hospital operation UI is the canonical UI family
for medical-oriented facilities in Civilization.

This family applies when the primary truth is:

- medical care delivery
- patient intake and flow
- emergency response posture
- care-capacity management
- doctor, nurse, and staff allocation
- medicine and medical-resource posture
- hygiene and sanitation control
- welfare-linked medical continuity where medical truth dominates

Hospital UI is not identical to:

- general welfare-only support UI
- residence living-truth UI
- pure builder placement UI
- generic civic-service UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- hospital UI structure
- medical-operation screen responsibility
- relation between overview, operation, auto, and intervention
- hospital-specific surface composition
- relation between hospital truth and linked welfare or civic truth
- relation between hospital truth and linked emergency-support truth

This document must not redefine:

- triage-rule internals
- medical treatment formulas
- diagnosis logic
- care-path logic
- medicine formulas
- lower patient-record truth
- regulatory or medical-law internals
- welfare-rule internals

Those remain owned by
existing hospital architectures,
medical model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. HOSPITAL SERVICE TRUTH
# ============================================================

Hospital operation UI belongs to
the medical_and_welfare family
when medical-care truth dominates.

This family may include:

- hospital
- clinic
- central hospital
- premium hospital
- family hospital
- industrial clinic
- executive medical center
- emergency-capable medical facility
- medical complex where care truth dominates

Hospital UI must resolve from
canonical_ui_target
and dominant service truth,
not from shell appearance alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Hospital UI must allow
the operator to understand and manage
a live medical institution
as part of the persistent Civilization world.

Hospital UI must expose:

- who is being treated or served
- what care capacity exists
- how staff are allocated
- how emergency readiness is behaving
- how medical resources are holding
- what hygiene and safety risks exist
- what overload or shortage conditions are emerging
- what intervention is required

Hospital UI must not collapse
into abstract medical bookkeeping only.


# ============================================================
# 6. HOSPITAL UI LIFECYCLE
# ============================================================

The canonical hospital UI lifecycle is:

post-placement setup
-> facility and care-capacity setup
-> department and staffing setup
-> medicine / equipment / supply setup
-> emergency and intake setup
-> ongoing medical operation
-> auto medical operation where supported
-> observation
-> issue detection
-> intervention
-> continued hospital operation

This lifecycle must support
continuous care operation
and emergency-sensitive continuity.


# ============================================================
# 7. HOSPITAL UI MODES
# ============================================================

Hospital UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- medical_staff_mode where appropriate
- emergency_mode where appropriate
- authority_mode where appropriate
- public_information_mode where appropriate

Patient-facing service surfaces
may connect to hospital systems,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. HOSPITAL COMMON SURFACES
# ============================================================

Hospital UI must inherit
the common facility UI frame
and must expose hospital-specialized surfaces.

Canonical hospital surfaces include:

- hospital summary surface
- hospital identity and care-role surface
- patient-flow and intake surface
- department / ward / care-capacity surface
- doctor, nurse, and staff allocation surface
- medicine, equipment, and supply surface
- emergency readiness surface
- hygiene, sanitation, and safety surface
- fee / support visibility surface where appropriate
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and medical event surface
- permission and role surface
- linked welfare / civic / logistics / support-facility surface


# ============================================================
# 9. HOSPITAL SUMMARY SURFACE
# ============================================================

The hospital summary surface must provide
fast understanding of current medical state.

This should expose visibility into:

- facility type
- current care-load posture
- staffing sufficiency posture
- emergency posture
- supply pressure
- active medical-operation issues
- active alerts
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for hospital-management entry.


# ============================================================
# 10. HOSPITAL IDENTITY AND CARE-ROLE SURFACE
# ============================================================

This surface defines
what kind of medical institution
the facility is operating as.

It should expose:

- medical-facility classification
- care-role posture
- public / private / company / special posture where relevant
- linked district or jurisdiction context
- operating organization context
- care-scope visibility
- emergency-role visibility where relevant

This surface must clarify
medical-care truth clearly.


# ============================================================
# 11. PATIENT-FLOW AND INTAKE SURFACE
# ============================================================

This surface covers
who is arriving
and how intake is behaving.

It should expose:

- intake posture
- patient-flow pressure
- backlog signals
- overload visibility
- emergency versus ordinary intake visibility where supported
- support-needing case visibility where relevant
- bottleneck signals

This is a hospital-operation surface.

It must not replace
lower patient-record truth.


# ============================================================
# 12. DEPARTMENT / WARD / CARE-CAPACITY SURFACE
# ============================================================

This surface covers
care structure and capacity.

It should expose:

- department grouping
- ward or care-unit grouping where supported
- bed or capacity posture where supported
- overload or underuse
- imbalance across care areas
- capacity mismatch visibility
- need for expansion, diversion, or reprioritization

This is a live operational capacity surface,
not a pure builder surface.


# ============================================================
# 13. DOCTOR, NURSE, AND STAFF ALLOCATION SURFACE
# ============================================================

This surface covers
human care capacity.

It should expose:

- doctor allocation posture
- nurse allocation posture
- other staff sufficiency
- role coverage
- overloaded areas
- unstable areas
- manual reassignment need
- emergency staffing stress

This surface may connect to
larger staffing systems,
but must preserve
hospital-local operational visibility.


# ============================================================
# 14. MEDICINE, EQUIPMENT, AND SUPPLY SURFACE
# ============================================================

This surface covers
core care resources.

It should expose:

- medicine posture
- equipment availability
- supply sufficiency
- shortage risk
- critical-resource visibility
- disruption risk
- replenishment or maintenance need

This surface is central
to care continuity.

It does not redefine
medical supply model internals.


# ============================================================
# 15. EMERGENCY READINESS SURFACE
# ============================================================

Emergency posture is a core hospital concern.

This surface should expose:

- emergency readiness posture
- surge pressure
- emergency-capacity signals
- emergency staffing readiness
- critical supply posture
- escalation state
- need for emergency intervention

This surface must remain explicit
and quickly readable.


# ============================================================
# 16. HYGIENE, SANITATION, AND SAFETY SURFACE
# ============================================================

This surface covers
operational safety continuity.

It should expose:

- sanitation posture
- hygiene pressure
- contamination or cleanliness concern visibility where supported
- safety incident visibility
- urgent corrective burden
- risk escalation state

This surface may connect to
welfare or civic systems,
but must preserve
hospital-side truth.


# ============================================================
# 17. FEE / SUPPORT VISIBILITY SURFACE
# ============================================================

Where relevant,
hospital operation UI should expose
money- and support-related visibility.

This surface may include:

- fee posture
- support or subsidy visibility where relevant
- burden visibility where supported
- cost-pressure visibility
- operational support-pressure visibility

This document does not define
fee formulas.

It defines the UI responsibility
to expose institutional money posture where needed.


# ============================================================
# 18. AUTOMATION AND POLICY SURFACE
# ============================================================

Where hospital domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current care-operation posture
- staffing / intake / supply automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 19. KPI AND REPORT SURFACE
# ============================================================

Hospital KPI visibility is mandatory.

Typical KPI groups include:

- care-load posture
- capacity sufficiency
- staff sufficiency
- emergency readiness
- supply sufficiency
- sanitation and safety posture
- backlog or overload posture
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 20. ISSUE AND ALERT SURFACE
# ============================================================

Hospital operation requires
explicit issue visibility.

Typical issue families include:

- overload
- staff shortage
- critical supply shortage
- emergency-readiness concern
- sanitation or safety concern
- intake bottleneck
- care-capacity mismatch
- linked welfare or support burden concern

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 21. INTERVENTION STRUCTURE
# ============================================================

Hospital intervention must be explicit.

Typical intervention families include:

- intake correction
- capacity reprioritization
- doctor / nurse / staff reassignment
- emergency escalation
- supply escalation
- sanitation or safety correction
- linked welfare or civic support routing
- temporary operating-posture correction where supported

Intervention must connect
to visible hospital conditions.

Intervention must not feel like
editing hidden care variables only.


# ============================================================
# 22. HOSPITAL / WELFARE / CIVIC RELATION
# ============================================================

Hospital UI is related to
welfare,
community support,
and civic systems,
but is not identical to them.

Hospital truth covers:

- medical care delivery
- patient-flow management
- care-capacity management
- emergency readiness
- medical resource continuity

Welfare truth covers:

- broader life-support and non-medical support continuity

Civic truth covers:

- public-service process and authority operations

Hospital UI may link to those surfaces,
but medical-care truth must remain primary
when hospital routing is selected.


# ============================================================
# 23. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
hospital UI-edited truths such as:

- patient-flow grouping
- department and capacity grouping
- staffing grouping
- supply grouping
- emergency posture grouping
- sanitation / safety grouping
- issue grouping
- intervention target entities where needed

090.interface should define
hospital UI contracts such as:

- hospital summary exposure
- patient-flow and intake surfaces
- department / ward / capacity surfaces
- staff allocation surfaces
- medicine / equipment / supply surfaces
- emergency-readiness surfaces
- hygiene / sanitation / safety surfaces
- issue and intervention exposure contracts


# ============================================================
# 24. FINAL RULE
# ============================================================

Hospital operation UI in Civilization must remain:

- medical-care-truth aligned
- patient-flow-visible
- staffing-visible
- capacity-visible
- emergency-visible
- supply-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from pure welfare-only or civic-service truth

Hospital UI must treat hospital operation
as continuous care reality,
not only as medical bookkeeping.



# ============================================================
# FILE: 3820008_AGRICULTURE_AND_LIVESTOCK_OPERATION_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# AGRICULTURE AND LIVESTOCK OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: agriculture-and-livestock-operation-ui
component: agriculture-and-livestock-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for agriculture, livestock,
and related primary-production facilities in Civilization.

This document covers the UI family
where cultivation, husbandry,
yield continuity,
and production-ground management truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- Agriculture and Livestock Detailed Configuration and Auto Operation Architecture
- Facility Type Master Architecture
- agriculture, livestock, production-ground,
  resource, staffing, and supply-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
yield formulas,
growth-cycle internals,
disease-response internals,
feed formulas,
fertilizer formulas,
or lower production-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Agriculture and livestock operation UI
is the canonical UI family
for production-ground-oriented facilities in Civilization.

This family applies when the primary truth is:

- crop production
- orchard operation
- greenhouse operation
- livestock operation
- dairy operation
- egg-production operation
- apiary operation
- fish-pond operation where farm truth dominates
- harvest and shipment continuity
- production-ground maintenance and sustainability

Agriculture UI is not identical to:

- retail store UI
- market hub UI
- manufacturing UI
- residence living-truth UI
- generic logistics UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- agriculture UI structure
- production-operation screen responsibility
- relation between setup, operation, auto, and intervention
- production-ground surface composition
- relation between agriculture truth and linked retail / logistics truth
- relation between agriculture truth and linked land / property truth

This document must not redefine:

- growth-cycle formulas
- crop-quality formulas
- livestock-health algorithms
- disease internals
- feed / fertilizer internals
- breeding internals
- harvest formulas
- lower production-record truth
- land-rights internals
- lower shipment-contract truth

Those remain owned by
existing agriculture architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. AGRICULTURE SERVICE TRUTH
# ============================================================

Agriculture and livestock operation UI belongs to
the agriculture_livestock_and_fishery family.

This family may include:

- farmland
- vegetable farm
- orchard
- greenhouse
- livestock farm
- dairy unit
- egg production unit
- apiary
- fish pond where farm truth dominates
- mixed agricultural grounds
- agriculture-linked support grounds where production truth dominates

Agriculture UI must resolve from
canonical_ui_target
and dominant production truth,
not from land shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Agriculture UI must allow
the operator to understand and manage
living production grounds
as part of the persistent Civilization world.

Agriculture UI must expose:

- what is being cultivated or raised
- how production space is allocated
- how labor is assigned
- how feed, fertilizer, water, and supplies are holding
- how yield or production continuity is behaving
- what disease, disaster, or shortage risks exist
- what shipment or self-consumption posture exists
- what intervention is required

Agriculture UI must not collapse
into abstract output bookkeeping only.


# ============================================================
# 6. AGRICULTURE UI LIFECYCLE
# ============================================================

The canonical agriculture UI lifecycle is:

post-placement setup
-> production-ground and operation setup
-> crop / livestock mix setup
-> resource and labor setup
-> harvest / output / shipment setup
-> ongoing agricultural operation
-> auto production operation where supported
-> observation
-> issue detection
-> intervention
-> continued agricultural operation

This lifecycle must support
Earth-like time flow
and seasonal or cyclical continuity where applicable.


# ============================================================
# 7. AGRICULTURE UI MODES
# ============================================================

Agriculture UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- worker_mode where appropriate
- inspection_mode where appropriate
- authority_mode where appropriate

Consumer-facing purchase surfaces
may connect to agriculture-linked systems,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. AGRICULTURE COMMON SURFACES
# ============================================================

Agriculture UI must inherit
the common facility UI frame
and must expose agriculture-specialized surfaces.

Canonical agriculture surfaces include:

- production summary surface
- operation identity and ground surface
- crop / livestock mix surface
- field / pen / zone allocation surface
- labor and staffing surface
- feed / fertilizer / water / supply surface
- harvest / output / shipment surface
- quality and health visibility surface
- equipment and maintenance surface where applicable
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and production event surface
- permission and role surface
- linked retail / logistics / property / support-facility surface


# ============================================================
# 9. PRODUCTION SUMMARY SURFACE
# ============================================================

The production summary surface must provide
fast understanding of current production state.

This should expose visibility into:

- operation type
- current crop or livestock posture
- labor sufficiency posture
- supply sufficiency posture
- health or risk posture
- expected output posture
- active issues
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for agriculture-management entry.


# ============================================================
# 10. OPERATION IDENTITY AND GROUND SURFACE
# ============================================================

This surface defines
what kind of production operation exists
and how the ground is organized.

It should expose:

- operation classification
- ground identity
- field / barn / pond / greenhouse context where relevant
- linked district or jurisdiction context
- ownership / management posture
- production-scope visibility

This surface must clarify
production truth clearly.


# ============================================================
# 11. CROP / LIVESTOCK MIX SURFACE
# ============================================================

This surface covers
what is being grown or raised.

It should expose:

- active crop grouping
- active livestock grouping
- mix balance
- seasonal or cyclical posture where applicable
- concentration or diversification signals
- unsupported or overburdened areas
- production-priority posture

This is a visibility and management surface.

It does not redefine
lower biological or production models.


# ============================================================
# 12. FIELD / PEN / ZONE ALLOCATION SURFACE
# ============================================================

This surface covers
space allocation for production.

It should expose:

- field allocation
- greenhouse allocation
- pen or livestock-area allocation
- pond allocation where relevant
- overcrowding or underuse
- ground suitability visibility
- mismatch between intended and actual use
- expansion or reallocation pressure

This is a live operational surface,
not a pure builder surface.


# ============================================================
# 13. LABOR AND STAFFING SURFACE
# ============================================================

This surface covers
human production capacity.

It should expose:

- labor sufficiency
- staffing allocation
- workload imbalance
- specialized labor needs where relevant
- peak burden visibility
- unstable or unsupported areas
- manual reassignment need

This surface may connect to
larger company or state staffing systems,
but must preserve
operation-local visibility.


# ============================================================
# 14. FEED / FERTILIZER / WATER / SUPPLY SURFACE
# ============================================================

This surface covers
resource continuity for production.

It should expose:

- feed posture where relevant
- fertilizer posture where relevant
- water posture where relevant
- critical supply sufficiency
- shortage risk
- replenishment need
- dependency visibility
- disruption risk

This surface is central
to production continuity.

It does not redefine
lower supply or formula truth.


# ============================================================
# 15. HARVEST / OUTPUT / SHIPMENT SURFACE
# ============================================================

This surface covers
what is being produced
and where it is going.

It should expose:

- expected output posture
- harvest timing visibility where applicable
- output accumulation
- shipment posture
- self-consumption versus sale posture where relevant
- backlog or spoilage pressure
- coordination need with logistics or retail

This surface is a production-operation surface,
not a full logistics truth layer.


# ============================================================
# 16. QUALITY AND HEALTH VISIBILITY SURFACE
# ============================================================

This surface covers
quality and biological stability.

It should expose:

- crop health posture
- livestock health posture
- product-quality signals
- disease concern visibility
- contamination or environmental concern visibility where supported
- intervention urgency
- quality degradation risk

This surface must remain explicit
and quickly readable.


# ============================================================
# 17. EQUIPMENT AND MAINTENANCE SURFACE
# ============================================================

Where applicable,
this surface covers
equipment continuity and maintenance burden.

It should expose:

- tool or equipment posture
- maintenance burden
- breakdown or degradation visibility
- operational continuity risk
- repair need
- linked infrastructure dependency visibility

This surface may connect to
construction or infrastructure systems,
but must preserve
production-local truth.


# ============================================================
# 18. AUTOMATION AND POLICY SURFACE
# ============================================================

Where agriculture domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current production posture
- labor / supply / harvest automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 19. KPI AND REPORT SURFACE
# ============================================================

Agriculture KPI visibility is mandatory.

Typical KPI groups include:

- production continuity posture
- labor sufficiency
- supply sufficiency
- health and disease posture
- output posture
- quality posture
- spoilage or loss posture where relevant
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 20. ISSUE AND ALERT SURFACE
# ============================================================

Agriculture operation requires
explicit issue visibility.

Typical issue families include:

- disease concern
- labor shortage
- feed / fertilizer / water shortage
- output disruption
- spoilage or loss pressure
- environmental suitability concern
- overcrowding or underuse
- shipment coordination concern

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 21. INTERVENTION STRUCTURE
# ============================================================

Agriculture intervention must be explicit.

Typical intervention families include:

- crop or livestock reprioritization
- labor reassignment
- supply escalation
- disease-response escalation
- harvest timing correction
- shipment correction
- partial shutdown or quarantine-like correction where supported
- reallocation of production space

Intervention must connect
to visible production conditions.

Intervention must not feel like
editing hidden yield variables only.


# ============================================================
# 22. AGRICULTURE / RETAIL / LOGISTICS RELATION
# ============================================================

Agriculture UI is related to
retail,
market,
and logistics systems,
but is not identical to them.

Agriculture truth covers:

- production continuity
- biological / cultivation operation
- output generation
- ground management

Retail truth covers:

- store operation
- assortment and shelf control
- customer-facing sale logic

Logistics truth covers:

- routing
- transfer
- transport and distribution continuity

Agriculture UI may link to those surfaces,
but production truth must remain primary
when agriculture routing is selected.


# ============================================================
# 23. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
agriculture UI-edited truths such as:

- production-ground grouping
- crop / livestock grouping
- labor grouping
- supply grouping
- quality and health grouping
- output grouping
- issue grouping
- intervention target entities where needed

090.interface should define
agriculture UI contracts such as:

- production summary exposure
- crop / livestock mix surfaces
- field / pen / zone allocation surfaces
- labor and staffing surfaces
- feed / fertilizer / water / supply surfaces
- harvest / output / shipment surfaces
- quality and health visibility surfaces
- issue and intervention exposure contracts


# ============================================================
# 24. FINAL RULE
# ============================================================

Agriculture and livestock operation UI in Civilization must remain:

- production-truth aligned
- space-visible
- labor-visible
- supply-visible
- output-visible
- health-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from retail-only or logistics-only truth

Agriculture UI must treat production grounds
as living operational reality,
not only as output bookkeeping.



# ============================================================
# FILE: 3820009_FOOD_SERVICE_OPERATION_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# FOOD SERVICE OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: food-service-operation-ui
component: food-service-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for food-service operation in Civilization.

This document covers the UI family
where menu delivery,
ingredient handling,
service throughput,
and dining operation truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- food-service-related detailed configuration architectures
- Facility Type Master Architecture
- food-service, ingredient, staffing,
  hygiene, and delivery-linked lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
menu-cost formulas,
recipe internals,
kitchen-process internals,
food-safety formulas,
or lower order-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Food service operation UI
is the canonical UI family
for dining and meal-service facilities in Civilization.

This family applies when the primary truth is:

- restaurant operation
- cafe operation
- cafeteria operation
- food hall unit operation
- street-food operation
- meal-service operation
- kitchen and service-flow coordination
- dining-capacity and service-throughput control
- food-quality and hygiene continuity

Food-service UI is not identical to:

- retail store UI
- market hub UI
- agriculture UI
- lodging UI
- generic event-venue UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- food-service UI structure
- dining-operation screen responsibility
- relation between setup, operation, auto, and intervention
- menu / kitchen / service surface composition
- relation between food-service truth and linked retail / agriculture / delivery truth

This document must not redefine:

- recipe formulas
- ingredient-cost formulas
- kitchen-process internals
- hygiene-regulation internals
- service-time formulas
- order-record internals
- lower pricing formulas
- lower staffing algorithms

Those remain owned by
existing food-service architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. FOOD SERVICE TRUTH
# ============================================================

Food service operation UI belongs to
the food_service family.

This family may include:

- restaurant
- cafe
- cafeteria
- food hall unit
- meal-service operation
- delivery-linked dining facility
- street-food facility
- other dining-oriented facilities
  where food-service truth dominates

Food-service UI must resolve from
canonical_ui_target
and dominant service truth,
not from shell appearance alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Food-service UI must allow
the operator to understand and manage
a live dining operation
as part of the persistent Civilization world.

Food-service UI must expose:

- what is being served
- how menu structure is configured
- how ingredients are holding
- how kitchen and floor staffing are allocated
- how seating and throughput are behaving
- what hygiene and safety risks exist
- what delay, shortage, or service issues are emerging
- what intervention is required

Food-service UI must not collapse
into abstract sales bookkeeping only.


# ============================================================
# 6. FOOD SERVICE UI LIFECYCLE
# ============================================================

The canonical food-service UI lifecycle is:

post-placement setup
-> service identity and menu setup
-> ingredient and kitchen setup
-> staffing and seating setup
-> pricing and service setup
-> ongoing food-service operation
-> auto operation where supported
-> observation
-> issue detection
-> intervention
-> continued dining operation

This lifecycle must support
time-of-day continuity,
daily service rhythm,
and persistent world operation.


# ============================================================
# 7. FOOD SERVICE UI MODES
# ============================================================

Food-service UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- kitchen_mode where appropriate
- floor_service_mode where appropriate
- inspection_mode where appropriate
- authority_mode where appropriate

Customer-facing ordering surfaces
may connect to dining systems,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. FOOD SERVICE COMMON SURFACES
# ============================================================

Food-service UI must inherit
the common facility UI frame
and must expose food-service-specialized surfaces.

Canonical food-service surfaces include:

- service summary surface
- operation identity and dining concept surface
- menu and offering surface
- ingredient and stock surface
- kitchen workflow surface
- seating and throughput surface
- staffing and shift surface
- pricing and fee visibility surface
- hygiene, sanitation, and safety surface
- delivery / takeout linkage surface where applicable
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and service event surface
- permission and role surface
- linked retail / agriculture / logistics / event-facility surface


# ============================================================
# 9. SERVICE SUMMARY SURFACE
# ============================================================

The service summary surface must provide
fast understanding of current dining state.

This should expose visibility into:

- facility type
- current menu / service posture
- ingredient sufficiency posture
- staffing sufficiency posture
- seating or throughput posture
- hygiene posture
- active issues
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for food-service-management entry.


# ============================================================
# 10. OPERATION IDENTITY AND DINING CONCEPT SURFACE
# ============================================================

This surface defines
what kind of dining operation exists.

It should expose:

- service classification
- dining concept posture
- public / private / company / special posture where relevant
- linked district or jurisdiction context
- operating organization context
- service-scope visibility

This surface must clarify
food-service truth clearly.


# ============================================================
# 11. MENU AND OFFERING SURFACE
# ============================================================

This surface covers
what the facility is serving.

It should expose:

- active menu grouping
- offering breadth
- service-time or meal-period posture where applicable
- category balance
- unavailable or unsupported offerings
- demand pressure visibility
- menu-priority posture

This is a visibility and management surface.

It does not redefine
lower recipe or menu model internals.


# ============================================================
# 12. INGREDIENT AND STOCK SURFACE
# ============================================================

This surface covers
core ingredient continuity.

It should expose:

- ingredient sufficiency
- shortage risk
- freshness posture where supported
- spoilage risk
- replenishment need
- dependency visibility
- critical-item risk

This surface is central
to dining continuity.

It does not redefine
lower stock or formula truth.


# ============================================================
# 13. KITCHEN WORKFLOW SURFACE
# ============================================================

This surface covers
internal preparation flow.

It should expose:

- kitchen workload posture
- bottleneck visibility
- prep burden
- unsupported or overloaded areas
- service-delay signals
- reassignment need
- operational instability visibility

This surface is a live operational surface,
not a pure staff list or builder surface.


# ============================================================
# 14. SEATING AND THROUGHPUT SURFACE
# ============================================================

This surface covers
dining-capacity usage.

It should expose:

- seating posture where applicable
- queue or wait posture where supported
- throughput sufficiency
- overcapacity or underuse
- floor-turnover pressure where relevant
- timing imbalance
- need for operating correction

This surface keeps
customer-flow reality visible.


# ============================================================
# 15. STAFFING AND SHIFT SURFACE
# ============================================================

This surface covers
human service capacity.

It should expose:

- kitchen staffing posture
- floor-service staffing posture
- role coverage
- shift imbalance
- peak burden visibility
- unstable or unsupported areas
- manual reassignment need

This surface may connect to
larger staffing systems,
but must preserve
facility-local operational visibility.


# ============================================================
# 16. PRICING AND FEE VISIBILITY SURFACE
# ============================================================

This surface covers
operator-visible money posture.

It should expose:

- pricing posture
- fee visibility where relevant
- demand or margin pressure visibility
- category-level pricing signals
- correction need visibility

This document does not define
pricing formulas.

It defines the UI responsibility
to expose food-service money posture clearly.


# ============================================================
# 17. HYGIENE, SANITATION, AND SAFETY SURFACE
# ============================================================

This surface is central
to food-service operation.

It should expose:

- hygiene posture
- sanitation burden
- contamination or cleanliness concern visibility where supported
- inspection concern visibility
- urgent corrective burden
- safety escalation state

This surface must remain explicit
and quickly readable.


# ============================================================
# 18. DELIVERY / TAKEOUT LINKAGE SURFACE
# ============================================================

Where applicable,
the UI must expose
delivery and takeout linkage.

This surface should expose:

- delivery posture
- takeout posture
- service split visibility
- backlog or delay visibility
- packaging / dispatch burden where supported
- linked logistics or pickup dependency visibility

This is a coordination surface.

It does not replace
full logistics source-of-truth layers.


# ============================================================
# 19. AUTOMATION AND POLICY SURFACE
# ============================================================

Where food-service domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current service posture
- menu / stock / staffing automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 20. KPI AND REPORT SURFACE
# ============================================================

Food-service KPI visibility is mandatory.

Typical KPI groups include:

- service continuity posture
- ingredient sufficiency
- staffing sufficiency
- seating / throughput posture
- hygiene and safety posture
- delay or backlog posture
- spoilage posture where relevant
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 21. ISSUE AND ALERT SURFACE
# ============================================================

Food-service operation requires
explicit issue visibility.

Typical issue families include:

- ingredient shortage
- staffing shortage
- kitchen bottleneck
- seating or throughput overload
- hygiene concern
- spoilage concern
- delivery / takeout coordination concern
- service instability

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 22. INTERVENTION STRUCTURE
# ============================================================

Food-service intervention must be explicit.

Typical intervention families include:

- menu reprioritization
- staffing reassignment
- ingredient escalation
- service-flow correction
- seating / throughput correction
- hygiene-response escalation
- delivery / takeout correction
- temporary operating-posture correction where supported

Intervention must connect
to visible dining conditions.

Intervention must not feel like
editing hidden service variables only.


# ============================================================
# 23. FOOD SERVICE / RETAIL / AGRICULTURE RELATION
# ============================================================

Food-service UI is related to
retail,
agriculture,
and logistics systems,
but is not identical to them.

Food-service truth covers:

- menu delivery
- kitchen and floor operation
- dining throughput
- hygiene and service continuity

Retail truth covers:

- store operation
- assortment and shelf control
- consumer retail sale logic

Agriculture truth covers:

- cultivation or husbandry
- production-ground management
- output generation

Food-service UI may link to those surfaces,
but dining-operation truth must remain primary
when food-service routing is selected.


# ============================================================
# 24. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
food-service UI-edited truths such as:

- menu grouping
- ingredient grouping
- kitchen workflow grouping
- seating / throughput grouping
- staffing grouping
- hygiene grouping
- issue grouping
- intervention target entities where needed

090.interface should define
food-service UI contracts such as:

- service summary exposure
- menu and offering surfaces
- ingredient and stock surfaces
- kitchen workflow surfaces
- seating and throughput surfaces
- staffing and shift surfaces
- hygiene / sanitation / safety surfaces
- delivery / takeout linkage surfaces
- issue and intervention exposure contracts


# ============================================================
# 25. FINAL RULE
# ============================================================

Food-service operation UI in Civilization must remain:

- dining-operation-truth aligned
- menu-visible
- stock-visible
- kitchen-visible
- staffing-visible
- throughput-visible
- hygiene-visible
- issue-visible
- intervention-capable
- world-linked

Food-service UI must treat dining operation
as live service reality,
not only as sales bookkeeping.



# ============================================================
# FILE: 3820010_LOGISTICS_AND_TRANSPORT_OPERATION_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# LOGISTICS AND TRANSPORT OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: logistics-and-transport-operation-ui
component: logistics-and-transport-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for logistics, transport,
rail, terminal, port,
and transfer-oriented operation in Civilization.

This document covers the UI family
where routing, flow continuity,
capacity balancing,
transfer coordination,
and transport-service truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- logistics / railway / transport / port-related detailed configuration architectures
- Facility Type Master Architecture
- routing, dispatch, transfer, storage,
  capacity, staffing, and incident-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
routing algorithms,
dispatch algorithms,
timetable internals,
freight formulas,
queue formulas,
or lower shipment / movement truth.


# ============================================================
# 2. POSITION
# ============================================================

Logistics and transport operation UI
is the canonical UI family
for movement-oriented facilities in Civilization.

This family applies when the primary truth is:

- rail operation
- station operation
- terminal operation
- transport hub operation
- logistics hub operation
- warehouse-transfer operation
- port-side movement operation
- route and transfer continuity
- capacity balancing across flows
- service reliability for movement systems

Logistics UI is not identical to:

- retail UI
- manufacturing UI
- agriculture UI
- pure infrastructure-control UI
- generic company premises UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- logistics UI structure
- movement-operation screen responsibility
- relation between setup, operation, auto, and intervention
- route / node / transfer surface composition
- relation between logistics truth and linked retail / manufacturing / agriculture truth
- relation between logistics truth and linked infrastructure truth

This document must not redefine:

- route optimization internals
- dispatch formulas
- timetabling internals
- freight-calculation internals
- queue-calculation internals
- lower shipment-record truth
- lower movement-event truth
- infrastructure-control internals

Those remain owned by
existing logistics architectures,
model documents,
runtime documents,
policy documents,
and lower interface layers.


# ============================================================
# 4. LOGISTICS SERVICE TRUTH
# ============================================================

Logistics and transport operation UI belongs to
the logistics_transport_rail_and_port family.

This family may include:

- railway service facility
- station
- terminal
- logistics hub
- transfer node
- warehouse-linked transport site
- port authority service facility
- freight coordination facility
- mixed passenger / freight transport facility
  where movement truth dominates

Logistics UI must resolve from
canonical_ui_target
and dominant movement truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Logistics UI must allow
the operator to understand and manage
a live movement network node
as part of the persistent Civilization world.

Logistics UI must expose:

- what is moving
- how routes or lines are configured
- how node capacity is behaving
- how vehicles, freight, or flow units are allocated
- how storage and transfer are holding
- what delays, bottlenecks, or reliability issues are emerging
- what linked-facility dependencies exist
- what intervention is required

Logistics UI must not collapse
into abstract throughput bookkeeping only.


# ============================================================
# 6. LOGISTICS UI LIFECYCLE
# ============================================================

The canonical logistics UI lifecycle is:

post-placement setup
-> node and service identity setup
-> route / line / service setup
-> storage and transfer setup
-> staffing and capacity setup
-> ongoing logistics operation
-> auto routing / dispatch operation where supported
-> observation
-> issue detection
-> intervention
-> continued logistics operation

This lifecycle must support
time-based continuity,
persistent route networks,
and world-linked movement.


# ============================================================
# 7. LOGISTICS UI MODES
# ============================================================

Logistics UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- dispatch_mode where appropriate
- operations_mode where appropriate
- authority_mode where appropriate
- incident_mode where appropriate

Passenger-facing or public travel information surfaces
may connect to logistics systems,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. LOGISTICS COMMON SURFACES
# ============================================================

Logistics UI must inherit
the common facility UI frame
and must expose logistics-specialized surfaces.

Canonical logistics surfaces include:

- logistics summary surface
- node identity and service-role surface
- route / line / service surface
- storage and transfer surface
- vehicle / handling-capacity surface
- staffing and operations surface
- delay, reliability, and bottleneck surface
- pricing / fee visibility surface where appropriate
- incident and disruption surface
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and movement event surface
- permission and role surface
- linked retail / manufacturing / agriculture / infrastructure surface


# ============================================================
# 9. LOGISTICS SUMMARY SURFACE
# ============================================================

The logistics summary surface must provide
fast understanding of current movement state.

This should expose visibility into:

- node or facility type
- current route or service posture
- capacity sufficiency posture
- storage / transfer posture
- reliability posture
- active disruptions
- active issues
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for logistics-management entry.


# ============================================================
# 10. NODE IDENTITY AND SERVICE-ROLE SURFACE
# ============================================================

This surface defines
what role the node plays.

It should expose:

- node classification
- station / terminal / hub / port role
- district or jurisdiction context
- operating organization context
- service-scope visibility
- linked network identity
- freight / passenger posture where relevant

This surface must clarify
movement truth clearly.


# ============================================================
# 11. ROUTE / LINE / SERVICE SURFACE
# ============================================================

This surface covers
how movement is structured.

It should expose:

- active routes or lines
- service grouping
- route priority posture
- underused or overloaded services
- route imbalance visibility
- unsupported or unstable service areas
- reconfiguration pressure

This is a visibility and management surface.

It does not redefine
lower route model internals.


# ============================================================
# 12. STORAGE AND TRANSFER SURFACE
# ============================================================

This surface covers
node-local holding and transfer continuity.

It should expose:

- storage posture
- transfer load posture
- backlog signals
- dwell or holding pressure
- handoff stability
- overcapacity or underuse
- bottleneck visibility

This surface is central
to node reality.

It does not replace
full warehouse or shipment truth layers.


# ============================================================
# 13. VEHICLE / HANDLING-CAPACITY SURFACE
# ============================================================

This surface covers
movement capacity resources.

It should expose:

- vehicle or carrier posture where relevant
- handling capacity
- equipment sufficiency
- allocation imbalance
- readiness visibility
- maintenance impact where supported
- manual reassignment need

This is a live operational surface,
not a pure asset list.


# ============================================================
# 14. STAFFING AND OPERATIONS SURFACE
# ============================================================

This surface covers
human movement capacity.

It should expose:

- staffing sufficiency
- operations coverage
- dispatch burden
- handling burden
- shift imbalance
- unsupported operational areas
- escalation need

This surface may connect to
larger staffing systems,
but must preserve
node-local operational visibility.


# ============================================================
# 15. DELAY, RELIABILITY, AND BOTTLENECK SURFACE
# ============================================================

This surface is central
to logistics continuity.

It should expose:

- delay posture
- reliability posture
- bottleneck concentration
- disruption spread visibility
- unstable route or node areas
- corrective urgency
- linked dependency visibility

This surface must remain explicit
and quickly readable.


# ============================================================
# 16. PRICING / FEE VISIBILITY SURFACE
# ============================================================

Where relevant,
the UI should expose
transport- or logistics-related money posture.

This surface may include:

- fee posture
- service pricing visibility
- cost-pressure visibility
- underperforming service visibility
- correction need visibility

This document does not define
pricing formulas.

It defines the UI responsibility
to expose operator-visible money posture where needed.


# ============================================================
# 17. INCIDENT AND DISRUPTION SURFACE
# ============================================================

Movement systems require
explicit disruption visibility.

This surface should expose:

- active incident visibility
- disruption category visibility
- severity posture
- spread or cascade risk
- affected services visibility
- need for emergency routing or manual override

This surface bridges
ordinary operation
and disruption intervention.


# ============================================================
# 18. AUTOMATION AND POLICY SURFACE
# ============================================================

Where logistics domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current routing / dispatch posture
- storage / transfer automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 19. KPI AND REPORT SURFACE
# ============================================================

Logistics KPI visibility is mandatory.

Typical KPI groups include:

- service continuity posture
- capacity sufficiency
- storage / transfer sufficiency
- route reliability posture
- delay posture
- disruption posture
- staffing sufficiency
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 20. ISSUE AND ALERT SURFACE
# ============================================================

Logistics operation requires
explicit issue visibility.

Typical issue families include:

- route instability
- delay concentration
- storage backlog
- transfer bottleneck
- staffing shortage
- equipment or handling shortage
- disruption cascade concern
- linked-supply-chain concern

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 21. INTERVENTION STRUCTURE
# ============================================================

Logistics intervention must be explicit.

Typical intervention families include:

- route reprioritization
- dispatch correction
- storage reallocation
- transfer correction
- staffing reassignment
- emergency service correction
- disruption response escalation
- temporary shutdown or diversion where supported

Intervention must connect
to visible movement conditions.

Intervention must not feel like
editing hidden routing variables only.


# ============================================================
# 22. LOGISTICS / MANUFACTURING / RETAIL RELATION
# ============================================================

Logistics UI is related to
manufacturing,
retail,
agriculture,
and infrastructure systems,
but is not identical to them.

Logistics truth covers:

- movement continuity
- route and node behavior
- transfer and storage reality
- reliability and disruption handling

Manufacturing truth covers:

- production-line continuity
- input / output generation
- process and machine operation

Retail truth covers:

- assortment and sale operation
- store-local stock and service logic

Logistics UI may link to those surfaces,
but movement truth must remain primary
when logistics routing is selected.


# ============================================================
# 23. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
logistics UI-edited truths such as:

- route grouping
- node grouping
- storage and transfer grouping
- capacity grouping
- staffing grouping
- incident grouping
- issue grouping
- intervention target entities where needed

090.interface should define
logistics UI contracts such as:

- logistics summary exposure
- route / line / service surfaces
- storage and transfer surfaces
- vehicle / handling-capacity surfaces
- staffing and operations surfaces
- delay / reliability / bottleneck surfaces
- incident and disruption surfaces
- issue and intervention exposure contracts


# ============================================================
# 24. FINAL RULE
# ============================================================

Logistics and transport operation UI in Civilization must remain:

- movement-truth aligned
- route-visible
- capacity-visible
- storage-visible
- reliability-visible
- disruption-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from manufacturing-only or retail-only truth

Logistics UI must treat movement nodes
as live operational reality,
not only as throughput bookkeeping.



# ============================================================
# FILE: 3820011_MANUFACTURING_OPERATION_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# MANUFACTURING OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: manufacturing-operation-ui
component: manufacturing-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for manufacturing and production-facility operation in Civilization.

This document covers the UI family
where process flow, line continuity,
input transformation,
machine operation,
and output-quality truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- manufacturing-related detailed configuration architectures
- Facility Type Master Architecture
- line, machine, input, quality,
  staffing, maintenance, and output-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
production formulas,
machine-control internals,
quality formulas,
maintenance formulas,
or lower work-order truth.


# ============================================================
# 2. POSITION
# ============================================================

Manufacturing operation UI
is the canonical UI family
for transformation-oriented facilities in Civilization.

This family applies when the primary truth is:

- production-line operation
- material input transformation
- line balancing
- machine and equipment continuity
- quality control
- staffing of production processes
- maintenance burden
- output readiness and shipment linkage

Manufacturing UI is not identical to:

- logistics UI
- retail UI
- agriculture UI
- pure infrastructure-control UI
- generic company premises UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- manufacturing UI structure
- production-operation screen responsibility
- relation between setup, operation, auto, and intervention
- line / machine / input / output surface composition
- relation between manufacturing truth and linked logistics truth
- relation between manufacturing truth and linked maintenance or infrastructure truth

This document must not redefine:

- process formulas
- machine-control internals
- production-planning formulas
- quality-evaluation internals
- maintenance algorithms
- lower work-order truth
- lower inventory-truth internals
- lower shipment-contract truth

Those remain owned by
existing manufacturing architectures,
model documents,
runtime documents,
policy documents,
and lower interface layers.


# ============================================================
# 4. MANUFACTURING SERVICE TRUTH
# ============================================================

Manufacturing operation UI belongs to
the manufacturing_and_industry family.

This family may include:

- factory
- processing line facility
- assembly line facility
- industrial production facility
- multi-line manufacturing site
- warehouse-linked production facility
- specialized transformation facility
  where production-process truth dominates

Manufacturing UI must resolve from
canonical_ui_target
and dominant process truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Manufacturing UI must allow
the operator to understand and manage
a live production system
as part of the persistent Civilization world.

Manufacturing UI must expose:

- what is being produced
- how lines and processes are configured
- how input materials are holding
- how machines and equipment are behaving
- how staffing is allocated
- how quality and defect risk are behaving
- how maintenance and downtime risk are emerging
- what intervention is required

Manufacturing UI must not collapse
into abstract output bookkeeping only.


# ============================================================
# 6. MANUFACTURING UI LIFECYCLE
# ============================================================

The canonical manufacturing UI lifecycle is:

post-placement setup
-> facility and line setup
-> input and process setup
-> staffing and machine setup
-> quality and output setup
-> ongoing manufacturing operation
-> auto production operation where supported
-> observation
-> issue detection
-> intervention
-> continued manufacturing operation

This lifecycle must support
time-based continuity,
process stability,
and persistent world production.


# ============================================================
# 7. MANUFACTURING UI MODES
# ============================================================

Manufacturing UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- line_mode where appropriate
- maintenance_mode where appropriate
- quality_mode where appropriate
- authority_mode where appropriate

Customer-facing sales surfaces
may connect to manufacturing-linked systems,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. MANUFACTURING COMMON SURFACES
# ============================================================

Manufacturing UI must inherit
the common facility UI frame
and must expose manufacturing-specialized surfaces.

Canonical manufacturing surfaces include:

- manufacturing summary surface
- facility identity and production-role surface
- line and process surface
- input-material surface
- machine and equipment surface
- staffing and shift surface
- quality and defect visibility surface
- maintenance and downtime surface
- output and shipment-linkage surface
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and production event surface
- permission and role surface
- linked logistics / supply / infrastructure / company surface


# ============================================================
# 9. MANUFACTURING SUMMARY SURFACE
# ============================================================

The manufacturing summary surface must provide
fast understanding of current production state.

This should expose visibility into:

- facility or line type
- current production posture
- input sufficiency posture
- machine continuity posture
- staffing sufficiency posture
- quality posture
- active issues
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for manufacturing-management entry.


# ============================================================
# 10. FACILITY IDENTITY AND PRODUCTION-ROLE SURFACE
# ============================================================

This surface defines
what kind of production operation exists.

It should expose:

- production classification
- line or facility role
- district or jurisdiction context
- operating organization context
- product-scope visibility
- linked network or site identity where relevant

This surface must clarify
production-process truth clearly.


# ============================================================
# 11. LINE AND PROCESS SURFACE
# ============================================================

This surface covers
how production is structured.

It should expose:

- active lines
- process grouping
- line priority posture
- overloaded or underused lines
- process imbalance visibility
- unsupported or unstable process areas
- reconfiguration pressure

This is a visibility and management surface.

It does not redefine
lower process model internals.


# ============================================================
# 12. INPUT-MATERIAL SURFACE
# ============================================================

This surface covers
production inputs.

It should expose:

- input-material sufficiency
- shortage risk
- replenishment need
- dependency visibility
- critical-input posture
- unstable input areas
- production-interruption risk

This surface is central
to production continuity.

It does not redefine
lower inventory or supply truth.


# ============================================================
# 13. MACHINE AND EQUIPMENT SURFACE
# ============================================================

This surface covers
core production assets.

It should expose:

- machine posture
- equipment readiness
- allocation imbalance
- degradation visibility
- operational strain
- breakdown risk
- manual reassignment or shutdown need

This is a live operational surface,
not a pure asset register.


# ============================================================
# 14. STAFFING AND SHIFT SURFACE
# ============================================================

This surface covers
human production capacity.

It should expose:

- staffing sufficiency
- role coverage
- shift imbalance
- overloaded areas
- unsupported process areas
- skill-mismatch visibility where relevant
- manual reassignment need

This surface may connect to
larger staffing systems,
but must preserve
facility-local operational visibility.


# ============================================================
# 15. QUALITY AND DEFECT VISIBILITY SURFACE
# ============================================================

This surface is central
to manufacturing truth.

It should expose:

- quality posture
- defect risk
- unstable output visibility
- process-quality mismatch signals
- corrective urgency
- quality degradation trend visibility
- rework burden where supported

This surface must remain explicit
and quickly readable.


# ============================================================
# 16. MAINTENANCE AND DOWNTIME SURFACE
# ============================================================

This surface covers
continuity risk from machine condition.

It should expose:

- maintenance burden
- downtime posture
- repair backlog
- urgent maintenance risk
- line interruption visibility
- linked infrastructure dependency visibility
- escalation need

This surface may connect to
construction or infrastructure systems,
but must preserve
production-local truth.


# ============================================================
# 17. OUTPUT AND SHIPMENT-LINKAGE SURFACE
# ============================================================

This surface covers
what is leaving the production system.

It should expose:

- output posture
- completion visibility
- backlog visibility
- shipment-readiness posture
- coordination need with logistics
- storage pressure where relevant
- output instability visibility

This is a production-operation surface.

It does not replace
full logistics source-of-truth layers.


# ============================================================
# 18. AUTOMATION AND POLICY SURFACE
# ============================================================

Where manufacturing domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current production posture
- line / machine / staffing automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 19. KPI AND REPORT SURFACE
# ============================================================

Manufacturing KPI visibility is mandatory.

Typical KPI groups include:

- production continuity posture
- line utilization posture
- input sufficiency
- machine continuity
- staffing sufficiency
- quality posture
- downtime posture
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 20. ISSUE AND ALERT SURFACE
# ============================================================

Manufacturing operation requires
explicit issue visibility.

Typical issue families include:

- input shortage
- line instability
- machine degradation
- breakdown concern
- staffing shortage
- quality degradation
- downtime concentration
- shipment-linkage concern

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 21. INTERVENTION STRUCTURE
# ============================================================

Manufacturing intervention must be explicit.

Typical intervention families include:

- line reprioritization
- process correction
- staffing reassignment
- maintenance escalation
- input escalation
- quality correction
- temporary shutdown or slowdown where supported
- output and shipment correction

Intervention must connect
to visible production conditions.

Intervention must not feel like
editing hidden process variables only.


# ============================================================
# 22. MANUFACTURING / LOGISTICS / INFRASTRUCTURE RELATION
# ============================================================

Manufacturing UI is related to
logistics,
infrastructure,
and supply systems,
but is not identical to them.

Manufacturing truth covers:

- transformation of inputs to outputs
- line and machine behavior
- quality and continuity of process
- local production reality

Logistics truth covers:

- movement and transfer continuity
- route and node behavior
- shipment and storage beyond the line

Infrastructure truth covers:

- regional utility or base-system continuity

Manufacturing UI may link to those surfaces,
but production-process truth must remain primary
when manufacturing routing is selected.


# ============================================================
# 23. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
manufacturing UI-edited truths such as:

- line grouping
- process grouping
- input grouping
- machine grouping
- staffing grouping
- quality grouping
- issue grouping
- intervention target entities where needed

090.interface should define
manufacturing UI contracts such as:

- manufacturing summary exposure
- line and process surfaces
- input-material surfaces
- machine and equipment surfaces
- staffing and shift surfaces
- quality and defect visibility surfaces
- maintenance and downtime surfaces
- output and shipment-linkage surfaces
- issue and intervention exposure contracts


# ============================================================
# 24. FINAL RULE
# ============================================================

Manufacturing operation UI in Civilization must remain:

- production-process-truth aligned
- line-visible
- input-visible
- machine-visible
- staffing-visible
- quality-visible
- downtime-visible
- issue-visible
- intervention-capable
- world-linked

Manufacturing UI must treat production facilities
as live operational reality,
not only as output bookkeeping.



# ============================================================
# FILE: 3820012_GOVERNMENT_AND_CIVIC_SERVICE_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# GOVERNMENT AND CIVIC SERVICE UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: government-and-civic-service-ui
component: government-and-civic-service-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for government, administrative,
public-counter,
and civic-service operation in Civilization.

This document covers the UI family
where public service delivery,
administrative process continuity,
civic communication,
and authority-managed service truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- government / administration / civic-service-related architectures
- Facility Type Master Architecture
- public-service, queue, document,
  staffing, notice, and authority-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
administrative-law internals,
approval-law internals,
document-validity internals,
public-rights policy internals,
or lower service-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Government and civic service UI
is the canonical UI family
for public-facing and authority-operated facilities in Civilization.

This family applies when the primary truth is:

- public service delivery
- administrative process handling
- public counter operation
- civic notice and information distribution
- document and case progress visibility
- staffing and queue continuity
- authority-controlled service execution
- institutional transparency where permitted

Government UI is not identical to:

- generic company office UI
- finance UI
- security / judiciary UI
- residence UI
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- government UI structure
- civic-service screen responsibility
- relation between setup, operation, auto, and intervention
- counter / process / notice / authority surface composition
- relation between government truth and linked civic, welfare, or authority truth

This document must not redefine:

- legal process internals
- document-validation internals
- approval-routing internals
- exact case-processing algorithms
- identity or rights verification internals
- lower public-service record truth
- lower authority-rule internals

Those remain owned by
existing government architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. GOVERNMENT SERVICE TRUTH
# ============================================================

Government and civic service UI belongs to
the government_and_civic_service family.

This family may include:

- government service facility
- administrative office
- public employment counter
- public documentation center
- civic notice board
- public information center
- administrative plaza function
- local service center
- civic support counter
  where public-service truth dominates

Government UI must resolve from
canonical_ui_target
and dominant civic-service truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Government UI must allow
the operator to understand and manage
a live public-service institution
as part of the persistent Civilization world.

Government UI must expose:

- what public services are being delivered
- how counters or service channels are operating
- how cases, requests, or documents are progressing
- how staffing and queue load are behaving
- what notices or public information are active
- what service delays or authority issues are emerging
- what interventions are required

Government UI must not collapse
into abstract case bookkeeping only.


# ============================================================
# 6. GOVERNMENT UI LIFECYCLE
# ============================================================

The canonical government UI lifecycle is:

post-placement setup
-> institution and service-scope setup
-> counter / process / staffing setup
-> notice and public-information setup
-> ongoing civic-service operation
-> auto service operation where supported
-> observation
-> issue detection
-> intervention
-> continued government operation

This lifecycle must support
persistent institutional continuity
and public-service time flow.


# ============================================================
# 7. GOVERNMENT UI MODES
# ============================================================

Government UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- authority_mode
- manager_mode
- counter_mode where appropriate
- document_mode where appropriate
- public_information_mode where appropriate
- public_access_mode where appropriate

Public self-service or resident-facing surfaces
may connect to civic systems,
but are not the only subject
of this operation UI architecture.


# ============================================================
# 8. GOVERNMENT COMMON SURFACES
# ============================================================

Government UI must inherit
the common facility UI frame
and must expose government-specialized surfaces.

Canonical government surfaces include:

- government summary surface
- institution identity and authority surface
- service menu and service-scope surface
- counter and queue surface
- case / request / process visibility surface
- document and notice surface
- staffing and operations surface
- public-information and exposure surface
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and civic event surface
- permission and authority surface
- linked welfare / residence / security / support-facility surface


# ============================================================
# 9. GOVERNMENT SUMMARY SURFACE
# ============================================================

The government summary surface must provide
fast understanding of current civic-service state.

This should expose visibility into:

- institution type
- active service posture
- staffing sufficiency posture
- queue or process-load posture
- notice or information posture
- active service issues
- active alerts
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for government-management entry.


# ============================================================
# 10. INSTITUTION IDENTITY AND AUTHORITY SURFACE
# ============================================================

This surface defines
what public institution exists
and under what authority it operates.

It should expose:

- institution classification
- authority posture
- jurisdiction context
- operating organization context
- service-scope visibility
- linked public-service identity
- special authority visibility where relevant

This surface must clarify
public-service truth clearly.


# ============================================================
# 11. SERVICE MENU AND SERVICE-SCOPE SURFACE
# ============================================================

This surface covers
what services are being provided.

It should expose:

- active service grouping
- service-scope posture
- overloaded or underused services
- service-priority visibility
- unsupported areas
- service-coverage imbalance
- reconfiguration pressure

This is a visibility and management surface.

It does not redefine
lower service-policy internals.


# ============================================================
# 12. COUNTER AND QUEUE SURFACE
# ============================================================

This surface covers
public-facing service throughput.

It should expose:

- counter posture
- queue posture
- waiting-load visibility
- throughput sufficiency
- overcapacity or underuse
- service bottleneck visibility
- manual support need

This is a live operational surface,
not a pure staffing list.


# ============================================================
# 13. CASE / REQUEST / PROCESS VISIBILITY SURFACE
# ============================================================

This surface covers
how civic-service work is progressing.

It should expose:

- request posture
- case progression visibility
- process backlog
- blocked or delayed cases
- unstable process areas
- escalation need
- service-completion posture

This surface is central
to public-service continuity.

It does not redefine
lower case model truth.


# ============================================================
# 14. DOCUMENT AND NOTICE SURFACE
# ============================================================

This surface covers
public documents and civic notice exposure.

It should expose:

- active documents visibility
- notice posture
- public-information status
- outdated or blocked information visibility
- publication or circulation burden
- correction need visibility

This surface must distinguish
public-facing notice truth
from internal authority-only process truth.


# ============================================================
# 15. STAFFING AND OPERATIONS SURFACE
# ============================================================

This surface covers
human public-service capacity.

It should expose:

- staffing sufficiency
- role coverage
- queue-handling burden
- process burden
- unsupported service areas
- shift imbalance where relevant
- manual reassignment need

This surface may connect to
larger government staffing systems,
but must preserve
institution-local operational visibility.


# ============================================================
# 16. PUBLIC-INFORMATION AND EXPOSURE SURFACE
# ============================================================

This surface covers
how the institution communicates outward.

It should expose:

- public-information posture
- information clarity
- current exposed notices
- missing or outdated public information
- access-channel visibility
- need for public correction or clarification

This surface supports
civic transparency where permitted.


# ============================================================
# 17. AUTOMATION AND POLICY SURFACE
# ============================================================

Where government domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current service-operation posture
- queue / process / notice automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 18. KPI AND REPORT SURFACE
# ============================================================

Government KPI visibility is mandatory.

Typical KPI groups include:

- service continuity posture
- staffing sufficiency
- queue posture
- process completion posture
- backlog posture
- public-information quality posture
- service-coverage balance
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 19. ISSUE AND ALERT SURFACE
# ============================================================

Government operation requires
explicit issue visibility.

Typical issue families include:

- service backlog
- queue overload
- staffing shortage
- blocked process
- outdated or missing notice
- authority-handling inconsistency visibility
- service-coverage concern
- escalation delay

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 20. INTERVENTION STRUCTURE
# ============================================================

Government intervention must be explicit.

Typical intervention families include:

- service reprioritization
- counter reallocation
- staffing reassignment
- queue correction
- process escalation
- public-notice correction
- temporary operating-posture correction where supported
- linked civic-support routing

Intervention must connect
to visible civic-service conditions.

Intervention must not feel like
editing hidden process variables only.


# ============================================================
# 21. GOVERNMENT / SECURITY / WELFARE RELATION
# ============================================================

Government UI is related to
security,
judiciary,
welfare,
and civic-support systems,
but is not identical to them.

Government truth covers:

- public service delivery
- administrative continuity
- queue and process handling
- civic communication

Security and judiciary truth cover:

- enforcement
- incident handling
- custody or legal authority execution

Welfare truth covers:

- life-support continuity
- non-administrative support operation

Government UI may link to those surfaces,
but civic-service truth must remain primary
when government routing is selected.


# ============================================================
# 22. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
government UI-edited truths such as:

- service grouping
- queue grouping
- process grouping
- document / notice grouping
- staffing grouping
- issue grouping
- intervention target entities where needed

090.interface should define
government UI contracts such as:

- government summary exposure
- service menu and scope surfaces
- counter and queue surfaces
- case / request / process visibility surfaces
- document and notice surfaces
- public-information exposure surfaces
- issue and intervention exposure contracts


# ============================================================
# 23. FINAL RULE
# ============================================================

Government and civic service UI in Civilization must remain:

- public-service-truth aligned
- service-visible
- queue-visible
- process-visible
- notice-visible
- staffing-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from security-only or company-office truth

Government UI must treat civic institutions
as live public-service reality,
not only as case bookkeeping.



# ============================================================
# FILE: 3820013_FINANCE_AND_SECURITIES_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# FINANCE AND SECURITIES UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: finance-and-securities-ui
component: finance-and-securities-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for finance, banking, securities,
insurance, and finance-linked service operation in Civilization.

This document covers the UI family
where account access,
asset-service delivery,
product handling,
market visibility,
and finance-service trust dominate.

This document must align with:

- Civilization Facility UI Architecture
- finance / banking / securities / insurance-related architectures
- Facility Type Master Architecture
- account, asset, product, review,
  approval, market, and risk-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
financial formulas,
market formulas,
underwriting internals,
approval-law internals,
pricing internals,
or lower account / asset-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Finance and securities UI
is the canonical UI family
for finance-oriented facilities in Civilization.

This family applies when the primary truth is:

- bank service delivery
- securities service delivery
- insurance service delivery
- account and asset access
- finance-product visibility
- approval or review continuity
- market-board or finance-information continuity
- customer trust and risk visibility

Finance UI is not identical to:

- generic company office UI
- government UI
- real-estate UI
- pure marketplace UI
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- finance UI structure
- finance-service screen responsibility
- relation between setup, operation, auto, and intervention
- account / product / market / approval surface composition
- relation between finance truth and linked government / real-estate / commerce truth

This document must not redefine:

- account-balance internals
- settlement formulas
- underwriting formulas
- market-pricing internals
- loan or approval formulas
- risk-model internals
- lower trade-record truth
- lower contract-record truth
- lower asset-record truth

Those remain owned by
existing finance architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. FINANCE SERVICE TRUTH
# ============================================================

Finance and securities UI belongs to
the finance_insurance_and_securities family.

This family may include:

- bank facility
- securities company facility
- insurance facility
- national securities market facility
- finance-support counter
- investment-support facility
- real-estate finance support facility
- finance education support facility
  where finance-service truth dominates

Finance UI must resolve from
canonical_ui_target
and dominant finance-service truth,
not from shell appearance alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Finance UI must allow
the operator or service authority
to understand and manage
a live finance-service institution
as part of the persistent Civilization world.

Finance UI must expose:

- what finance services are being delivered
- how accounts, products, or service channels are behaving
- how approvals or reviews are progressing
- what market or information visibility exists
- what customer or service pressure is emerging
- what risk or exception conditions are visible
- what intervention is required

Finance UI must not collapse
into abstract ledger visibility only.


# ============================================================
# 6. FINANCE UI LIFECYCLE
# ============================================================

The canonical finance UI lifecycle is:

post-placement setup
-> institution and service-scope setup
-> account / product / service-channel setup
-> approval / review setup where applicable
-> information or market surface setup where applicable
-> ongoing finance operation
-> auto service operation where supported
-> observation
-> issue detection
-> intervention
-> continued finance operation

This lifecycle must support
persistent institutional continuity
and trust-sensitive service flow.


# ============================================================
# 7. FINANCE UI MODES
# ============================================================

Finance UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- authority_mode where appropriate
- manager_mode
- counter_mode where appropriate
- market_mode where appropriate
- review_mode where appropriate
- customer_access_mode where appropriate

Customer-facing service surfaces
may be major parts of finance systems,
but institution-side operation remains
the main subject of this architecture.


# ============================================================
# 8. FINANCE COMMON SURFACES
# ============================================================

Finance UI must inherit
the common facility UI frame
and must expose finance-specialized surfaces.

Canonical finance surfaces include:

- finance summary surface
- institution identity and trust surface
- service menu and product surface
- account and service-channel surface
- approval / review surface
- market and information-board surface
- staffing and operations surface
- risk and exception visibility surface
- fee / rate / pricing visibility surface where appropriate
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and finance event surface
- permission and role surface
- linked government / real-estate / commerce / support-facility surface


# ============================================================
# 9. FINANCE SUMMARY SURFACE
# ============================================================

The finance summary surface must provide
fast understanding of current finance-service state.

This should expose visibility into:

- institution type
- active service posture
- approval or review posture
- market or information posture where relevant
- staffing sufficiency posture
- risk posture
- active issues
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for finance-management entry.


# ============================================================
# 10. INSTITUTION IDENTITY AND TRUST SURFACE
# ============================================================

This surface defines
what finance institution exists
and what trust role it operates under.

It should expose:

- institution classification
- bank / securities / insurance / mixed posture
- operating organization context
- district or jurisdiction context
- service-scope visibility
- trust or reliability posture visibility where supported
- special authority visibility where relevant

This surface must clarify
finance-service truth clearly.


# ============================================================
# 11. SERVICE MENU AND PRODUCT SURFACE
# ============================================================

This surface covers
what finance services or products are being offered.

It should expose:

- active service grouping
- product grouping
- overloaded or underused service areas
- product-balance signals
- unsupported areas
- service-priority visibility
- reconfiguration pressure

This is a visibility and management surface.

It does not redefine
lower product model internals.


# ============================================================
# 12. ACCOUNT AND SERVICE-CHANNEL SURFACE
# ============================================================

This surface covers
how customers or users access services.

It should expose:

- account-service posture where applicable
- channel posture
- counter or digital-channel burden where supported
- access bottleneck visibility
- unstable service areas
- correction need visibility

This surface is central
to service continuity.

It does not redefine
lower account-record truth.


# ============================================================
# 13. APPROVAL / REVIEW SURFACE
# ============================================================

This surface covers
approval-sensitive finance work.

It should expose:

- review posture
- approval backlog
- blocked or delayed items
- exception visibility
- unstable review areas
- escalation need
- service-completion posture where relevant

This surface may apply strongly to:

- securities onboarding
- insurance review
- lending or finance approval
- risk-sensitive account services

This document does not redefine
review internals.


# ============================================================
# 14. MARKET AND INFORMATION-BOARD SURFACE
# ============================================================

Where relevant,
this surface covers
finance information visibility.

It should expose:

- market-board posture
- information freshness visibility
- delayed or unstable data visibility
- service information exposure
- public-facing board or internal board distinction
- correction need visibility

This surface is central
for securities and finance-information facilities.

It does not redefine
market-generation truth.


# ============================================================
# 15. STAFFING AND OPERATIONS SURFACE
# ============================================================

This surface covers
human finance-service capacity.

It should expose:

- staffing sufficiency
- role coverage
- counter or service burden
- review burden
- unsupported service areas
- shift imbalance where relevant
- manual reassignment need

This surface may connect to
larger staffing systems,
but must preserve
institution-local operational visibility.


# ============================================================
# 16. RISK AND EXCEPTION VISIBILITY SURFACE
# ============================================================

This surface is central
to finance-service trust.

It should expose:

- risk posture visibility
- exception visibility
- unstable service conditions
- abnormal-service indicators where supported
- need for manual oversight
- escalation urgency
- trust-impact visibility where relevant

This surface must remain explicit
and quickly readable.


# ============================================================
# 17. FEE / RATE / PRICING VISIBILITY SURFACE
# ============================================================

Where relevant,
the UI should expose
finance-service money posture.

This surface may include:

- fee posture
- rate visibility
- pricing visibility
- burden or competitiveness visibility
- correction need visibility

This document does not define
rate or pricing formulas.

It defines the UI responsibility
to expose institution-visible money posture where needed.


# ============================================================
# 18. AUTOMATION AND POLICY SURFACE
# ============================================================

Where finance domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current service-operation posture
- approval / review / information automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 19. KPI AND REPORT SURFACE
# ============================================================

Finance KPI visibility is mandatory.

Typical KPI groups include:

- service continuity posture
- staffing sufficiency
- approval or review posture
- channel stability posture
- market or information exposure posture where relevant
- risk posture
- exception posture
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 20. ISSUE AND ALERT SURFACE
# ============================================================

Finance operation requires
explicit issue visibility.

Typical issue families include:

- review backlog
- service bottleneck
- staffing shortage
- unstable information-board state
- risk escalation
- abnormal exception visibility
- trust-impact concern
- linked approval or authority concern

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 21. INTERVENTION STRUCTURE
# ============================================================

Finance intervention must be explicit.

Typical intervention families include:

- service reprioritization
- counter or channel correction
- review escalation
- staffing reassignment
- information-board correction
- risk escalation handling
- temporary operating-posture correction where supported
- linked authority or support routing

Intervention must connect
to visible finance-service conditions.

Intervention must not feel like
editing hidden financial variables only.


# ============================================================
# 22. FINANCE / GOVERNMENT / REAL ESTATE RELATION
# ============================================================

Finance UI is related to
government,
real estate,
and commerce systems,
but is not identical to them.

Finance truth covers:

- finance-service delivery
- account and product access
- approval and review continuity
- risk and trust visibility

Government truth covers:

- public-service and authority process continuity

Real-estate truth covers:

- property asset and contract control

Finance UI may link to those surfaces,
but finance-service truth must remain primary
when finance routing is selected.


# ============================================================
# 23. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
finance UI-edited truths such as:

- service grouping
- product grouping
- account / channel grouping
- review grouping
- market-board grouping
- risk grouping
- issue grouping
- intervention target entities where needed

090.interface should define
finance UI contracts such as:

- finance summary exposure
- service menu and product surfaces
- account and service-channel surfaces
- approval / review surfaces
- market and information-board surfaces
- risk and exception visibility surfaces
- issue and intervention exposure contracts


# ============================================================
# 24. FINAL RULE
# ============================================================

Finance and securities UI in Civilization must remain:

- finance-service-truth aligned
- product-visible
- channel-visible
- review-visible
- risk-visible
- information-visible
- staffing-visible
- issue-visible
- intervention-capable
- world-linked

Finance UI must treat finance institutions
as live trust-sensitive service reality,
not only as ledger visibility.



# ============================================================
# FILE: 3820014_SECURITY_AND_JUDICIARY_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# SECURITY AND JUDICIARY UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: security-and-judiciary-ui
component: security-and-judiciary-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for security, law-enforcement,
judiciary, and correction-related operation in Civilization.

This document covers the UI family
where public order,
incident handling,
judicial process visibility,
custody continuity,
and authority-sensitive execution truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- security / judiciary / correction-related architectures
- Facility Type Master Architecture
- incident, custody, case, authority,
  staffing, and escalation-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
criminal-law internals,
judicial-law internals,
case-evaluation internals,
sentence or custody-rule internals,
or lower incident / case-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Security and judiciary UI
is the canonical UI family
for enforcement- and judiciary-oriented facilities in Civilization.

This family applies when the primary truth is:

- public-order handling
- incident intake and response
- enforcement continuity
- judicial process visibility
- custody or detention continuity
- correction-facility operation
- authority-sensitive escalation
- safety stabilization under legal authority

Security and judiciary UI is not identical to:

- general government civic-service UI
- military UI
- generic company security UI
- residence UI
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- security and judiciary UI structure
- enforcement / judiciary screen responsibility
- relation between setup, operation, auto, and intervention
- incident / case / custody / authority surface composition
- relation between security truth and linked government / military / welfare truth

This document must not redefine:

- exact legal evaluation internals
- case-decision internals
- sentencing internals
- custody-rule internals
- investigative-rule internals
- lower incident-record truth
- lower case-record truth
- lower authority-rule internals

Those remain owned by
existing security and judiciary architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. SECURITY AND JUDICIARY SERVICE TRUTH
# ============================================================

Security and judiciary UI belongs to
the security_judiciary_and_correction family.

This family may include:

- law-enforcement support facility
- police-oriented facility
- judiciary-oriented facility
- correction-related facility
- detention-oriented facility
- enforcement-support facility
- public-order authority facility
- legal-process support facility
  where security or judiciary truth dominates

Security UI must resolve from
canonical_ui_target
and dominant authority-execution truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Security and judiciary UI must allow
the operator or authority user
to understand and manage
a live order-and-justice institution
as part of the persistent Civilization world.

Security and judiciary UI must expose:

- what incidents or cases are active
- how response or process load is behaving
- how custody or detention capacity is holding
- how staffing and authority coverage are behaving
- what escalation or safety risks are emerging
- what linked government or support burdens exist
- what interventions are required

Security and judiciary UI must not collapse
into abstract case bookkeeping only.


# ============================================================
# 6. SECURITY UI LIFECYCLE
# ============================================================

The canonical security and judiciary UI lifecycle is:

post-placement setup
-> institution and authority-role setup
-> intake / response / process setup
-> custody or correction setup where applicable
-> staffing and escalation setup
-> ongoing security or judiciary operation
-> auto operation where supported
-> observation
-> issue detection
-> intervention
-> continued security or judiciary operation

This lifecycle must support
persistent institutional continuity
and authority-sensitive time flow.


# ============================================================
# 7. SECURITY UI MODES
# ============================================================

Security and judiciary UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- authority_mode
- manager_mode
- response_mode where appropriate
- case_mode where appropriate
- custody_mode where appropriate
- correction_mode where appropriate

Public-facing information surfaces
may connect to justice systems,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. SECURITY COMMON SURFACES
# ============================================================

Security and judiciary UI must inherit
the common facility UI frame
and must expose security-specialized surfaces.

Canonical security surfaces include:

- security summary surface
- institution identity and authority surface
- incident and intake surface
- case and process visibility surface
- custody and capacity surface
- staffing and operations surface
- escalation and readiness surface
- safety and stability surface
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and authority event surface
- permission and authority surface
- linked government / welfare / military / support-facility surface


# ============================================================
# 9. SECURITY SUMMARY SURFACE
# ============================================================

The security summary surface must provide
fast understanding of current order-and-justice state.

This should expose visibility into:

- institution type
- active incident or case posture
- staffing sufficiency posture
- custody or capacity posture where relevant
- escalation posture
- active issues
- active alerts
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for security-management entry.


# ============================================================
# 10. INSTITUTION IDENTITY AND AUTHORITY SURFACE
# ============================================================

This surface defines
what authority institution exists
and under what role it operates.

It should expose:

- institution classification
- authority posture
- jurisdiction context
- operating organization context
- service-scope visibility
- special authority visibility where relevant
- linked public-order or judiciary identity

This surface must clarify
security or judiciary truth clearly.


# ============================================================
# 11. INCIDENT AND INTAKE SURFACE
# ============================================================

This surface covers
what is entering the system.

It should expose:

- incident posture
- intake load
- severity grouping where supported
- response burden visibility
- backlog signals
- unstable intake areas
- escalation need

This is a live operational surface.

It does not redefine
lower incident-record truth.


# ============================================================
# 12. CASE AND PROCESS VISIBILITY SURFACE
# ============================================================

This surface covers
how justice-related work is progressing.

It should expose:

- case posture
- process backlog
- blocked or delayed work
- unstable process areas
- progression visibility
- escalation need
- completion posture where relevant

This surface is central
to justice continuity.

It does not redefine
lower case model truth.


# ============================================================
# 13. CUSTODY AND CAPACITY SURFACE
# ============================================================

Where applicable,
this surface covers
detention, custody,
or controlled-capacity posture.

It should expose:

- custody load
- capacity sufficiency
- overcapacity or underuse
- unstable custody areas
- transfer or reallocation need
- correction burden where relevant
- safety-related capacity pressure

This surface must remain explicit
and quickly readable.


# ============================================================
# 14. STAFFING AND OPERATIONS SURFACE
# ============================================================

This surface covers
human authority capacity.

It should expose:

- staffing sufficiency
- role coverage
- response burden
- process burden
- unsupported operational areas
- shift imbalance where relevant
- manual reassignment need

This surface may connect to
larger authority staffing systems,
but must preserve
institution-local operational visibility.


# ============================================================
# 15. ESCALATION AND READINESS SURFACE
# ============================================================

This surface is central
to authority execution.

It should expose:

- readiness posture
- escalation posture
- emergency-response visibility where supported
- instability signals
- need for rapid authority correction
- linked dependency visibility

This surface bridges
ordinary operation
and high-authority intervention.


# ============================================================
# 16. SAFETY AND STABILITY SURFACE
# ============================================================

This surface covers
institutional stability
and public-order continuity.

It should expose:

- safety posture
- correction or detention stability where relevant
- internal instability visibility
- risk concentration
- support burden
- urgent corrective need

This surface may connect to
government or welfare systems,
but must preserve
security-side truth.


# ============================================================
# 17. AUTOMATION AND POLICY SURFACE
# ============================================================

Where security or judiciary domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current response or process posture
- intake / case / custody automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 18. KPI AND REPORT SURFACE
# ============================================================

Security and judiciary KPI visibility is mandatory.

Typical KPI groups include:

- response continuity posture
- staffing sufficiency
- intake posture
- case progression posture
- custody-capacity posture where relevant
- escalation posture
- stability posture
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 19. ISSUE AND ALERT SURFACE
# ============================================================

Security and judiciary operation requires
explicit issue visibility.

Typical issue families include:

- incident overload
- case backlog
- staffing shortage
- custody-capacity concern
- escalation delay
- stability concern
- linked authority inconsistency visibility
- urgent intervention trigger

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 20. INTERVENTION STRUCTURE
# ============================================================

Security and judiciary intervention must be explicit.

Typical intervention families include:

- response reprioritization
- staffing reassignment
- escalation correction
- custody-capacity correction
- process escalation
- stability-response correction
- temporary operating-posture correction where supported
- linked authority or support routing

Intervention must connect
to visible authority conditions.

Intervention must not feel like
editing hidden legal variables only.


# ============================================================
# 21. SECURITY / GOVERNMENT / MILITARY RELATION
# ============================================================

Security and judiciary UI is related to
government,
military,
and welfare systems,
but is not identical to them.

Security and judiciary truth covers:

- enforcement continuity
- incident and case handling
- custody and correction continuity
- authority-sensitive stabilization

Government truth covers:

- civic-service delivery
- administrative continuity

Military truth covers:

- defense readiness
- force organization and deployment

Security and judiciary UI may link to those surfaces,
but enforcement and justice truth must remain primary
when security routing is selected.


# ============================================================
# 22. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
security UI-edited truths such as:

- incident grouping
- case grouping
- custody grouping
- staffing grouping
- escalation grouping
- issue grouping
- intervention target entities where needed

090.interface should define
security UI contracts such as:

- security summary exposure
- incident and intake surfaces
- case and process visibility surfaces
- custody and capacity surfaces
- staffing and operations surfaces
- escalation and readiness surfaces
- issue and intervention exposure contracts


# ============================================================
# 23. FINAL RULE
# ============================================================

Security and judiciary UI in Civilization must remain:

- enforcement-and-justice-truth aligned
- incident-visible
- case-visible
- capacity-visible
- readiness-visible
- stability-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from government-only or military-only truth

Security and judiciary UI must treat authority institutions
as live order-and-justice reality,
not only as case bookkeeping.



# ============================================================
# FILE: 3820015_MILITARY_BASE_OPERATION_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# MILITARY BASE OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: military-base-operation-ui
component: military-base-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for military base,
defense-support,
deployment-support,
and military-readiness operation in Civilization.

This document covers the UI family
where force organization,
readiness posture,
equipment and supply continuity,
training posture,
and deployment-sensitive defense truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- military-base-related detailed configuration architectures
- Facility Type Master Architecture
- force, readiness, equipment, supply,
  training, deployment, and authority-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
combat logic,
engagement rules,
battle formulas,
command-law internals,
or lower force-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Military base operation UI
is the canonical UI family
for defense-oriented facilities in Civilization.

This family applies when the primary truth is:

- base readiness
- force organization
- equipment continuity
- military supply posture
- training continuity
- deployment support
- alert-state handling
- defense-support institutional continuity

Military UI is not identical to:

- security and judiciary UI
- generic government UI
- logistics-only UI
- residence or dormitory UI
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- military UI structure
- base-operation screen responsibility
- relation between setup, operation, auto, and intervention
- force / readiness / supply / training surface composition
- relation between military truth and linked logistics / government / security truth

This document must not redefine:

- combat-resolution internals
- operational battle algorithms
- engagement-rule internals
- command-chain law internals
- weapon-system internals
- lower force-record truth
- lower deployment-record truth
- lower defense-strategy internals

Those remain owned by
existing military architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. MILITARY SERVICE TRUTH
# ============================================================

Military base operation UI belongs to
the military_and_defense family.

This family may include:

- military base
- defense support facility
- deployment support facility
- training-oriented military facility
- logistics-support base where defense truth dominates
- strategic readiness facility
- military command-support facility
  where military-readiness truth dominates

Military UI must resolve from
canonical_ui_target
and dominant defense-service truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Military UI must allow
the operator or authority user
to understand and manage
a live defense institution
as part of the persistent Civilization world.

Military UI must expose:

- what force structure exists
- how readiness is behaving
- how training and support posture are holding
- how equipment and supply are behaving
- how alert or deployment posture is changing
- what capacity or burden issues are emerging
- what intervention is required

Military UI must not collapse
into abstract readiness bookkeeping only.


# ============================================================
# 6. MILITARY UI LIFECYCLE
# ============================================================

The canonical military UI lifecycle is:

post-placement setup
-> base and role setup
-> force and readiness setup
-> supply and equipment setup
-> training and deployment-support setup
-> ongoing military operation
-> auto military operation where supported
-> observation
-> issue detection
-> intervention
-> continued military operation

This lifecycle must support
persistent institutional continuity,
alert-sensitive operation,
and defense-readiness time flow.


# ============================================================
# 7. MILITARY UI MODES
# ============================================================

Military UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- authority_mode
- command_mode where appropriate
- readiness_mode where appropriate
- training_mode where appropriate
- supply_mode where appropriate
- deployment_mode where appropriate

Public-facing surfaces are not
the main subject
of this operation UI architecture.


# ============================================================
# 8. MILITARY COMMON SURFACES
# ============================================================

Military UI must inherit
the common facility UI frame
and must expose military-specialized surfaces.

Canonical military surfaces include:

- military summary surface
- base identity and defense-role surface
- force organization surface
- readiness and alert surface
- equipment and maintenance surface
- supply and support surface
- training and preparedness surface
- deployment-support surface
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and defense event surface
- permission and authority surface
- linked logistics / government / security / support-facility surface


# ============================================================
# 9. MILITARY SUMMARY SURFACE
# ============================================================

The military summary surface must provide
fast understanding of current defense state.

This should expose visibility into:

- base type
- current force posture
- readiness posture
- supply sufficiency posture
- training posture
- active issues
- active alerts
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for military-management entry.


# ============================================================
# 10. BASE IDENTITY AND DEFENSE-ROLE SURFACE
# ============================================================

This surface defines
what kind of defense institution exists
and what role it performs.

It should expose:

- base classification
- defense-role posture
- jurisdiction or strategic context
- operating organization context
- service-scope visibility
- special authority visibility where relevant
- linked defense identity

This surface must clarify
military-readiness truth clearly.


# ============================================================
# 11. FORCE ORGANIZATION SURFACE
# ============================================================

This surface covers
what force structure exists locally.

It should expose:

- force grouping
- role grouping where supported
- imbalance visibility
- unsupported force areas
- concentration or underuse signals
- reallocation pressure
- structure instability visibility

This is a visibility and management surface.

It does not redefine
lower force model internals.


# ============================================================
# 12. READINESS AND ALERT SURFACE
# ============================================================

This surface is central
to military truth.

It should expose:

- readiness posture
- alert posture
- degraded readiness visibility
- unstable readiness areas
- surge burden where relevant
- escalation urgency
- corrective need

This surface must remain explicit
and quickly readable.


# ============================================================
# 13. EQUIPMENT AND MAINTENANCE SURFACE
# ============================================================

This surface covers
core defense assets.

It should expose:

- equipment posture
- readiness of key assets
- degradation visibility
- maintenance burden
- repair backlog
- capability gap visibility
- manual reassignment or downtime need

This is a live operational surface,
not a pure asset register.


# ============================================================
# 14. SUPPLY AND SUPPORT SURFACE
# ============================================================

This surface covers
resource continuity for defense operation.

It should expose:

- supply sufficiency
- support posture
- shortage risk
- critical-resource visibility
- disruption risk
- dependency visibility
- escalation need

This surface is central
to military continuity.

It does not redefine
lower supply model truth.


# ============================================================
# 15. TRAINING AND PREPAREDNESS SURFACE
# ============================================================

This surface covers
non-combat readiness continuity.

It should expose:

- training posture
- preparedness burden
- unsupported training areas
- imbalance visibility
- readiness-improvement need
- correction urgency

This surface keeps
preparedness reality visible.


# ============================================================
# 16. DEPLOYMENT-SUPPORT SURFACE
# ============================================================

Where relevant,
this surface covers
deployment and support posture.

It should expose:

- deployment-support posture
- movement-readiness visibility
- support burden
- handoff or staging visibility
- instability signals
- linked logistics dependency visibility

This surface bridges
base reality
and wider defense movement.


# ============================================================
# 17. AUTOMATION AND POLICY SURFACE
# ============================================================

Where military domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current defense-operation posture
- readiness / support / training automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 18. KPI AND REPORT SURFACE
# ============================================================

Military KPI visibility is mandatory.

Typical KPI groups include:

- readiness posture
- force sufficiency
- supply sufficiency
- training posture
- equipment continuity
- alert posture
- support burden
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 19. ISSUE AND ALERT SURFACE
# ============================================================

Military operation requires
explicit issue visibility.

Typical issue families include:

- degraded readiness
- supply shortage
- equipment degradation
- training shortfall
- alert instability
- support burden concern
- linked logistics concern
- urgent intervention trigger

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 20. INTERVENTION STRUCTURE
# ============================================================

Military intervention must be explicit.

Typical intervention families include:

- readiness reprioritization
- force reassignment
- supply escalation
- equipment maintenance escalation
- training correction
- alert-posture correction
- deployment-support correction
- temporary operating-posture correction where supported

Intervention must connect
to visible defense conditions.

Intervention must not feel like
editing hidden battle variables only.


# ============================================================
# 21. MILITARY / SECURITY / LOGISTICS RELATION
# ============================================================

Military UI is related to
security,
government,
and logistics systems,
but is not identical to them.

Military truth covers:

- defense readiness
- force organization
- supply and support continuity
- alert and deployment-sensitive operation

Security truth covers:

- enforcement continuity
- incident and justice handling

Logistics truth covers:

- movement and transfer continuity
- routing and node behavior

Military UI may link to those surfaces,
but defense-readiness truth must remain primary
when military routing is selected.


# ============================================================
# 22. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
military UI-edited truths such as:

- force grouping
- readiness grouping
- equipment grouping
- supply grouping
- training grouping
- issue grouping
- intervention target entities where needed

090.interface should define
military UI contracts such as:

- military summary exposure
- force organization surfaces
- readiness and alert surfaces
- equipment and maintenance surfaces
- supply and support surfaces
- training and preparedness surfaces
- deployment-support surfaces
- issue and intervention exposure contracts


# ============================================================
# 23. FINAL RULE
# ============================================================

Military base operation UI in Civilization must remain:

- defense-readiness-truth aligned
- force-visible
- readiness-visible
- supply-visible
- equipment-visible
- training-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from security-only or logistics-only truth

Military UI must treat military bases
as live defense-readiness reality,
not only as readiness bookkeeping.



# ============================================================
# FILE: 3820016_MEDIA_OPERATION_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# MEDIA OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: media-operation-ui
component: media-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for media, broadcast,
distribution, publication,
and media-linked operation in Civilization.

This document covers the UI family
where content planning,
publication continuity,
distribution scheduling,
audience visibility,
and media-operation truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- media / broadcast / distribution-related architectures
- Facility Type Master Architecture
- content, schedule, audience,
  staffing, advertising, and distribution-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
content-ranking formulas,
distribution algorithms,
audience-model internals,
advertising-pricing formulas,
or lower media-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Media operation UI
is the canonical UI family
for media-oriented facilities in Civilization.

This family applies when the primary truth is:

- content planning
- publication or broadcast operation
- distribution scheduling
- audience exposure continuity
- advertising and media-space coordination
- editorial or production throughput
- media-service reliability
- public information or entertainment delivery
  where media truth dominates

Media UI is not identical to:

- streamer agency UI
- exhibition UI
- government civic-notice UI
- generic company premises UI
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- media UI structure
- media-operation screen responsibility
- relation between setup, operation, auto, and intervention
- content / schedule / audience / advertising surface composition
- relation between media truth and linked streamer / exhibition / government truth

This document must not redefine:

- distribution algorithms
- content recommendation internals
- audience-profiling internals
- ad-pricing formulas
- lower publication-record truth
- lower content-record truth
- lower schedule-execution internals

Those remain owned by
existing media architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. MEDIA SERVICE TRUTH
# ============================================================

Media operation UI belongs to
the media_broadcast_and_distribution family.

This family may include:

- media operation site
- broadcast-related facility
- distribution-support facility
- editorial production facility
- advertising-linked media facility
- publication-oriented media facility
- mixed media facility
  where media-service truth dominates

Media UI must resolve from
canonical_ui_target
and dominant media-service truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Media UI must allow
the operator to understand and manage
a live media institution
as part of the persistent Civilization world.

Media UI must expose:

- what content or media services are active
- how publication or broadcast schedules are behaving
- how audience exposure is moving
- how staffing and production burden are behaving
- how advertising or sponsorship posture is holding
- what delays, instability, or visibility issues are emerging
- what interventions are required

Media UI must not collapse
into abstract content bookkeeping only.


# ============================================================
# 6. MEDIA UI LIFECYCLE
# ============================================================

The canonical media UI lifecycle is:

post-placement setup
-> institution and media-scope setup
-> content and schedule setup
-> staffing and production setup
-> audience / advertising setup where applicable
-> ongoing media operation
-> auto media operation where supported
-> observation
-> issue detection
-> intervention
-> continued media operation

This lifecycle must support
time-based publication continuity,
persistent media identity,
and world-linked communication flow.


# ============================================================
# 7. MEDIA UI MODES
# ============================================================

Media UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- editorial_mode where appropriate
- schedule_mode where appropriate
- audience_mode where appropriate
- advertising_mode where appropriate

Audience-facing consumption surfaces
may connect to media systems,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. MEDIA COMMON SURFACES
# ============================================================

Media UI must inherit
the common facility UI frame
and must expose media-specialized surfaces.

Canonical media surfaces include:

- media summary surface
- institution identity and media-role surface
- content and catalog surface
- publication / broadcast / schedule surface
- staffing and production surface
- audience and reach surface
- advertising and sponsorship surface where applicable
- reliability and exposure surface
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and media event surface
- permission and role surface
- linked streamer / exhibition / government / support-facility surface


# ============================================================
# 9. MEDIA SUMMARY SURFACE
# ============================================================

The media summary surface must provide
fast understanding of current media state.

This should expose visibility into:

- institution type
- active content posture
- schedule posture
- staffing sufficiency posture
- audience posture
- active issues
- active alerts
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for media-management entry.


# ============================================================
# 10. INSTITUTION IDENTITY AND MEDIA-ROLE SURFACE
# ============================================================

This surface defines
what kind of media institution exists.

It should expose:

- institution classification
- publication / broadcast / distribution posture
- operating organization context
- district or jurisdiction context
- service-scope visibility
- linked media identity
- public-facing role visibility where relevant

This surface must clarify
media-service truth clearly.


# ============================================================
# 11. CONTENT AND CATALOG SURFACE
# ============================================================

This surface covers
what is being produced or distributed.

It should expose:

- content grouping
- category balance
- active versus inactive content visibility
- unsupported or overloaded areas
- content-priority posture
- catalog imbalance visibility
- reconfiguration pressure

This is a visibility and management surface.

It does not redefine
lower content model internals.


# ============================================================
# 12. PUBLICATION / BROADCAST / SCHEDULE SURFACE
# ============================================================

This surface covers
when and how media is being released.

It should expose:

- schedule posture
- timing visibility
- delay signals
- schedule overload
- unstable publication areas
- bottleneck visibility
- correction need

This surface is central
to media continuity.

It does not redefine
lower schedule-execution internals.


# ============================================================
# 13. STAFFING AND PRODUCTION SURFACE
# ============================================================

This surface covers
human and production capacity.

It should expose:

- staffing sufficiency
- role coverage
- production burden
- editorial or coordination burden
- unsupported areas
- shift or timing imbalance where relevant
- manual reassignment need

This surface may connect to
larger staffing systems,
but must preserve
institution-local operational visibility.


# ============================================================
# 14. AUDIENCE AND REACH SURFACE
# ============================================================

This surface covers
how the media operation is reaching people.

It should expose:

- audience posture
- reach visibility
- unstable exposure areas
- engagement or interest signals where supported
- distribution imbalance
- growth or decline signals
- correction need visibility

This surface must remain explicit
and quickly readable.


# ============================================================
# 15. ADVERTISING AND SPONSORSHIP SURFACE
# ============================================================

Where applicable,
this surface covers
media-linked monetization posture.

It should expose:

- advertising posture
- sponsorship visibility
- burden or opportunity visibility
- underused space or over-concentration signals
- correction need
- linked commercial coordination visibility

This document does not define
pricing formulas.

It defines the UI responsibility
to expose operator-visible monetization posture.


# ============================================================
# 16. RELIABILITY AND EXPOSURE SURFACE
# ============================================================

This surface covers
delivery continuity and public visibility.

It should expose:

- reliability posture
- interruption visibility
- degraded exposure visibility
- delay concentration
- unstable service areas
- urgency of correction

This surface bridges
normal schedule management
and intervention.


# ============================================================
# 17. AUTOMATION AND POLICY SURFACE
# ============================================================

Where media domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current media-operation posture
- schedule / distribution / exposure automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 18. KPI AND REPORT SURFACE
# ============================================================

Media KPI visibility is mandatory.

Typical KPI groups include:

- content continuity posture
- schedule stability posture
- staffing sufficiency
- audience or reach posture
- advertising posture where applicable
- reliability posture
- exposure stability
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 19. ISSUE AND ALERT SURFACE
# ============================================================

Media operation requires
explicit issue visibility.

Typical issue families include:

- schedule disruption
- production backlog
- staffing shortage
- exposure instability
- audience decline concern
- advertising imbalance
- publication delay
- urgent intervention trigger

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 20. INTERVENTION STRUCTURE
# ============================================================

Media intervention must be explicit.

Typical intervention families include:

- content reprioritization
- schedule correction
- staffing reassignment
- exposure correction
- advertising correction
- production escalation
- temporary operating-posture correction where supported
- linked external coordination routing

Intervention must connect
to visible media conditions.

Intervention must not feel like
editing hidden distribution variables only.


# ============================================================
# 21. MEDIA / STREAMER / GOVERNMENT RELATION
# ============================================================

Media UI is related to
streamer,
government,
and exhibition systems,
but is not identical to them.

Media truth covers:

- media publication and distribution continuity
- content and schedule operation
- audience and exposure continuity

Streamer truth covers:

- agency and creator-support operation
- roster, goods, and mirrored-revenue coordination

Government truth covers:

- civic notices and public-service communication

Media UI may link to those surfaces,
but media-service truth must remain primary
when media routing is selected.


# ============================================================
# 22. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
media UI-edited truths such as:

- content grouping
- schedule grouping
- staffing grouping
- audience grouping
- advertising grouping
- issue grouping
- intervention target entities where needed

090.interface should define
media UI contracts such as:

- media summary exposure
- content and catalog surfaces
- publication / broadcast / schedule surfaces
- staffing and production surfaces
- audience and reach surfaces
- advertising and sponsorship surfaces
- issue and intervention exposure contracts


# ============================================================
# 23. FINAL RULE
# ============================================================

Media operation UI in Civilization must remain:

- media-service-truth aligned
- content-visible
- schedule-visible
- audience-visible
- reliability-visible
- monetization-visible where applicable
- issue-visible
- intervention-capable
- world-linked
- clearly separated from streamer-only or government-only truth

Media UI must treat media institutions
as live communication reality,
not only as content bookkeeping.



# ============================================================
# FILE: 3820017_EXHIBITION_AND_EVENT_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# EXHIBITION AND EVENT UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: exhibition-and-event-ui
component: exhibition-and-event-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for exhibition, venue,
conference, showcase,
and event-oriented operation in Civilization.

This document covers the UI family
where venue scheduling,
layout composition,
exhibitor or participant coordination,
admission flow,
and event-cycle truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- Exhibition Builder Architecture
- exhibition / event-related architectures
- Facility Type Master Architecture
- layout, ticket, exhibitor,
  schedule, staffing, and venue-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
ticket-pricing formulas,
layout-rule internals,
admission formulas,
or lower event-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Exhibition and event UI
is the canonical UI family
for venue- and event-oriented facilities in Civilization.

This family applies when the primary truth is:

- exhibition operation
- venue scheduling
- conference or event hosting
- exhibitor or participant coordination
- admission and visitor-flow handling
- temporary-cycle operation
- venue readiness and turnover continuity
- event-specific public activity

Exhibition UI is not identical to:

- culture and leisure UI
- media UI
- government public-service UI
- generic company premises UI
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- exhibition UI structure
- venue-operation screen responsibility
- relation between setup, operation, auto, and intervention
- layout / schedule / exhibitor / admission surface composition
- relation between exhibition truth and linked media / culture / commerce truth

This document must not redefine:

- ticket formulas
- admission-control internals
- exact layout-rule internals
- exhibitor contract internals
- lower event-record truth
- lower venue-booking truth
- lower participant-record truth

Those remain owned by
existing exhibition architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. EXHIBITION SERVICE TRUTH
# ============================================================

Exhibition and event UI belongs to
the exhibition_and_event family.

This family may include:

- exhibition hall
- event venue
- conference hall
- showcase facility
- temporary curated event site
- exhibitor-oriented venue
- ticketed public event site
  where event-cycle truth dominates

Exhibition UI must resolve from
canonical_ui_target
and dominant venue-operation truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Exhibition UI must allow
the operator to understand and manage
a live venue or event institution
as part of the persistent Civilization world.

Exhibition UI must expose:

- what events or exhibitions are active
- how venue layout and space allocation are configured
- how exhibitor or participant coordination is behaving
- how admission and visitor flow are holding
- how staffing and turnover burden are behaving
- what schedule or readiness issues are emerging
- what interventions are required

Exhibition UI must not collapse
into abstract booking bookkeeping only.


# ============================================================
# 6. EXHIBITION UI LIFECYCLE
# ============================================================

The canonical exhibition UI lifecycle is:

post-placement setup
-> venue identity and scope setup
-> layout and admission setup
-> exhibitor / participant setup
-> staffing and schedule setup
-> ongoing event or exhibition operation
-> auto event operation where supported
-> observation
-> issue detection
-> intervention
-> continued venue or event operation

This lifecycle must support
temporary-cycle continuity,
turnover between events,
and world-linked public activity.


# ============================================================
# 7. EXHIBITION UI MODES
# ============================================================

Exhibition UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- venue_mode where appropriate
- exhibitor_mode where appropriate
- admission_mode where appropriate
- schedule_mode where appropriate

Visitor-facing event-consumption surfaces
may connect to venue systems,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. EXHIBITION COMMON SURFACES
# ============================================================

Exhibition UI must inherit
the common facility UI frame
and must expose exhibition-specialized surfaces.

Canonical exhibition surfaces include:

- exhibition summary surface
- venue identity and event-role surface
- event and program surface
- layout and space-allocation surface
- exhibitor and participant surface
- admission and visitor-flow surface
- staffing and turnover surface
- pricing / ticket visibility surface where applicable
- readiness and reliability surface
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and event-cycle surface
- permission and role surface
- linked media / commerce / culture / support-facility surface


# ============================================================
# 9. EXHIBITION SUMMARY SURFACE
# ============================================================

The exhibition summary surface must provide
fast understanding of current venue or event state.

This should expose visibility into:

- venue type
- active event posture
- layout readiness posture
- staffing sufficiency posture
- admission posture
- active issues
- active alerts
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for exhibition-management entry.


# ============================================================
# 10. VENUE IDENTITY AND EVENT-ROLE SURFACE
# ============================================================

This surface defines
what kind of venue institution exists.

It should expose:

- venue classification
- exhibition / conference / event posture
- operating organization context
- district or jurisdiction context
- service-scope visibility
- linked venue identity
- public-facing role visibility where relevant

This surface must clarify
event-operation truth clearly.


# ============================================================
# 11. EVENT AND PROGRAM SURFACE
# ============================================================

This surface covers
what is happening in the venue.

It should expose:

- active event grouping
- program visibility
- time-based event posture
- overloaded or underused program areas
- schedule imbalance visibility
- unsupported areas
- reconfiguration pressure

This is a visibility and management surface.

It does not redefine
lower event model internals.


# ============================================================
# 12. LAYOUT AND SPACE-ALLOCATION SURFACE
# ============================================================

This surface covers
how venue space is being used.

It should expose:

- layout posture
- exhibitor or zone allocation
- overcrowding or underuse
- spatial bottleneck visibility
- setup-readiness visibility
- reallocation need
- mismatch between intended and actual use

This surface is central
to venue reality.

It does not redefine
lower layout-rule truth.


# ============================================================
# 13. EXHIBITOR AND PARTICIPANT SURFACE
# ============================================================

This surface covers
who is participating in the event cycle.

It should expose:

- exhibitor posture
- participant grouping
- unsupported or overloaded areas
- onboarding or readiness visibility
- coordination burden
- absence or instability signals
- correction need

This surface may connect to
commerce or media systems,
but must preserve
venue-local operational visibility.


# ============================================================
# 14. ADMISSION AND VISITOR-FLOW SURFACE
# ============================================================

This surface covers
how people enter and move through the venue.

It should expose:

- admission posture
- ticket or entry visibility where applicable
- queue posture
- visitor-flow sufficiency
- overcapacity or underuse
- bottleneck visibility
- correction need

This surface must remain explicit
and quickly readable.


# ============================================================
# 15. STAFFING AND TURNOVER SURFACE
# ============================================================

This surface covers
human venue-operation capacity.

It should expose:

- staffing sufficiency
- role coverage
- event-turnover burden
- unsupported operational areas
- shift or timing imbalance
- setup / teardown burden where relevant
- manual reassignment need

This surface may connect to
larger staffing systems,
but must preserve
venue-local operational visibility.


# ============================================================
# 16. PRICING / TICKET VISIBILITY SURFACE
# ============================================================

Where applicable,
the UI should expose
event-related money posture.

This surface may include:

- ticket posture
- pricing visibility
- revenue-pressure visibility
- underperforming event visibility
- correction need visibility

This document does not define
ticket formulas.

It defines the UI responsibility
to expose venue-visible money posture where needed.


# ============================================================
# 17. READINESS AND RELIABILITY SURFACE
# ============================================================

This surface covers
venue continuity and event stability.

It should expose:

- readiness posture
- setup completion visibility
- instability signals
- delay concentration
- service reliability visibility
- urgency of correction

This surface bridges
schedule management
and intervention.


# ============================================================
# 18. AUTOMATION AND POLICY SURFACE
# ============================================================

Where exhibition domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current venue-operation posture
- layout / admission / schedule automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 19. KPI AND REPORT SURFACE
# ============================================================

Exhibition KPI visibility is mandatory.

Typical KPI groups include:

- event continuity posture
- layout readiness posture
- staffing sufficiency
- admission posture
- visitor-flow posture
- readiness and reliability posture
- venue-turnover burden
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 20. ISSUE AND ALERT SURFACE
# ============================================================

Exhibition operation requires
explicit issue visibility.

Typical issue families include:

- layout instability
- staffing shortage
- exhibitor coordination burden
- admission bottleneck
- schedule delay
- readiness concern
- visitor-flow instability
- urgent intervention trigger

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 21. INTERVENTION STRUCTURE
# ============================================================

Exhibition intervention must be explicit.

Typical intervention families include:

- layout correction
- exhibitor or participant reallocation
- staffing reassignment
- admission correction
- schedule correction
- readiness escalation
- temporary operating-posture correction where supported
- linked media or commerce routing

Intervention must connect
to visible venue conditions.

Intervention must not feel like
editing hidden event variables only.


# ============================================================
# 22. EXHIBITION / MEDIA / CULTURE RELATION
# ============================================================

Exhibition UI is related to
media,
culture,
and commerce systems,
but is not identical to them.

Exhibition truth covers:

- venue-cycle operation
- space allocation
- admission and visitor flow
- event readiness and turnover continuity

Media truth covers:

- publication, broadcast, and audience-distribution continuity

Culture and leisure truth covers:

- broader attraction and leisure operation

Exhibition UI may link to those surfaces,
but venue-operation truth must remain primary
when exhibition routing is selected.


# ============================================================
# 23. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
exhibition UI-edited truths such as:

- event grouping
- layout grouping
- exhibitor grouping
- admission grouping
- staffing grouping
- issue grouping
- intervention target entities where needed

090.interface should define
exhibition UI contracts such as:

- exhibition summary exposure
- event and program surfaces
- layout and space-allocation surfaces
- exhibitor and participant surfaces
- admission and visitor-flow surfaces
- staffing and turnover surfaces
- readiness and reliability surfaces
- issue and intervention exposure contracts


# ============================================================
# 24. FINAL RULE
# ============================================================

Exhibition and event UI in Civilization must remain:

- venue-operation-truth aligned
- event-visible
- layout-visible
- participant-visible
- admission-visible
- readiness-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from media-only or culture-only truth

Exhibition UI must treat venues
as live public-event reality,
not only as booking bookkeeping.



# ============================================================
# FILE: 3820018_COMPANY_PREMISES_AND_TENANT_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# COMPANY PREMISES AND TENANT UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: company-premises-and-tenant-ui
component: company-premises-and-tenant-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for company premises, office sites,
branch facilities, tenant spaces,
multi-tenant buildings,
and company-occupancy operation in Civilization.

This document covers the UI family
where site structure, floor allocation,
tenant composition, shared-facility usage,
and company-occupancy truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- Company Builder Architecture
- company site / premises / tenant / store-opening-related architectures
- Facility Type Master Architecture
- tenancy, occupancy, access,
  staffing, and site-structure-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
lease-law internals,
office-contract internals,
company-governance internals,
rent formulas,
or lower tenancy-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Company premises and tenant UI
is the canonical UI family
for company-occupancy-oriented facilities in Civilization.

This family applies when the primary truth is:

- company site operation
- office premises operation
- branch occupancy
- tenant allocation inside buildings
- shared-space usage
- floor or section assignment
- company-local access and occupancy continuity
- multi-tenant building coordination
- organization-to-space relation management

Company-premises UI is not identical to:

- real-estate portfolio UI
- residence UI
- retail store-operation UI
- generic government office UI
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- company-premises UI structure
- premises- and tenant-operation screen responsibility
- relation between setup, operation, auto, and intervention
- site / floor / tenant / shared-space surface composition
- relation between premises truth and linked real-estate / company / retail truth

This document must not redefine:

- lease-contract internals
- real-estate portfolio internals
- lower rent or fee formulas
- lower company-governance internals
- lower tenancy-record truth
- lower access-right internals

Those remain owned by
existing company premises architectures,
real-estate architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. COMPANY PREMISES SERVICE TRUTH
# ============================================================

Company premises and tenant UI belongs to
the company_premises_tenant_and_office family.

This family may include:

- company headquarters
- branch office
- office floor
- premises site
- tenant space
- multi-tenant office building context
- creator-owned company premises
- company-managed office complex
  where company-occupancy truth dominates

Company-premises UI must resolve from
canonical_ui_target
and dominant company-occupancy truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Company-premises UI must allow
the operator to understand and manage
a live company-occupancy institution
as part of the persistent Civilization world.

Company-premises UI must expose:

- what site or premises structure exists
- which organizations occupy which spaces
- how floors, sections, or rooms are allocated
- how shared spaces are being used
- how occupancy, access, and support burden are behaving
- what instability, overload, or tenant issues are emerging
- what interventions are required

Company-premises UI must not collapse
into abstract room bookkeeping only.


# ============================================================
# 6. COMPANY PREMISES UI LIFECYCLE
# ============================================================

The canonical company-premises UI lifecycle is:

post-placement setup
-> site and premises identity setup
-> floor / section / shared-space setup
-> tenant or branch allocation setup
-> access and operations setup
-> ongoing premises operation
-> auto premises operation where supported
-> observation
-> issue detection
-> intervention
-> continued premises operation

This lifecycle must support
persistent site continuity
and organization-linked occupancy flow.


# ============================================================
# 7. COMPANY PREMISES UI MODES
# ============================================================

Company-premises UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- tenant_mode where appropriate
- facilities_mode where appropriate
- access_mode where appropriate
- shared_space_mode where appropriate

Public-facing surfaces may connect
to building directories or entry logic,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. COMPANY PREMISES COMMON SURFACES
# ============================================================

Company-premises UI must inherit
the common facility UI frame
and must expose premises-specialized surfaces.

Canonical company-premises surfaces include:

- premises summary surface
- site identity and premises-role surface
- site / floor / section structure surface
- tenant and organization allocation surface
- shared-space and common-facility surface
- access and movement surface
- staffing and support-operations surface
- occupancy and usage visibility surface
- fee / cost visibility surface where applicable
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and premises event surface
- permission and role surface
- linked real-estate / retail / company / support-facility surface


# ============================================================
# 9. PREMISES SUMMARY SURFACE
# ============================================================

The premises summary surface must provide
fast understanding of current premises state.

This should expose visibility into:

- site or premises type
- occupancy posture
- tenant or branch posture
- shared-space posture
- support or access burden
- active issues
- active alerts
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for premises-management entry.


# ============================================================
# 10. SITE IDENTITY AND PREMISES-ROLE SURFACE
# ============================================================

This surface defines
what kind of company premises exists.

It should expose:

- site classification
- headquarters / branch / office / mixed posture
- operating organization context
- district or jurisdiction context
- premises-scope visibility
- linked company identity
- special usage visibility where relevant

This surface must clarify
company-occupancy truth clearly.


# ============================================================
# 11. SITE / FLOOR / SECTION STRUCTURE SURFACE
# ============================================================

This surface covers
how the premises is physically organized.

It should expose:

- site grouping
- floor structure
- section or room grouping
- underused or overloaded areas
- structure imbalance visibility
- unsupported areas
- reallocation pressure

This is a visibility and management surface.

It does not redefine
lower building-structure truth.


# ============================================================
# 12. TENANT AND ORGANIZATION ALLOCATION SURFACE
# ============================================================

This surface covers
who occupies the premises.

It should expose:

- tenant posture
- branch allocation posture
- organization-to-space mapping
- unstable or mismatched occupancy
- underuse or over-concentration
- reassignment need
- linked business-use visibility

This surface is central
to premises continuity.

It does not redefine
lower tenancy-record truth.


# ============================================================
# 13. SHARED-SPACE AND COMMON-FACILITY SURFACE
# ============================================================

This surface covers
spaces that are jointly used.

It should expose:

- shared-space posture
- common-facility load
- usage imbalance
- conflict or contention visibility
- unsupported common areas
- correction need
- shared-resource burden

This surface must remain explicit
and quickly readable.


# ============================================================
# 14. ACCESS AND MOVEMENT SURFACE
# ============================================================

This surface covers
movement and access continuity
inside the premises.

It should expose:

- access posture
- restricted or controlled areas
- movement bottlenecks where supported
- entry burden visibility
- unstable access areas
- correction need

This surface may connect to
security or building systems,
but must preserve
premises-local operational truth.


# ============================================================
# 15. STAFFING AND SUPPORT-OPERATIONS SURFACE
# ============================================================

This surface covers
human support capacity
for the premises.

It should expose:

- staffing sufficiency
- facilities-support burden
- reception or support burden where relevant
- unsupported operational areas
- shift imbalance where relevant
- manual reassignment need

This surface may connect to
larger company staffing systems,
but must preserve
site-local operational visibility.


# ============================================================
# 16. OCCUPANCY AND USAGE VISIBILITY SURFACE
# ============================================================

This surface covers
how the premises is actually being used.

It should expose:

- occupancy posture
- space-utilization visibility
- underuse or overuse
- peak burden visibility
- mismatch between intended and actual use
- correction urgency

This surface bridges
premises layout
and premises operation.


# ============================================================
# 17. FEE / COST VISIBILITY SURFACE
# ============================================================

Where applicable,
the UI should expose
premises-related money posture.

This surface may include:

- usage-fee posture
- shared-cost visibility
- burden concentration visibility
- underperforming area visibility
- correction need visibility

This document does not define
money formulas.

It defines the UI responsibility
to expose premises-visible cost posture where needed.


# ============================================================
# 18. AUTOMATION AND POLICY SURFACE
# ============================================================

Where premises domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current premises-operation posture
- allocation / access / support automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 19. KPI AND REPORT SURFACE
# ============================================================

Company-premises KPI visibility is mandatory.

Typical KPI groups include:

- occupancy posture
- space-utilization posture
- tenant or branch stability posture
- shared-space burden
- support-staff sufficiency
- access stability
- issue posture
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 20. ISSUE AND ALERT SURFACE
# ============================================================

Company-premises operation requires
explicit issue visibility.

Typical issue families include:

- occupancy mismatch
- tenant instability
- shared-space contention
- support-staff shortage
- access instability
- underuse or overload
- premises-usage inconsistency visibility
- urgent intervention trigger

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 21. INTERVENTION STRUCTURE
# ============================================================

Company-premises intervention must be explicit.

Typical intervention families include:

- floor or section reallocation
- tenant reassignment
- shared-space correction
- access correction
- staffing reassignment
- support escalation
- temporary operating-posture correction where supported
- linked real-estate or company routing

Intervention must connect
to visible premises conditions.

Intervention must not feel like
editing hidden occupancy variables only.


# ============================================================
# 22. COMPANY PREMISES / REAL ESTATE / RETAIL RELATION
# ============================================================

Company-premises UI is related to
real estate,
retail,
and company systems,
but is not identical to them.

Company-premises truth covers:

- site structure
- tenant and organization occupancy
- shared-space continuity
- access and usage reality

Real-estate truth covers:

- asset and contract control
- portfolio and property management

Retail truth covers:

- store-local assortment and commerce operation

Company-premises UI may link to those surfaces,
but organization-occupancy truth must remain primary
when premises routing is selected.


# ============================================================
# 23. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
company-premises UI-edited truths such as:

- site grouping
- floor and section grouping
- tenant grouping
- shared-space grouping
- access grouping
- issue grouping
- intervention target entities where needed

090.interface should define
company-premises UI contracts such as:

- premises summary exposure
- site / floor / section surfaces
- tenant and organization allocation surfaces
- shared-space and common-facility surfaces
- access and movement surfaces
- occupancy and usage visibility surfaces
- issue and intervention exposure contracts


# ============================================================
# 24. FINAL RULE
# ============================================================

Company premises and tenant UI in Civilization must remain:

- company-occupancy-truth aligned
- site-visible
- tenant-visible
- shared-space-visible
- access-visible
- usage-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from real-estate-only or retail-only truth

Company-premises UI must treat company sites
as live organizational-space reality,
not only as tenancy bookkeeping.



# ============================================================
# FILE: 3820019_INFRASTRUCTURE_AND_UTILITY_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# INFRASTRUCTURE AND UTILITY UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: infrastructure-and-utility-ui
component: infrastructure-and-utility-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for infrastructure, utility,
coverage-control,
supply-network,
and foundational-service operation in Civilization.

This document covers the UI family
where coverage, uptime,
supply continuity,
maintenance burden,
dependency visibility,
and utility-service truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- infrastructure / utility / coverage-related architectures
- Infrastructure Placement Architecture
- Facility Type Master Architecture
- coverage, maintenance, supply,
  dependency, outage, and control-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
grid-control internals,
coverage formulas,
failure-propagation internals,
capacity formulas,
or lower infrastructure-state truth.


# ============================================================
# 2. POSITION
# ============================================================

Infrastructure and utility UI
is the canonical UI family
for foundational-service facilities in Civilization.

This family applies when the primary truth is:

- energy support continuity
- water or essential utility continuity
- regional supply coverage
- infrastructure uptime
- outage and degradation visibility
- dependency management
- maintenance burden on foundational systems
- service restoration and continuity control

Infrastructure UI is not identical to:

- logistics UI
- manufacturing UI
- government civic-service UI
- generic company premises UI
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- infrastructure UI structure
- utility-operation screen responsibility
- relation between setup, operation, auto, and intervention
- coverage / supply / dependency / outage surface composition
- relation between infrastructure truth and linked logistics / manufacturing / civic truth

This document must not redefine:

- exact control-loop internals
- grid or network formulas
- outage-calculation internals
- lower infrastructure-state truth
- lower capacity formulas
- lower maintenance algorithms
- failure-cascade internals

Those remain owned by
existing infrastructure architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. INFRASTRUCTURE SERVICE TRUTH
# ============================================================

Infrastructure and utility UI belongs to
the infrastructure_and_utility family.

This family may include:

- energy support facility
- utility-support facility
- infrastructure control facility
- supply distribution support facility
- regional utility node
- foundational-service support site
- system control facility
  where infrastructure-service truth dominates

Infrastructure UI must resolve from
canonical_ui_target
and dominant utility-service truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Infrastructure UI must allow
the operator to understand and manage
a live foundational-service institution
as part of the persistent Civilization world.

Infrastructure UI must expose:

- what regions or facilities are covered
- how supply continuity is behaving
- how uptime and outage conditions are changing
- how dependency and bottleneck conditions are behaving
- how maintenance burden is accumulating
- what restoration or intervention is required

Infrastructure UI must not collapse
into abstract uptime bookkeeping only.


# ============================================================
# 6. INFRASTRUCTURE UI LIFECYCLE
# ============================================================

The canonical infrastructure UI lifecycle is:

post-placement setup
-> infrastructure identity and coverage setup
-> supply and dependency setup
-> maintenance and control setup
-> ongoing infrastructure operation
-> auto infrastructure operation where supported
-> observation
-> issue detection
-> intervention
-> continued infrastructure operation

This lifecycle must support
persistent regional continuity
and world-linked service dependency.


# ============================================================
# 7. INFRASTRUCTURE UI MODES
# ============================================================

Infrastructure UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- authority_mode where appropriate
- manager_mode
- control_mode where appropriate
- maintenance_mode where appropriate
- outage_mode where appropriate
- restoration_mode where appropriate

Public-facing informational surfaces
may connect to infrastructure systems,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. INFRASTRUCTURE COMMON SURFACES
# ============================================================

Infrastructure UI must inherit
the common facility UI frame
and must expose infrastructure-specialized surfaces.

Canonical infrastructure surfaces include:

- infrastructure summary surface
- service identity and utility-role surface
- coverage and region surface
- supply and capacity surface
- dependency and linkage surface
- maintenance and condition surface
- outage and restoration surface
- staffing and control-operations surface
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and infrastructure event surface
- permission and role surface
- linked logistics / manufacturing / government / support-facility surface


# ============================================================
# 9. INFRASTRUCTURE SUMMARY SURFACE
# ============================================================

The infrastructure summary surface must provide
fast understanding of current utility state.

This should expose visibility into:

- facility or service type
- coverage posture
- supply posture
- dependency posture
- outage or degradation posture
- active issues
- active alerts
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for infrastructure-management entry.


# ============================================================
# 10. SERVICE IDENTITY AND UTILITY-ROLE SURFACE
# ============================================================

This surface defines
what kind of infrastructure service exists.

It should expose:

- service classification
- utility or control posture
- district or jurisdiction context
- operating organization context
- service-scope visibility
- linked infrastructure identity
- special control visibility where relevant

This surface must clarify
utility-service truth clearly.


# ============================================================
# 11. COVERAGE AND REGION SURFACE
# ============================================================

This surface covers
who or what is being served.

It should expose:

- coverage posture
- served-region visibility
- uncovered or weak areas
- overextended areas
- imbalance visibility
- reconfiguration pressure
- priority region visibility

This is a visibility and management surface.

It does not redefine
lower coverage model internals.


# ============================================================
# 12. SUPPLY AND CAPACITY SURFACE
# ============================================================

This surface covers
how foundational service is being delivered.

It should expose:

- supply posture
- capacity sufficiency
- overload or underuse
- bottleneck visibility
- unstable supply areas
- correction need
- surge burden where relevant

This surface is central
to infrastructure continuity.


# ============================================================
# 13. DEPENDENCY AND LINKAGE SURFACE
# ============================================================

Infrastructure systems are highly dependent.

This surface should expose:

- dependency posture
- linked-facility visibility
- critical dependency concentration
- cascading-risk visibility
- unstable links
- correction urgency

This surface bridges
local utility reality
and wider network awareness.


# ============================================================
# 14. MAINTENANCE AND CONDITION SURFACE
# ============================================================

This surface covers
continuity risk from condition burden.

It should expose:

- maintenance burden
- repair backlog
- degradation visibility
- urgent condition concerns
- risk of service interruption
- restoration need

This surface must remain explicit
and quickly readable.


# ============================================================
# 15. OUTAGE AND RESTORATION SURFACE
# ============================================================

This surface covers
degraded or interrupted service.

It should expose:

- outage posture
- restoration progress visibility
- affected-region visibility
- instability concentration
- emergency correction urgency
- recovery burden

This surface bridges
failure visibility
and intervention.


# ============================================================
# 16. STAFFING AND CONTROL-OPERATIONS SURFACE
# ============================================================

This surface covers
human support capacity
for infrastructure continuity.

It should expose:

- staffing sufficiency
- control burden
- maintenance burden
- unsupported operational areas
- shift imbalance where relevant
- manual reassignment need

This surface may connect to
larger staffing systems,
but must preserve
service-local operational visibility.


# ============================================================
# 17. AUTOMATION AND POLICY SURFACE
# ============================================================

Where infrastructure domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current infrastructure-operation posture
- coverage / supply / outage automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 18. KPI AND REPORT SURFACE
# ============================================================

Infrastructure KPI visibility is mandatory.

Typical KPI groups include:

- coverage posture
- supply sufficiency
- outage posture
- restoration posture
- maintenance burden
- dependency stability
- staffing sufficiency
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 19. ISSUE AND ALERT SURFACE
# ============================================================

Infrastructure operation requires
explicit issue visibility.

Typical issue families include:

- coverage gap
- supply instability
- outage concentration
- dependency concern
- maintenance overload
- staffing shortage
- restoration delay
- urgent intervention trigger

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 20. INTERVENTION STRUCTURE
# ============================================================

Infrastructure intervention must be explicit.

Typical intervention families include:

- coverage reprioritization
- supply correction
- maintenance escalation
- outage response
- restoration correction
- staffing reassignment
- temporary operating-posture correction where supported
- linked-facility dependency routing

Intervention must connect
to visible utility conditions.

Intervention must not feel like
editing hidden control variables only.


# ============================================================
# 21. INFRASTRUCTURE / LOGISTICS / MANUFACTURING RELATION
# ============================================================

Infrastructure UI is related to
logistics,
manufacturing,
and government systems,
but is not identical to them.

Infrastructure truth covers:

- foundational-service continuity
- coverage and dependency behavior
- outage and restoration reality

Logistics truth covers:

- movement and transfer continuity

Manufacturing truth covers:

- production-process continuity

Infrastructure UI may link to those surfaces,
but utility-service truth must remain primary
when infrastructure routing is selected.


# ============================================================
# 22. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
infrastructure UI-edited truths such as:

- coverage grouping
- capacity grouping
- dependency grouping
- outage grouping
- maintenance grouping
- issue grouping
- intervention target entities where needed

090.interface should define
infrastructure UI contracts such as:

- infrastructure summary exposure
- coverage and region surfaces
- supply and capacity surfaces
- dependency and linkage surfaces
- maintenance and condition surfaces
- outage and restoration surfaces
- issue and intervention exposure contracts


# ============================================================
# 23. FINAL RULE
# ============================================================

Infrastructure and utility UI in Civilization must remain:

- utility-service-truth aligned
- coverage-visible
- supply-visible
- dependency-visible
- outage-visible
- restoration-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from logistics-only or manufacturing-only truth

Infrastructure UI must treat foundational systems
as live continuity reality,
not only as uptime bookkeeping.



# ============================================================
# FILE: 3820020_CULTURE_AND_LEISURE_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# CULTURE AND LEISURE UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: culture-and-leisure-ui
component: culture-and-leisure-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for culture, tourism, recreation,
public attraction, memorial,
and leisure-oriented operation in Civilization.

This document covers the UI family
where visitor experience,
program continuity,
public appeal,
site atmosphere,
and attraction-service truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- culture / tourism / recreation-related architectures
- Facility Type Master Architecture
- visitor, program, staffing,
  attraction, and leisure-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
attraction formulas,
visitor-scoring formulas,
pricing formulas,
program-ranking formulas,
or lower leisure-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Culture and leisure UI
is the canonical UI family
for attraction-oriented facilities in Civilization.

This family applies when the primary truth is:

- cultural attraction operation
- tourism-oriented operation
- leisure and recreation continuity
- memorial or symbolic attraction function
- visitor-flow and public appeal
- site atmosphere and attraction upkeep
- program or activity continuity
- public enjoyment or cultural-presence truth

Culture and leisure UI is not identical to:

- exhibition and event UI
- media UI
- government civic-service UI
- generic company premises UI
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- culture and leisure UI structure
- attraction-operation screen responsibility
- relation between setup, operation, auto, and intervention
- visitor / program / attraction / atmosphere surface composition
- relation between leisure truth and linked exhibition / media / commerce truth

This document must not redefine:

- attraction-value internals
- tourism-scoring internals
- program-ranking internals
- exact pricing formulas
- lower visitor-record truth
- lower attraction-state truth
- lower site-rating internals

Those remain owned by
existing culture and leisure architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. CULTURE AND LEISURE SERVICE TRUTH
# ============================================================

Culture and leisure UI belongs to
the culture_tourism_entertainment_and_leisure family.

This family may include:

- cultural venue
- tourism facility
- memorial facility
- symbolic plaza
- public recreation site
- leisure attraction
- park-like attraction
- sports and public leisure facility
  where leisure-service truth dominates

Culture and leisure UI must resolve from
canonical_ui_target
and dominant attraction-service truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Culture and leisure UI must allow
the operator to understand and manage
a live attraction institution
as part of the persistent Civilization world.

Culture and leisure UI must expose:

- what attraction or leisure programs are active
- how visitor flow is behaving
- how atmosphere and site condition are holding
- how staffing and upkeep burden are behaving
- how public appeal is changing
- what instability or service issues are emerging
- what interventions are required

Culture and leisure UI must not collapse
into abstract visitor bookkeeping only.


# ============================================================
# 6. CULTURE AND LEISURE UI LIFECYCLE
# ============================================================

The canonical culture and leisure UI lifecycle is:

post-placement setup
-> attraction identity and scope setup
-> program and site setup
-> visitor and staffing setup
-> ongoing attraction operation
-> auto attraction operation where supported
-> observation
-> issue detection
-> intervention
-> continued attraction operation

This lifecycle must support
persistent site identity,
time-based public usage,
and world-linked attraction continuity.


# ============================================================
# 7. CULTURE AND LEISURE UI MODES
# ============================================================

Culture and leisure UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- visitor_flow_mode where appropriate
- program_mode where appropriate
- upkeep_mode where appropriate
- public_information_mode where appropriate

Visitor-facing enjoyment surfaces
may connect to attraction systems,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. CULTURE AND LEISURE COMMON SURFACES
# ============================================================

Culture and leisure UI must inherit
the common facility UI frame
and must expose attraction-specialized surfaces.

Canonical culture and leisure surfaces include:

- attraction summary surface
- site identity and attraction-role surface
- program and activity surface
- visitor and flow surface
- atmosphere and site-condition surface
- staffing and upkeep surface
- appeal and visibility surface
- pricing / admission visibility surface where applicable
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and attraction event surface
- permission and role surface
- linked exhibition / media / commerce / support-facility surface


# ============================================================
# 9. ATTRACTION SUMMARY SURFACE
# ============================================================

The attraction summary surface must provide
fast understanding of current attraction state.

This should expose visibility into:

- attraction type
- active program posture
- visitor posture
- site-condition posture
- staffing sufficiency posture
- active issues
- active alerts
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for attraction-management entry.


# ============================================================
# 10. SITE IDENTITY AND ATTRACTION-ROLE SURFACE
# ============================================================

This surface defines
what kind of attraction site exists.

It should expose:

- attraction classification
- cultural / tourism / leisure posture
- operating organization context
- district or jurisdiction context
- service-scope visibility
- linked attraction identity
- public-facing role visibility where relevant

This surface must clarify
attraction-service truth clearly.


# ============================================================
# 11. PROGRAM AND ACTIVITY SURFACE
# ============================================================

This surface covers
what visitors experience.

It should expose:

- program grouping
- activity visibility
- time-based program posture
- overloaded or underused areas
- unsupported programs
- priority posture
- reconfiguration pressure

This is a visibility and management surface.

It does not redefine
lower program model internals.


# ============================================================
# 12. VISITOR AND FLOW SURFACE
# ============================================================

This surface covers
how people use the site.

It should expose:

- visitor posture
- flow sufficiency
- overcrowding or underuse
- bottleneck visibility
- instability signals
- correction need
- linked seasonal or time-based burden where relevant

This surface is central
to attraction continuity.


# ============================================================
# 13. ATMOSPHERE AND SITE-CONDITION SURFACE
# ============================================================

This surface covers
the quality of the place itself.

It should expose:

- atmosphere posture
- cleanliness or visual condition visibility where supported
- degradation visibility
- attraction-quality signals
- comfort or appeal concern visibility
- urgent correction need

This surface must remain explicit
and quickly readable.


# ============================================================
# 14. STAFFING AND UPKEEP SURFACE
# ============================================================

This surface covers
human operational capacity.

It should expose:

- staffing sufficiency
- upkeep burden
- unsupported operational areas
- shift imbalance where relevant
- manual reassignment need
- maintenance-support burden where relevant

This surface may connect to
larger staffing systems,
but must preserve
site-local operational visibility.


# ============================================================
# 15. APPEAL AND VISIBILITY SURFACE
# ============================================================

This surface covers
how attractive the site currently is.

It should expose:

- public appeal posture
- visibility posture
- decline or growth signals
- underperforming attraction areas
- correction need visibility
- linked media or tourism exposure visibility where relevant

This surface bridges
site reality
and public attraction outcome.


# ============================================================
# 16. PRICING / ADMISSION VISIBILITY SURFACE
# ============================================================

Where applicable,
the UI should expose
attraction-related money posture.

This surface may include:

- admission posture
- pricing visibility
- underperforming-program visibility
- burden visibility
- correction need visibility

This document does not define
pricing formulas.

It defines the UI responsibility
to expose attraction-visible money posture where needed.


# ============================================================
# 17. AUTOMATION AND POLICY SURFACE
# ============================================================

Where culture and leisure domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current attraction-operation posture
- visitor / program / upkeep automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 18. KPI AND REPORT SURFACE
# ============================================================

Culture and leisure KPI visibility is mandatory.

Typical KPI groups include:

- visitor posture
- attraction continuity posture
- site-condition posture
- staffing sufficiency
- appeal posture
- visibility posture
- issue posture
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 19. ISSUE AND ALERT SURFACE
# ============================================================

Culture and leisure operation requires
explicit issue visibility.

Typical issue families include:

- visitor instability
- overcrowding or underuse
- site-condition degradation
- staffing shortage
- appeal decline
- program imbalance
- readiness concern
- urgent intervention trigger

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 20. INTERVENTION STRUCTURE
# ============================================================

Culture and leisure intervention must be explicit.

Typical intervention families include:

- program reprioritization
- visitor-flow correction
- staffing reassignment
- upkeep escalation
- appeal correction
- pricing or admission correction where supported
- temporary operating-posture correction where supported
- linked media or tourism routing

Intervention must connect
to visible attraction conditions.

Intervention must not feel like
editing hidden attraction variables only.


# ============================================================
# 21. CULTURE / EXHIBITION / MEDIA RELATION
# ============================================================

Culture and leisure UI is related to
exhibition,
media,
and commerce systems,
but is not identical to them.

Culture and leisure truth covers:

- attraction continuity
- leisure-site operation
- visitor experience and appeal

Exhibition truth covers:

- venue-cycle operation
- event layout and admission continuity

Media truth covers:

- publication and audience-distribution continuity

Culture and leisure UI may link to those surfaces,
but attraction-service truth must remain primary
when culture routing is selected.


# ============================================================
# 22. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
culture and leisure UI-edited truths such as:

- program grouping
- visitor grouping
- site-condition grouping
- staffing grouping
- appeal grouping
- issue grouping
- intervention target entities where needed

090.interface should define
culture and leisure UI contracts such as:

- attraction summary exposure
- program and activity surfaces
- visitor and flow surfaces
- atmosphere and site-condition surfaces
- staffing and upkeep surfaces
- appeal and visibility surfaces
- issue and intervention exposure contracts


# ============================================================
# 23. FINAL RULE
# ============================================================

Culture and leisure UI in Civilization must remain:

- attraction-service-truth aligned
- program-visible
- visitor-visible
- site-condition-visible
- appeal-visible
- staffing-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from exhibition-only or media-only truth

Culture and leisure UI must treat attraction sites
as live public-experience reality,
not only as visitor bookkeeping.



# ============================================================
# FILE: 3820021_COMMUNITY_AND_LIFE_SUPPORT_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# COMMUNITY AND LIFE SUPPORT UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: community-and-life-support-ui
component: community-and-life-support-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for community support,
life-support services,
family support,
childcare support,
employment support,
and local support-oriented operation in Civilization.

This document covers the UI family
where life continuity,
support access,
case handling,
service eligibility,
and community-stability truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- community / welfare / support-related architectures
- Facility Type Master Architecture
- support case, eligibility, staffing,
  service menu, and continuity-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
eligibility formulas,
support-law internals,
case-priority internals,
benefit formulas,
or lower support-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Community and life support UI
is the canonical UI family
for local support-oriented facilities in Civilization.

This family applies when the primary truth is:

- family support continuity
- childcare support
- employment support
- local life-support continuity
- community counseling or local guidance
- support access and case progression
- life-stability assistance
- community-linked welfare-support operation
  where non-medical support truth dominates

Community-support UI is not identical to:

- hospital UI
- government civic-service UI
- residence UI
- school UI
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- community-support UI structure
- support-operation screen responsibility
- relation between setup, operation, auto, and intervention
- support-menu / access / case / continuity surface composition
- relation between support truth and linked government / residence / school / medical truth

This document must not redefine:

- eligibility-rule internals
- benefit or support formulas
- lower case-priority internals
- lower support-record truth
- lower welfare-law internals
- lower rights-verification internals

Those remain owned by
existing community-support architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. COMMUNITY SUPPORT SERVICE TRUTH
# ============================================================

Community and life support UI belongs to
the community_and_life_support family.

This family may include:

- childcare support facility
- employment support facility
- family support facility
- community counseling support facility
- local life support center
- support-oriented civic assistance facility
  where life-support truth dominates

Community-support UI must resolve from
canonical_ui_target
and dominant support-service truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Community-support UI must allow
the operator to understand and manage
a live local support institution
as part of the persistent Civilization world.

Community-support UI must expose:

- what support services are active
- who is being supported
- how access and eligibility posture are behaving
- how case load and staffing burden are behaving
- how life-stability or local-support continuity is changing
- what unmet needs or support issues are emerging
- what interventions are required

Community-support UI must not collapse
into abstract support bookkeeping only.


# ============================================================
# 6. COMMUNITY SUPPORT UI LIFECYCLE
# ============================================================

The canonical community-support UI lifecycle is:

post-placement setup
-> institution and service-scope setup
-> support-menu and access setup
-> staffing and case-handling setup
-> ongoing support operation
-> auto support operation where supported
-> observation
-> issue detection
-> intervention
-> continued support operation

This lifecycle must support
persistent community continuity
and world-linked life-stability flow.


# ============================================================
# 7. COMMUNITY SUPPORT UI MODES
# ============================================================

Community-support UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- authority_mode where appropriate
- manager_mode
- case_mode where appropriate
- access_mode where appropriate
- childcare_mode where appropriate
- employment_support_mode where appropriate

Resident-facing support-access surfaces
may connect to support systems,
but are not the only subject
of this operation UI architecture.


# ============================================================
# 8. COMMUNITY SUPPORT COMMON SURFACES
# ============================================================

Community-support UI must inherit
the common facility UI frame
and must expose support-specialized surfaces.

Canonical community-support surfaces include:

- support summary surface
- institution identity and support-role surface
- support-menu and service-scope surface
- access and eligibility visibility surface
- case and support-load surface
- staffing and operations surface
- continuity and life-stability surface
- family / childcare / employment linkage surface where applicable
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and support event surface
- permission and role surface
- linked government / residence / school / medical / support-facility surface


# ============================================================
# 9. SUPPORT SUMMARY SURFACE
# ============================================================

The support summary surface must provide
fast understanding of current support state.

This should expose visibility into:

- institution type
- active support-service posture
- access posture
- staffing sufficiency posture
- case-load posture
- continuity posture
- active issues
- active alerts
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for support-management entry.


# ============================================================
# 10. INSTITUTION IDENTITY AND SUPPORT-ROLE SURFACE
# ============================================================

This surface defines
what kind of support institution exists.

It should expose:

- institution classification
- childcare / employment / family / life-support posture
- operating organization context
- district or jurisdiction context
- service-scope visibility
- linked support identity
- public-facing role visibility where relevant

This surface must clarify
support-service truth clearly.


# ============================================================
# 11. SUPPORT-MENU AND SERVICE-SCOPE SURFACE
# ============================================================

This surface covers
what support services are being provided.

It should expose:

- active support grouping
- service-scope posture
- overloaded or underused services
- unsupported areas
- priority visibility
- service-balance signals
- reconfiguration pressure

This is a visibility and management surface.

It does not redefine
lower service model internals.


# ============================================================
# 12. ACCESS AND ELIGIBILITY VISIBILITY SURFACE
# ============================================================

This surface covers
who can access support
and how access is behaving.

It should expose:

- access posture
- eligibility visibility
- blocked or delayed access visibility
- unstable access areas
- support-entry bottlenecks
- correction need
- unresolved access burden

This surface is central
to support continuity.

It does not redefine
lower rights or eligibility truth.


# ============================================================
# 13. CASE AND SUPPORT-LOAD SURFACE
# ============================================================

This surface covers
how support work is progressing.

It should expose:

- case-load posture
- backlog visibility
- support burden
- unstable case areas
- escalation need
- service-completion posture where relevant
- unmet-need visibility

This surface must remain explicit
and quickly readable.


# ============================================================
# 14. STAFFING AND OPERATIONS SURFACE
# ============================================================

This surface covers
human support capacity.

It should expose:

- staffing sufficiency
- role coverage
- support burden
- unsupported service areas
- shift imbalance where relevant
- manual reassignment need

This surface may connect to
larger staffing systems,
but must preserve
institution-local operational visibility.


# ============================================================
# 15. CONTINUITY AND LIFE-STABILITY SURFACE
# ============================================================

This surface covers
the effect of support on daily life continuity.

It should expose:

- life-stability posture
- continuity visibility
- unresolved support pressure
- improvement or decline signals
- correction urgency
- linked local dependency visibility

This surface bridges
service operation
and lived outcome visibility.


# ============================================================
# 16. FAMILY / CHILDCARE / EMPLOYMENT LINKAGE SURFACE
# ============================================================

Where applicable,
this surface covers
linked support domains.

It should expose:

- family-support posture
- childcare-support posture
- employment-support posture
- unstable linkage visibility
- handoff burden
- correction need

This surface may connect to
school,
residence,
government,
or employment systems,
but must preserve
support-local operational truth.


# ============================================================
# 17. AUTOMATION AND POLICY SURFACE
# ============================================================

Where community-support domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current support-operation posture
- access / case / continuity automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 18. KPI AND REPORT SURFACE
# ============================================================

Community-support KPI visibility is mandatory.

Typical KPI groups include:

- service continuity posture
- access posture
- staffing sufficiency
- case-load posture
- life-stability posture
- unmet-need posture
- support-balance posture
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 19. ISSUE AND ALERT SURFACE
# ============================================================

Community-support operation requires
explicit issue visibility.

Typical issue families include:

- access blockage
- staffing shortage
- case backlog
- unmet support need
- continuity concern
- unstable linkage with other support systems
- support imbalance
- urgent intervention trigger

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 20. INTERVENTION STRUCTURE
# ============================================================

Community-support intervention must be explicit.

Typical intervention families include:

- service reprioritization
- access correction
- staffing reassignment
- case escalation
- continuity-support correction
- childcare / family / employment linkage correction
- temporary operating-posture correction where supported
- linked government or residence routing

Intervention must connect
to visible support conditions.

Intervention must not feel like
editing hidden support variables only.


# ============================================================
# 21. COMMUNITY SUPPORT / GOVERNMENT / RESIDENCE / MEDICAL RELATION
# ============================================================

Community-support UI is related to
government,
residence,
school,
and medical systems,
but is not identical to them.

Community-support truth covers:

- local support continuity
- case and access handling
- life-stability assistance
- support-service outcome visibility

Government truth covers:

- public-service and authority process continuity

Residence truth covers:

- dwelling and daily living continuity

Medical truth covers:

- care delivery and health-sensitive operation

Community-support UI may link to those surfaces,
but support-service truth must remain primary
when community-support routing is selected.


# ============================================================
# 22. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
community-support UI-edited truths such as:

- service grouping
- access grouping
- case grouping
- staffing grouping
- continuity grouping
- issue grouping
- intervention target entities where needed

090.interface should define
community-support UI contracts such as:

- support summary exposure
- support-menu and service-scope surfaces
- access and eligibility visibility surfaces
- case and support-load surfaces
- staffing and operations surfaces
- continuity and life-stability surfaces
- linkage surfaces
- issue and intervention exposure contracts


# ============================================================
# 23. FINAL RULE
# ============================================================

Community and life support UI in Civilization must remain:

- support-service-truth aligned
- service-visible
- access-visible
- case-visible
- continuity-visible
- staffing-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from government-only or medical-only truth

Community-support UI must treat support institutions
as live life-continuity reality,
not only as support bookkeeping.



# ============================================================
# FILE: 3820022_LODGING_AND_STAY_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# LODGING AND STAY UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: lodging-and-stay-ui
component: lodging-and-stay-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for lodging, temporary stay,
guest accommodation,
training stay,
and managed short-term residence operation in Civilization.

This document covers the UI family
where temporary stay continuity,
room allocation,
booking or occupancy cycle,
guest support,
and turnover-sensitive service truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- Housing and Residence UI Architecture where linked
- company premises and residence-related architectures where linked
- Facility Type Master Architecture
- stay, room, guest, cleaning,
  staffing, booking, and turnover-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
booking formulas,
room-pricing formulas,
guest-eligibility rules,
turnover internals,
or lower stay-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Lodging and stay UI
is the canonical UI family
for temporary-stay-oriented facilities in Civilization.

This family applies when the primary truth is:

- temporary stay operation
- room allocation for guests or short-term occupants
- booking or assignment cycle continuity
- cleaning and turnover continuity
- guest support
- stay-capacity and utilization control
- managed short-term accommodation truth

Lodging UI is not identical to:

- residence living-truth UI
- real-estate asset UI
- company premises UI
- school dormitory UI where education truth dominates
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- lodging UI structure
- stay-operation screen responsibility
- relation between setup, operation, auto, and intervention
- room / booking / guest / turnover surface composition
- relation between lodging truth and linked residence / premises / support truth

This document must not redefine:

- room-pricing formulas
- booking internals
- guest-verification internals
- cleaning algorithms
- turnover formulas
- lower room-state truth
- lower stay-record truth

Those remain owned by
existing lodging-related architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. LODGING SERVICE TRUTH
# ============================================================

Lodging and stay UI belongs to
the lodging_and_stay family.

This family may include:

- hotel
- short-term stay facility
- guest accommodation
- training lodging
- managed temporary residence
- employee stay facility where stay truth dominates
- student stay facility where stay truth dominates

Lodging UI must resolve from
canonical_ui_target
and dominant stay-service truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Lodging UI must allow
the operator to understand and manage
a live stay-oriented facility
as part of the persistent Civilization world.

Lodging UI must expose:

- who is staying
- how rooms or stay units are allocated
- how booking or stay cycles are behaving
- how cleaning and turnover are holding
- how staffing and support burden are behaving
- what occupancy or guest-service issues are emerging
- what intervention is required

Lodging UI must not collapse
into abstract room bookkeeping only.


# ============================================================
# 6. LODGING UI LIFECYCLE
# ============================================================

The canonical lodging UI lifecycle is:

post-placement setup
-> facility and stay-role setup
-> room and allocation setup
-> booking or assignment setup
-> staffing and cleaning setup
-> ongoing stay operation
-> auto stay operation where supported
-> observation
-> issue detection
-> intervention
-> continued stay operation

This lifecycle must support
short-cycle turnover,
temporary occupancy continuity,
and world-linked guest movement.


# ============================================================
# 7. LODGING UI MODES
# ============================================================

Lodging UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- booking_mode where appropriate
- guest_support_mode where appropriate
- cleaning_mode where appropriate
- authority_mode where appropriate


# ============================================================
# 8. LODGING COMMON SURFACES
# ============================================================

Lodging UI must inherit
the common facility UI frame
and must expose lodging-specialized surfaces.

Canonical lodging surfaces include:

- lodging summary surface
- facility identity and stay-role surface
- room and stay-unit surface
- booking and assignment surface
- guest and support surface
- cleaning and turnover surface
- occupancy and utilization surface
- fee / stay-charge visibility surface where applicable
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and stay event surface
- permission and role surface
- linked residence / premises / support-facility surface


# ============================================================
# 9. LODGING SUMMARY SURFACE
# ============================================================

The lodging summary surface must provide
fast understanding of current stay state.

This should expose visibility into:

- facility type
- current stay posture
- occupancy posture
- turnover posture
- staffing sufficiency posture
- active issues
- active alerts
- current automation posture where supported
- recent intervention state


# ============================================================
# 10. FACILITY IDENTITY AND STAY-ROLE SURFACE
# ============================================================

This surface defines
what kind of stay facility exists.

It should expose:

- lodging classification
- stay-role posture
- operating organization context
- district or jurisdiction context
- service-scope visibility
- linked lodging identity
- public-facing role visibility where relevant


# ============================================================
# 11. ROOM AND STAY-UNIT SURFACE
# ============================================================

This surface covers
the stay-unit structure.

It should expose:

- room or unit grouping
- room-type visibility
- allocation state
- unavailable or unstable units
- underuse or overuse
- reassignment need


# ============================================================
# 12. BOOKING AND ASSIGNMENT SURFACE
# ============================================================

This surface covers
how temporary occupancy is assigned.

It should expose:

- booking posture
- assignment visibility
- blocked or delayed assignment
- turnover conflict visibility
- occupancy-cycle instability
- correction need


# ============================================================
# 13. GUEST AND SUPPORT SURFACE
# ============================================================

This surface covers
who is staying and what support is needed.

It should expose:

- guest grouping
- support burden
- special-support visibility where relevant
- assignment mismatch visibility
- unresolved support issues
- escalation need


# ============================================================
# 14. CLEANING AND TURNOVER SURFACE
# ============================================================

This surface covers
short-cycle operational continuity.

It should expose:

- cleaning posture
- turnover burden
- delayed turnover visibility
- room-readiness state
- unstable cleaning areas
- correction urgency


# ============================================================
# 15. OCCUPANCY AND UTILIZATION SURFACE
# ============================================================

This surface covers
how the stay facility is being used.

It should expose:

- occupancy posture
- utilization visibility
- underuse or overload
- mismatch between intended and actual use
- peak burden visibility
- correction need


# ============================================================
# 16. AUTOMATION AND POLICY SURFACE
# ============================================================

Where lodging domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current stay-operation posture
- booking / allocation / turnover automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals


# ============================================================
# 17. KPI AND REPORT SURFACE
# ============================================================

Lodging KPI visibility is mandatory.

Typical KPI groups include:

- occupancy posture
- turnover posture
- room readiness posture
- staffing sufficiency
- guest-support posture
- intervention frequency


# ============================================================
# 18. ISSUE AND ALERT SURFACE
# ============================================================

Lodging operation requires
explicit issue visibility.

Typical issue families include:

- booking conflict
- occupancy instability
- cleaning delay
- turnover backlog
- staffing shortage
- guest-support concern
- urgent intervention trigger


# ============================================================
# 19. INTERVENTION STRUCTURE
# ============================================================

Lodging intervention must be explicit.

Typical intervention families include:

- room reassignment
- booking correction
- turnover correction
- cleaning escalation
- staffing reassignment
- guest-support follow-up
- temporary operating-posture correction where supported

Intervention must connect
to visible stay conditions.


# ============================================================
# 20. LODGING / RESIDENCE / PREMISES RELATION
# ============================================================

Lodging UI is related to
residence,
company premises,
and support systems,
but is not identical to them.

Lodging truth covers:

- temporary stay continuity
- room turnover
- guest allocation
- short-cycle support

Residence truth covers:

- longer-lived daily living continuity

Company-premises truth covers:

- organizational occupancy and work-space allocation

Lodging UI may link to those surfaces,
but stay-service truth must remain primary
when lodging routing is selected.


# ============================================================
# 21. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
lodging UI-edited truths such as:

- room grouping
- booking grouping
- guest grouping
- turnover grouping
- occupancy grouping
- issue grouping
- intervention target entities where needed

090.interface should define
lodging UI contracts such as:

- lodging summary exposure
- room and stay-unit surfaces
- booking and assignment surfaces
- guest and support surfaces
- cleaning and turnover surfaces
- occupancy and utilization surfaces
- issue and intervention exposure contracts


# ============================================================
# 22. FINAL RULE
# ============================================================

Lodging and stay UI in Civilization must remain:

- stay-service-truth aligned
- room-visible
- booking-visible
- turnover-visible
- occupancy-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from residence-only or real-estate-only truth

Lodging UI must treat stay facilities
as live temporary-occupancy reality,
not only as room bookkeeping.



# ============================================================
# FILE: 3820023_RESEARCH_AND_TECHNOLOGY_UI_ARCHITECTURE.md
# ============================================================

# ============================================================
# RESEARCH AND TECHNOLOGY UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: research-and-technology-ui
component: research-and-technology-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for research, laboratory,
technology development,
systems research,
energy-support research,
and advanced technical operation in Civilization.

This document covers the UI family
where research-program continuity,
staff allocation,
equipment readiness,
output visibility,
and technical-service truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- research / technology / energy-support-related architectures
- Facility Type Master Architecture
- program, lab, equipment, staffing,
  budget, and output-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
research scoring formulas,
experiment internals,
technical output formulas,
budget formulas,
or lower research-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Research and technology UI
is the canonical UI family
for research-oriented facilities in Civilization.

This family applies when the primary truth is:

- research program operation
- laboratory or technical-site continuity
- researcher and technical-staff allocation
- equipment readiness
- program output visibility
- technical support continuity
- budget and resource posture
- research-linked service stability

Research UI is not identical to:

- manufacturing UI
- education UI
- infrastructure-only UI
- media UI
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- research UI structure
- research-operation screen responsibility
- relation between setup, operation, auto, and intervention
- program / staff / equipment / output surface composition
- relation between research truth and linked education / manufacturing / infrastructure truth

This document must not redefine:

- experiment internals
- research-output formulas
- technical-evaluation internals
- lower budget formulas
- lower research-record truth
- lower project-state internals

Those remain owned by
existing research architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. RESEARCH SERVICE TRUTH
# ============================================================

Research and technology UI belongs to
the research_technology_and_energy family.

This family may include:

- research institute
- technology support facility
- systems training center where research truth dominates
- energy support research facility
- advanced technical support complex
- laboratory-oriented site
  where research-service truth dominates

Research UI must resolve from
canonical_ui_target
and dominant research-service truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Research UI must allow
the operator to understand and manage
a live research institution
as part of the persistent Civilization world.

Research UI must expose:

- what research programs are active
- how staff and laboratories are allocated
- how equipment and technical resources are behaving
- how output and progress are changing
- how budget and support posture are holding
- what bottlenecks or instability are emerging
- what interventions are required

Research UI must not collapse
into abstract project bookkeeping only.


# ============================================================
# 6. RESEARCH UI LIFECYCLE
# ============================================================

The canonical research UI lifecycle is:

post-placement setup
-> institution and research-scope setup
-> program and staff setup
-> equipment and support setup
-> ongoing research operation
-> auto research operation where supported
-> observation
-> issue detection
-> intervention
-> continued research operation

This lifecycle must support
persistent program continuity,
world-linked technical development,
and long-cycle output visibility.


# ============================================================
# 7. RESEARCH UI MODES
# ============================================================

Research UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- program_mode where appropriate
- lab_mode where appropriate
- equipment_mode where appropriate
- authority_mode where appropriate


# ============================================================
# 8. RESEARCH COMMON SURFACES
# ============================================================

Research UI must inherit
the common facility UI frame
and must expose research-specialized surfaces.

Canonical research surfaces include:

- research summary surface
- institution identity and research-role surface
- program and focus surface
- staff and allocation surface
- laboratory and equipment surface
- output and progress surface
- budget and support visibility surface where applicable
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and research event surface
- permission and role surface
- linked education / manufacturing / infrastructure / support-facility surface


# ============================================================
# 9. RESEARCH SUMMARY SURFACE
# ============================================================

The research summary surface must provide
fast understanding of current research state.

This should expose visibility into:

- institution type
- active program posture
- staffing posture
- equipment posture
- output posture
- active issues
- active alerts
- current automation posture where supported
- recent intervention state


# ============================================================
# 10. INSTITUTION IDENTITY AND RESEARCH-ROLE SURFACE
# ============================================================

This surface defines
what kind of research institution exists.

It should expose:

- institution classification
- research or technical posture
- operating organization context
- district or jurisdiction context
- service-scope visibility
- linked research identity
- special public-facing role where relevant


# ============================================================
# 11. PROGRAM AND FOCUS SURFACE
# ============================================================

This surface covers
what research work is active.

It should expose:

- program grouping
- focus visibility
- overloaded or underused areas
- unsupported areas
- priority posture
- reconfiguration pressure


# ============================================================
# 12. STAFF AND ALLOCATION SURFACE
# ============================================================

This surface covers
human research capacity.

It should expose:

- staff grouping
- allocation posture
- coverage state
- overload flag
- specialization-need visibility
- reassignment need


# ============================================================
# 13. LABORATORY AND EQUIPMENT SURFACE
# ============================================================

This surface covers
technical readiness.

It should expose:

- lab grouping
- equipment posture
- readiness visibility
- degradation visibility
- bottleneck flag
- correction need


# ============================================================
# 14. OUTPUT AND PROGRESS SURFACE
# ============================================================

This surface covers
what the research effort is producing.

It should expose:

- output posture
- progress visibility
- unstable progress visibility
- blocked output flag
- correction urgency
- milestone posture where applicable


# ============================================================
# 15. BUDGET AND SUPPORT VISIBILITY SURFACE
# ============================================================

Where applicable,
the UI should expose
research-support posture.

It should expose:

- budget visibility
- support visibility
- burden concentration
- under-supported area visibility
- correction need


# ============================================================
# 16. AUTOMATION AND POLICY SURFACE
# ============================================================

Where research domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current research-operation posture
- program / staffing / equipment automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals


# ============================================================
# 17. KPI AND REPORT SURFACE
# ============================================================

Research KPI visibility is mandatory.

Typical KPI groups include:

- program continuity posture
- staffing sufficiency
- equipment readiness
- output posture
- support posture
- intervention frequency


# ============================================================
# 18. ISSUE AND ALERT SURFACE
# ============================================================

Research operation requires
explicit issue visibility.

Typical issue families include:

- staffing shortage
- equipment instability
- blocked progress
- under-supported program
- output degradation
- lab bottleneck
- urgent intervention trigger


# ============================================================
# 19. INTERVENTION STRUCTURE
# ============================================================

Research intervention must be explicit.

Typical intervention families include:

- reprioritize program
- reassign staff
- escalate equipment support
- correct technical bottleneck
- rebalance support posture
- temporary operating-posture correction where supported

Intervention must connect
to visible research conditions.


# ============================================================
# 20. RESEARCH / EDUCATION / MANUFACTURING RELATION
# ============================================================

Research UI is related to
education,
manufacturing,
and infrastructure systems,
but is not identical to them.

Research truth covers:

- research-program continuity
- technical output visibility
- laboratory readiness
- long-cycle technical development

Education truth covers:

- student and academic continuity

Manufacturing truth covers:

- production-process continuity
- transformation of inputs to outputs

Research UI may link to those surfaces,
but research-service truth must remain primary
when research routing is selected.


# ============================================================
# 21. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
research UI-edited truths such as:

- program grouping
- staff grouping
- equipment grouping
- output grouping
- support grouping
- issue grouping
- intervention target entities where needed

090.interface should define
research UI contracts such as:

- research summary exposure
- program and focus surfaces
- staff and allocation surfaces
- laboratory and equipment surfaces
- output and progress surfaces
- support visibility surfaces
- issue and intervention exposure contracts


# ============================================================
# 22. FINAL RULE
# ============================================================

Research and technology UI in Civilization must remain:

- research-service-truth aligned
- program-visible
- staffing-visible
- equipment-visible
- output-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from education-only or manufacturing-only truth

Research UI must treat research institutions
as live technical-development reality,
not only as project bookkeeping.




# ============================================================
# LAYER: 090.interface / 382.facility-ui
# ============================================================

# ============================================================
# FACILITY UI INTERFACE INTEGRATED
# 090.interface / 382.facility-ui
# ============================================================

status: reference-integrated
layer: interface
scope: facility-ui-interface-integrated
component: facility-ui-interface-integrated

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

This document is an integrated reference edition
of the facility UI interface documents
under 090.interface / 382.facility-ui.

This file is for reading, review, and implementation reference.

Authoritative editing targets remain
the original split interface documents.

Do not treat this integrated file
as the primary editing source.


# ============================================================
# FILE: 3820001_CIVILIZATION_FACILITY_UI_INTERFACE.md
# ============================================================

# ============================================================
# CIVILIZATION FACILITY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: facility-ui-interface
component: civilization-facility-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical interface contract
for facility UI systems inside Civilization.

This document defines:

- screen-level interface rules
- section-level interface rules
- UI input and output contract structure
- UI state model
- role and permission exposure model
- linked-facility exposure model
- common facility screen composition

This document must align with:

- CIVILIZATION_FACILITY_UI_ARCHITECTURE
- facility type master related documents
- canonical ui target related documents

This document is the top-level UI interface contract
for all facility operation UIs.


# ============================================================
# 2. NON-DUPLICATION RULE
# ============================================================

This document defines only
common UI interface structure.

This document must not redefine:

- business rules
- policy rules
- lower data truth
- calculation formulas
- domain-specific operational logic

Those belong to architecture,
model,
runtime,
and policy layers.


# ============================================================
# 3. CANONICAL SCREEN STACK
# ============================================================

All facility UIs must be derivable
from the following screen stack.

- facility_overview_screen
- facility_manage_screen
- facility_issue_screen
- facility_history_screen
- facility_permission_screen

Optional:

- facility_builder_handoff_screen
- facility_network_screen
- facility_intervention_screen
- facility_kpi_screen
- facility_public_view_screen


# ============================================================
# 4. COMMON TAB SET
# ============================================================

The canonical common tab set is:

- summary_tab
- operation_tab
- people_tab
- goods_or_service_tab
- capacity_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab

A child UI may hide tabs
that are not applicable.

A child UI may add domain tabs,
but may not remove
the concept of issue visibility,
history visibility,
or permission visibility.


# ============================================================
# 5. COMMON SCREEN CONTRACT
# ============================================================

Each facility screen contract
must define:

- screen_id
- screen_name
- route_key
- route_params
- access_context
- mode
- primary_entity
- secondary_entities
- visible_sections
- editable_sections
- actions
- data_dependencies
- empty_state
- loading_state
- error_state
- blocked_state


# ============================================================
# 6. ROUTE PARAMS
# ============================================================

Canonical route params:

- facility_id
- facility_type
- canonical_ui_target
- operator_context_id where applicable
- tenant_context_id where applicable
- district_id where applicable
- screen_mode
- selected_tab where applicable

Child interfaces may add
domain-specific params,
but must not remove facility_id
or canonical_ui_target.


# ============================================================
# 7. ACCESS CONTEXT
# ============================================================

Canonical access contexts:

- visitor
- public_user
- resident
- customer
- employee
- operator
- manager
- owner
- tenant
- authority
- emergency_authority
- maintenance

UI exposure must vary by access context.

Access context changes:

- visible sections
- editable sections
- callable actions

Access context does not change
canonical service truth.


# ============================================================
# 8. UI MODES
# ============================================================

Canonical UI modes:

- overview_mode
- setup_mode
- operate_mode
- auto_mode
- intervention_mode
- admin_mode
- public_mode

Each screen must declare
its mode explicitly.


# ============================================================
# 9. COMMON SECTION CONTRACT
# ============================================================

Each visible section must define:

- section_id
- section_name
- section_type
- display_priority
- visibility_rule
- editability_rule
- data_source_group
- empty_behavior
- action_bindings
- warning_bindings

Section types include:

- summary_card
- metric_strip
- table
- grouped_list
- form
- timeline
- issue_panel
- action_panel
- map_panel
- relationship_panel
- detail_panel


# ============================================================
# 10. COMMON FIELD CONTRACT
# ============================================================

Each field definition must declare:

- field_key
- label
- field_type
- required
- editable
- visibility_rule
- display_format
- validation_rule
- placeholder where applicable
- option_source where applicable
- warning_rule where applicable
- help_text where applicable

Field types may include:

- text
- multiline_text
- enum
- number
- decimal
- boolean
- date
- datetime
- badge
- money
- percentage
- reference
- grouped_reference
- status
- metric
- image
- link_action
- chip_list


# ============================================================
# 11. COMMON ACTION CONTRACT
# ============================================================

Each action must define:

- action_id
- label
- action_type
- visibility_rule
- enabled_rule
- confirmation_rule
- target_scope
- effect_summary

Action types include:

- open_screen
- open_modal
- submit_form
- change_mode
- escalate
- intervene
- assign
- reassign
- pause
- resume
- export
- view_history


# ============================================================
# 12. COMMON UI STATES
# ============================================================

Each screen must define
the following UI states:

- loading
- ready
- empty
- warning
- blocked
- partial_data
- error

Each section may define
its own empty/warning/blocked states
as a specialization.


# ============================================================
# 13. COMMON WARNING MODEL
# ============================================================

Warnings must be grouped by severity.

Canonical severity:

- info
- caution
- warning
- critical

Warnings must expose:

- warning_id
- severity
- title
- summary
- affected_scope
- recommended_action
- linked_action where applicable


# ============================================================
# 14. KPI PANEL CONTRACT
# ============================================================

All operation-family UIs must expose
a KPI panel contract.

Each KPI item must define:

- kpi_key
- label
- value
- unit
- trend_visibility
- warning_state
- comparison_scope where applicable

KPI formulas are not defined here.
Only UI exposure is defined here.


# ============================================================
# 15. ISSUE PANEL CONTRACT
# ============================================================

All operation-family UIs must expose
an issue panel contract.

Each issue item must define:

- issue_id
- issue_type
- severity
- title
- summary
- opened_at where applicable
- current_status
- recommended_action
- linked_detail_action


# ============================================================
# 16. HISTORY PANEL CONTRACT
# ============================================================

History visibility is mandatory.

Each history item must define:

- history_id
- event_type
- occurred_at
- actor_context
- summary
- linked_detail_action where applicable


# ============================================================
# 17. PERMISSION PANEL CONTRACT
# ============================================================

Permission visibility is mandatory.

Each permission block must define:

- role_key
- visible_scope
- editable_scope
- restricted_actions
- escalation_actions where applicable


# ============================================================
# 18. LINKED FACILITY PANEL CONTRACT
# ============================================================

Where applicable,
linked facilities must be exposed.

Each linked facility item must define:

- linked_facility_id
- linked_facility_type
- linked_facility_name
- relation_type
- linked_status
- open_linked_action


# ============================================================
# 19. FINAL RULE
# ============================================================

All child facility UI interface documents
must inherit this interface contract.

No child interface may remove:

- issue visibility
- history visibility
- permission visibility
- explicit state handling
- route identity by facility_id and canonical_ui_target



# ============================================================
# FILE: 3820002_RETAIL_OPERATION_UI_INTERFACE.md
# ============================================================

# ============================================================
# RETAIL OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: retail-operation-ui-interface
component: retail-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the retail operation UI interface contract
for Civilization retail facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- RETAIL_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for retail operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- retail_overview_screen
- retail_manage_screen
- retail_shelf_display_screen
- retail_ordering_screen
- retail_inventory_screen
- retail_pricing_screen
- retail_staffing_screen
- retail_automation_screen
- retail_kpi_screen
- retail_issue_screen


# ============================================================
# 3. RETAIL OVERVIEW SCREEN
# ============================================================

screen_id: retail_overview_screen
route_key: retail/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- retail_summary_card
- retail_status_strip
- retail_stock_warning_panel
- retail_staffing_warning_panel
- retail_kpi_strip
- retail_issue_panel
- retail_recent_history_panel

primary_actions:
- open_retail_manage
- open_retail_shelf_display
- open_retail_ordering
- open_retail_pricing
- open_retail_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. RETAIL MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- merchandise_tab
- shelf_tab
- ordering_tab
- inventory_tab
- pricing_tab
- staffing_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. RETAIL SUMMARY CARD
# ============================================================

section_id: retail_summary_card
section_type: summary_card

fields:
- facility_name
- retail_type
- open_status
- operator_name
- location_summary
- active_policy_profile
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. MERCHANDISE TAB
# ============================================================

section_id: retail_merchandise_section
section_type: grouped_list

fields:
- category_group
- active_item_count
- shortage_risk_flag
- sales_priority_flag
- unsupported_category_flag

actions:
- open_category_detail
- reprioritize_category


# ============================================================
# 7. SHELF TAB
# ============================================================

section_id: retail_shelf_section
section_type: table

fields:
- section_name
- assigned_category
- display_priority
- stock_health_state
- dead_space_flag
- cleanliness_flag

actions:
- open_shelf_editor
- reassign_section
- escalate_display_issue


# ============================================================
# 8. ORDERING TAB
# ============================================================

section_id: retail_ordering_section
section_type: table

fields:
- supplier_group
- reorder_posture
- lead_time_visibility
- shortage_risk_flag
- emergency_restock_flag

actions:
- open_ordering_editor
- trigger_emergency_restock
- reprioritize_replenishment


# ============================================================
# 9. INVENTORY TAB
# ============================================================

section_id: retail_inventory_section
section_type: table

fields:
- category_group
- stock_level
- freshness_state where applicable
- overstock_flag
- shortage_flag
- spoilage_risk_flag where applicable

actions:
- open_inventory_detail
- escalate_stock_issue


# ============================================================
# 10. PRICING TAB
# ============================================================

section_id: retail_pricing_section
section_type: table

fields:
- category_group
- pricing_posture
- discount_posture
- margin_pressure_flag
- emergency_correction_flag

actions:
- open_pricing_editor
- apply_temporary_price_correction


# ============================================================
# 11. STAFFING TAB
# ============================================================

section_id: retail_staffing_section
section_type: grouped_list

fields:
- role_group
- current_staff_count
- coverage_state
- rush_pressure_flag
- reassignment_need_flag

actions:
- open_staffing_editor
- reassign_staff
- escalate_staff_shortage


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: retail_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_confidence_state
- drift_warning_flag
- intervention_threshold_summary

actions:
- open_automation_detail
- pause_automation
- resume_automation


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: retail_kpi_section
section_type: metric_strip

kpi_items:
- sales_posture
- stock_turnover_posture
- shortage_frequency_posture
- staffing_sufficiency_posture
- cleanliness_posture
- category_balance_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: retail_issue_section
section_type: issue_panel

issue_types:
- stockout_pressure
- cleanliness_warning
- compliance_warning
- service_bottleneck
- supply_disruption
- staffing_shortage

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all actions except restricted authority-only actions

operator:
- all operation tabs visible
- permission tab read-only

staff:
- summary_tab
- inventory_tab
- issue_tab
- history_tab

customer_or_public:
- not part of this interface contract


# ============================================================
# 16. FINAL RULE
# ============================================================

Retail UI interface must remain
store-local,
issue-visible,
automation-visible,
and explicitly actionable.



# ============================================================
# FILE: 3820003_HOUSING_AND_RESIDENCE_UI_INTERFACE.md
# ============================================================

# ============================================================
# HOUSING AND RESIDENCE UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: housing-and-residence-ui-interface
component: housing-and-residence-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the housing and residence UI interface contract
for Civilization living-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- HOUSING_AND_RESIDENCE_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for residence UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- residence_overview_screen
- residence_manage_screen
- resident_household_screen
- residence_unit_structure_screen
- residence_occupancy_screen
- residence_livability_screen
- residence_maintenance_screen
- residence_neighborhood_screen
- residence_issue_screen


# ============================================================
# 3. RESIDENCE OVERVIEW SCREEN
# ============================================================

screen_id: residence_overview_screen
route_key: residence/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- residence_summary_card
- residence_status_strip
- residence_occupancy_warning_panel
- residence_livability_warning_panel
- residence_kpi_strip
- residence_issue_panel
- residence_recent_history_panel

primary_actions:
- open_residence_manage
- open_resident_household
- open_residence_maintenance
- open_residence_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. RESIDENCE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- resident_tab
- structure_tab
- occupancy_tab
- livability_tab
- maintenance_tab
- neighborhood_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. RESIDENCE SUMMARY CARD
# ============================================================

section_id: residence_summary_card
section_type: summary_card

fields:
- facility_name
- residence_type
- occupancy_state
- management_context
- district_summary
- livability_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. RESIDENT TAB
# ============================================================

section_id: resident_household_section
section_type: grouped_list

fields:
- resident_group
- household_group where applicable
- resident_count
- support_need_flag
- assignment_context_flag where applicable

actions:
- open_resident_detail
- reassign_resident where supported
- escalate_support_need


# ============================================================
# 7. STRUCTURE TAB
# ============================================================

section_id: residence_structure_section
section_type: table

fields:
- unit_or_room_name
- unit_type
- shared_or_private_state
- suitability_state
- furnishing_completeness_flag where supported
- maintenance_flag

actions:
- open_structure_detail
- reassign_unit where supported


# ============================================================
# 8. OCCUPANCY TAB
# ============================================================

section_id: residence_occupancy_section
section_type: table

fields:
- capacity_value
- current_occupancy_value
- vacancy_state
- crowding_flag
- turnover_signal
- reallocation_pressure_flag

actions:
- open_occupancy_detail
- intervene_occupancy
- escalate_overcrowding


# ============================================================
# 9. LIVABILITY TAB
# ============================================================

section_id: residence_livability_section
section_type: detail_panel

fields:
- comfort_state
- cleanliness_state where applicable
- privacy_state where applicable
- daily_life_support_access_state
- environmental_suitability_state
- quality_of_life_warning_flag

actions:
- open_livability_detail
- apply_livability_correction


# ============================================================
# 10. MAINTENANCE TAB
# ============================================================

section_id: residence_maintenance_section
section_type: table

fields:
- utility_availability_state
- maintenance_burden_state
- repair_backlog_flag
- deterioration_state
- habitability_risk_flag
- urgent_maintenance_flag

actions:
- open_maintenance_detail
- escalate_maintenance
- request_repair_action


# ============================================================
# 11. NEIGHBORHOOD TAB
# ============================================================

section_id: residence_neighborhood_section
section_type: relationship_panel

fields:
- district_context
- nearby_school_access_state
- nearby_hospital_access_state
- nearby_market_access_state
- transport_access_state
- community_support_access_state
- safety_context_state

actions:
- open_linked_facility
- view_local_dependency


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: residence_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: residence_kpi_section
section_type: metric_strip

kpi_items:
- occupancy_posture
- livability_posture
- maintenance_posture
- utility_stability_posture
- neighborhood_access_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: residence_issue_section
section_type: issue_panel

issue_types:
- overcrowding
- under_maintenance
- livability_degradation
- safety_concern
- utility_disruption
- resident_support_concern

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all actions except restricted authority-only actions

owner:
- all tabs visible
- some actions may be limited by managed context

resident:
- summary_tab
- resident_tab limited
- neighborhood_tab
- issue_tab limited visibility
- permission tab hidden

authority_or_support_operator:
- issue_tab
- neighborhood_tab
- resident_tab with role-based limits
- maintenance_tab where applicable


# ============================================================
# 16. FINAL RULE
# ============================================================

Residence UI interface must remain
living-oriented,
livability-visible,
occupancy-visible,
and explicitly separable
from pure real-estate asset logic.



# ============================================================
# FILE: 3820004_REAL_ESTATE_OPERATION_UI_INTERFACE.md
# ============================================================

# ============================================================
# REAL ESTATE OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: real-estate-operation-ui-interface
component: real-estate-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the real-estate operation UI interface contract
for Civilization property-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- REAL_ESTATE_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for real-estate operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- real_estate_overview_screen
- real_estate_manage_screen
- real_estate_portfolio_screen
- real_estate_tenancy_screen
- real_estate_occupancy_screen
- real_estate_maintenance_screen
- real_estate_rights_screen
- real_estate_redevelopment_screen
- real_estate_issue_screen


# ============================================================
# 3. REAL ESTATE OVERVIEW SCREEN
# ============================================================

screen_id: real_estate_overview_screen
route_key: real-estate/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- real_estate_summary_card
- real_estate_status_strip
- real_estate_vacancy_warning_panel
- real_estate_maintenance_warning_panel
- real_estate_kpi_strip
- real_estate_issue_panel
- real_estate_recent_history_panel

primary_actions:
- open_real_estate_manage
- open_real_estate_portfolio
- open_real_estate_tenancy
- open_real_estate_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. REAL ESTATE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- portfolio_tab
- tenancy_tab
- occupancy_tab
- maintenance_tab
- rights_tab
- redevelopment_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. REAL ESTATE SUMMARY CARD
# ============================================================

section_id: real_estate_summary_card
section_type: summary_card

fields:
- facility_name
- property_type
- ownership_context
- management_context
- district_summary
- occupancy_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. PORTFOLIO TAB
# ============================================================

section_id: real_estate_portfolio_section
section_type: table

fields:
- property_group_name
- asset_category
- occupancy_posture
- vacancy_risk_flag
- maintenance_burden_flag
- underperformance_flag

actions:
- open_property_detail
- compare_properties
- reprioritize_property_group


# ============================================================
# 7. TENANCY TAB
# ============================================================

section_id: real_estate_tenancy_section
section_type: table

fields:
- tenant_or_use_group
- occupied_unit_count
- vacant_unit_count
- turnover_signal
- mismatch_flag
- reassignment_need_flag

actions:
- open_tenancy_detail
- reassign_tenant where supported
- escalate_tenancy_issue


# ============================================================
# 8. OCCUPANCY TAB
# ============================================================

section_id: real_estate_occupancy_section
section_type: table

fields:
- target_occupancy_value
- current_occupancy_value
- vacancy_state
- unstable_turnover_flag
- underuse_flag
- reallocation_pressure_flag

actions:
- open_occupancy_detail
- intervene_occupancy
- escalate_vacancy_issue


# ============================================================
# 9. MAINTENANCE TAB
# ============================================================

section_id: real_estate_maintenance_section
section_type: table

fields:
- maintenance_burden_state
- repair_backlog_flag
- deterioration_state
- urgent_condition_flag
- service_disruption_flag
- refurbishment_pressure_flag

actions:
- open_maintenance_detail
- escalate_maintenance
- request_repair_action


# ============================================================
# 10. RIGHTS TAB
# ============================================================

section_id: real_estate_rights_section
section_type: detail_panel

fields:
- ownership_posture
- managed_contract_visibility
- transfer_visibility
- restriction_visibility
- approval_dependency_flag
- rights_warning_flag

actions:
- open_rights_detail
- open_related_approval
- escalate_rights_issue


# ============================================================
# 11. REDEVELOPMENT TAB
# ============================================================

section_id: real_estate_redevelopment_section
section_type: grouped_list

fields:
- redevelopment_candidate_group
- use_change_pressure_flag
- repositioning_need_flag
- rebuild_candidate_flag
- district_fit_state
- upgrade_priority_flag

actions:
- open_redevelopment_detail
- start_redevelopment_review
- open_builder_transition where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: real_estate_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: real_estate_kpi_section
section_type: metric_strip

kpi_items:
- occupancy_posture
- vacancy_pressure_posture
- maintenance_posture
- turnover_stability_posture
- property_condition_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: real_estate_issue_section
section_type: issue_panel

issue_types:
- critical_vacancy
- unmanaged_turnover
- maintenance_backlog
- condition_degradation
- rights_inconsistency_visibility
- property_use_mismatch

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

owner:
- all tabs visible
- certain rights or approval actions may be limited by governance context

tenant:
- limited visibility
- summary_tab
- occupancy_tab limited
- issue_tab limited
- permission_tab hidden

authority:
- rights_tab
- issue_tab
- history_tab
- selected maintenance or occupancy visibility by role


# ============================================================
# 16. FINAL RULE
# ============================================================

Real-estate UI interface must remain
asset-oriented,
occupancy-visible,
rights-visible,
maintenance-visible,
and explicitly separable
from residence living-truth UI.



# ============================================================
# FILE: 3820005_STREAMER_AGENCY_OPERATION_UI_INTERFACE.md
# ============================================================

# ============================================================
# STREAMER AGENCY OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: streamer-agency-operation-ui-interface
component: streamer-agency-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the streamer agency operation UI interface contract
for Civilization streamer-agency facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- STREAMER_AGENCY_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for streamer-agency operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- streamer_agency_overview_screen
- streamer_agency_manage_screen
- streamer_agency_roster_screen
- streamer_agency_scouting_screen
- streamer_agency_announcement_screen
- streamer_agency_goods_screen
- streamer_agency_review_visibility_screen
- streamer_agency_fulfillment_screen
- streamer_agency_revenue_screen
- streamer_agency_issue_screen


# ============================================================
# 3. STREAMER AGENCY OVERVIEW SCREEN
# ============================================================

screen_id: streamer_agency_overview_screen
route_key: streamer-agency/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- streamer_agency_summary_card
- streamer_agency_status_strip
- streamer_agency_roster_warning_panel
- streamer_agency_fulfillment_warning_panel
- streamer_agency_kpi_strip
- streamer_agency_issue_panel
- streamer_agency_recent_history_panel

primary_actions:
- open_streamer_agency_manage
- open_streamer_agency_roster
- open_streamer_agency_fulfillment
- open_streamer_agency_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. STREAMER AGENCY MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- roster_tab
- scouting_tab
- announcement_tab
- goods_tab
- review_tab
- fulfillment_tab
- mirrored_revenue_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. STREAMER AGENCY SUMMARY CARD
# ============================================================

section_id: streamer_agency_summary_card
section_type: summary_card

fields:
- facility_name
- agency_type
- company_context
- premises_context
- active_roster_count
- active_goods_posture
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. ROSTER TAB
# ============================================================

section_id: streamer_agency_roster_section
section_type: table

fields:
- roster_group
- active_member_count
- support_load_flag
- instability_flag
- management_burden_flag
- unresolved_support_flag

actions:
- open_roster_detail
- reassign_support
- escalate_roster_issue


# ============================================================
# 7. SCOUTING TAB
# ============================================================

section_id: streamer_agency_scouting_section
section_type: grouped_list

fields:
- candidate_group
- scouting_posture
- intake_pressure_flag
- pending_decision_flag
- support_burden_flag
- backlog_flag

actions:
- open_candidate_detail
- reprioritize_candidate
- escalate_scouting_issue


# ============================================================
# 8. ANNOUNCEMENT TAB
# ============================================================

section_id: streamer_agency_announcement_section
section_type: table

fields:
- campaign_group
- announcement_posture
- schedule_visibility
- blocked_flag
- coordination_burden_flag
- correction_need_flag

actions:
- open_announcement_detail
- reprioritize_announcement
- escalate_announcement_issue


# ============================================================
# 9. GOODS TAB
# ============================================================

section_id: streamer_agency_goods_section
section_type: table

fields:
- goods_group
- sales_posture
- active_goods_count
- demand_signal
- coordination_flag
- blocked_flag

actions:
- open_goods_detail
- reprioritize_goods
- open_review_visibility


# ============================================================
# 10. REVIEW TAB
# ============================================================

section_id: streamer_agency_review_section
section_type: issue_panel

fields:
- pending_review_count
- review_blocked_count
- correction_needed_count
- ready_state_count
- review_delay_flag
- routing_need_flag

actions:
- open_review_detail
- open_follow_up_route
- escalate_review_issue


# ============================================================
# 11. FULFILLMENT TAB
# ============================================================

section_id: streamer_agency_fulfillment_section
section_type: table

fields:
- fulfillment_posture
- pending_shipment_count
- backlog_flag
- delay_flag
- logistics_dependency_flag
- intervention_need_flag

actions:
- open_fulfillment_detail
- escalate_fulfillment
- open_linked_logistics


# ============================================================
# 12. MIRRORED REVENUE TAB
# ============================================================

section_id: streamer_agency_revenue_section
section_type: metric_strip

fields:
- mirrored_revenue_posture
- period_group
- trend_state
- anomaly_flag
- delayed_mirror_flag
- interpretation_note

actions:
- open_revenue_detail
- investigate_revenue_anomaly


# ============================================================
# 13. AUTOMATION TAB
# ============================================================

section_id: streamer_agency_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 14. KPI TAB
# ============================================================

section_id: streamer_agency_kpi_section
section_type: metric_strip

kpi_items:
- roster_stability_posture
- scouting_pressure_posture
- support_burden_posture
- goods_handling_posture
- fulfillment_backlog_posture
- mirrored_revenue_posture


# ============================================================
# 15. ISSUE TAB
# ============================================================

section_id: streamer_agency_issue_section
section_type: issue_panel

issue_types:
- roster_management_overload
- scouting_backlog
- support_failure_or_delay
- announcement_blockage
- goods_review_blockage
- fulfillment_delay
- mirrored_revenue_anomaly

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 16. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

owner:
- all tabs visible
- selected permission or escalation actions may be limited

scout_operator:
- scouting_tab
- roster_tab limited
- issue_tab
- history_tab

fulfillment_operator:
- fulfillment_tab
- goods_tab limited
- issue_tab
- linked_tab limited

finance_observer:
- mirrored_revenue_tab
- summary_tab
- issue_tab limited


# ============================================================
# 17. FINAL RULE
# ============================================================

Streamer-agency UI interface must remain
boundary-clear with StreamingOS,
roster-visible,
goods-visible,
fulfillment-visible,
and mirrored-revenue-visible.



# ============================================================
# FILE: 3820006_SCHOOL_OPERATION_UI_INTERFACE.md
# ============================================================

# ============================================================
# SCHOOL OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: school-operation-ui-interface
component: school-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the school operation UI interface contract
for Civilization education-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- SCHOOL_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for school operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- school_overview_screen
- school_manage_screen
- school_enrollment_screen
- school_program_screen
- school_staffing_screen
- school_capacity_screen
- school_student_life_screen
- school_safety_and_welfare_screen
- school_issue_screen


# ============================================================
# 3. SCHOOL OVERVIEW SCREEN
# ============================================================

screen_id: school_overview_screen
route_key: school/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- school_summary_card
- school_status_strip
- school_capacity_warning_panel
- school_staffing_warning_panel
- school_kpi_strip
- school_issue_panel
- school_recent_history_panel

primary_actions:
- open_school_manage
- open_school_enrollment
- open_school_student_life
- open_school_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. SCHOOL MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- enrollment_tab
- program_tab
- staffing_tab
- capacity_tab
- student_life_tab
- safety_and_welfare_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. SCHOOL SUMMARY CARD
# ============================================================

section_id: school_summary_card
section_type: summary_card

fields:
- facility_name
- school_type
- institution_context
- district_summary
- enrollment_state
- staffing_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. ENROLLMENT TAB
# ============================================================

section_id: school_enrollment_section
section_type: table

fields:
- intake_group
- current_student_count
- capacity_state
- progression_stage_group where applicable
- support_need_flag
- overload_flag

actions:
- open_enrollment_detail
- adjust_intake where supported
- escalate_enrollment_issue


# ============================================================
# 7. PROGRAM TAB
# ============================================================

section_id: school_program_section
section_type: grouped_list

fields:
- program_group
- course_count
- specialization_posture
- unsupported_area_flag
- overload_flag
- academic_focus_state

actions:
- open_program_detail
- reprioritize_program
- escalate_program_issue


# ============================================================
# 8. STAFFING TAB
# ============================================================

section_id: school_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- overload_flag
- support_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 9. CAPACITY TAB
# ============================================================

section_id: school_capacity_section
section_type: table

fields:
- campus_or_facility_group
- capacity_value
- utilization_state
- overcrowding_flag
- underuse_flag
- special_facility_pressure_flag

actions:
- open_capacity_detail
- reallocate_capacity
- escalate_capacity_issue


# ============================================================
# 10. STUDENT LIFE TAB
# ============================================================

section_id: school_student_life_section
section_type: relationship_panel

fields:
- dormitory_linkage_state where applicable
- student_support_burden_flag
- life_continuity_state
- linked_residence_support_flag
- non_academic_issue_flag
- escalation_need_flag

actions:
- open_student_life_detail
- open_linked_support
- escalate_student_life_issue


# ============================================================
# 11. SAFETY AND WELFARE TAB
# ============================================================

section_id: school_safety_and_welfare_section
section_type: issue_panel

fields:
- safety_state
- discipline_state
- welfare_support_state
- incident_flag
- support_overload_flag
- escalation_need_flag

actions:
- open_safety_detail
- escalate_safety_issue
- trigger_support_follow_up


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: school_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: school_kpi_section
section_type: metric_strip

kpi_items:
- enrollment_posture
- capacity_sufficiency_posture
- staffing_sufficiency_posture
- program_balance_posture
- student_life_support_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: school_issue_section
section_type: issue_panel

issue_types:
- overcapacity_or_undercapacity
- teacher_shortage
- student_life_support_overload
- discipline_issue
- safety_concern
- dormitory_linked_issue
- academic_operation_instability

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

teacher_or_staff:
- summary_tab
- program_tab limited
- staffing_tab limited
- issue_tab
- history_tab limited

student_support_operator:
- student_life_tab
- safety_and_welfare_tab
- issue_tab
- linked_tab limited

authority:
- summary_tab
- safety_and_welfare_tab
- issue_tab
- history_tab
- permission_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

School UI interface must remain
education-oriented,
capacity-visible,
student-life-visible,
issue-visible,
and explicitly separable
from pure residence or training UI.



# ============================================================
# FILE: 3820007_HOSPITAL_OPERATION_UI_INTERFACE.md
# ============================================================

# ============================================================
# HOSPITAL OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: hospital-operation-ui-interface
component: hospital-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the hospital operation UI interface contract
for Civilization medical-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- HOSPITAL_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for hospital operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- hospital_overview_screen
- hospital_manage_screen
- hospital_patient_flow_screen
- hospital_capacity_screen
- hospital_staffing_screen
- hospital_supply_screen
- hospital_emergency_screen
- hospital_sanitation_and_safety_screen
- hospital_issue_screen


# ============================================================
# 3. HOSPITAL OVERVIEW SCREEN
# ============================================================

screen_id: hospital_overview_screen
route_key: hospital/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- hospital_summary_card
- hospital_status_strip
- hospital_capacity_warning_panel
- hospital_supply_warning_panel
- hospital_kpi_strip
- hospital_issue_panel
- hospital_recent_history_panel

primary_actions:
- open_hospital_manage
- open_hospital_patient_flow
- open_hospital_emergency
- open_hospital_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. HOSPITAL MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- patient_flow_tab
- capacity_tab
- staffing_tab
- supply_tab
- emergency_tab
- sanitation_and_safety_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. HOSPITAL SUMMARY CARD
# ============================================================

section_id: hospital_summary_card
section_type: summary_card

fields:
- facility_name
- medical_facility_type
- institution_context
- district_summary
- care_load_state
- staffing_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. PATIENT FLOW TAB
# ============================================================

section_id: hospital_patient_flow_section
section_type: table

fields:
- intake_group
- patient_flow_posture
- backlog_flag
- overload_flag
- bottleneck_flag
- support_need_flag

actions:
- open_patient_flow_detail
- reprioritize_flow where supported
- escalate_patient_flow_issue


# ============================================================
# 7. CAPACITY TAB
# ============================================================

section_id: hospital_capacity_section
section_type: table

fields:
- department_or_ward_group
- capacity_value
- utilization_state
- overload_flag
- underuse_flag
- mismatch_flag

actions:
- open_capacity_detail
- reallocate_capacity
- escalate_capacity_issue


# ============================================================
# 8. STAFFING TAB
# ============================================================

section_id: hospital_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- overload_flag
- emergency_staffing_stress_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 9. SUPPLY TAB
# ============================================================

section_id: hospital_supply_section
section_type: table

fields:
- supply_group
- sufficiency_state
- shortage_flag
- critical_resource_flag
- disruption_risk_flag
- replenishment_need_flag

actions:
- open_supply_detail
- escalate_supply_issue
- trigger_emergency_supply_action


# ============================================================
# 10. EMERGENCY TAB
# ============================================================

section_id: hospital_emergency_section
section_type: detail_panel

fields:
- emergency_readiness_state
- surge_pressure_flag
- emergency_capacity_flag
- emergency_staffing_state
- critical_supply_state
- escalation_need_flag

actions:
- open_emergency_detail
- escalate_emergency_state
- trigger_emergency_response where supported


# ============================================================
# 11. SANITATION AND SAFETY TAB
# ============================================================

section_id: hospital_sanitation_and_safety_section
section_type: issue_panel

fields:
- sanitation_state
- hygiene_state
- contamination_concern_flag where supported
- safety_incident_flag
- corrective_burden_flag
- escalation_need_flag

actions:
- open_sanitation_detail
- escalate_sanitation_issue
- trigger_safety_follow_up


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: hospital_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: hospital_kpi_section
section_type: metric_strip

kpi_items:
- care_load_posture
- capacity_sufficiency_posture
- staffing_sufficiency_posture
- emergency_readiness_posture
- supply_sufficiency_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: hospital_issue_section
section_type: issue_panel

issue_types:
- overload
- staff_shortage
- critical_supply_shortage
- emergency_readiness_concern
- sanitation_or_safety_concern
- intake_bottleneck
- care_capacity_mismatch

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

medical_staff:
- summary_tab
- patient_flow_tab limited
- staffing_tab limited
- supply_tab limited
- issue_tab
- history_tab limited

emergency_operator:
- emergency_tab
- issue_tab
- summary_tab
- linked_tab limited

authority:
- summary_tab
- sanitation_and_safety_tab
- issue_tab
- history_tab
- permission_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

Hospital UI interface must remain
medical-care-oriented,
capacity-visible,
supply-visible,
emergency-visible,
issue-visible,
and explicitly separable
from pure welfare or civic UI.



# ============================================================
# FILE: 3820008_AGRICULTURE_AND_LIVESTOCK_OPERATION_UI_INTERFACE.md
# ============================================================

# ============================================================
# AGRICULTURE AND LIVESTOCK OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: agriculture-and-livestock-operation-ui-interface
component: agriculture-and-livestock-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the agriculture and livestock operation UI interface contract
for Civilization production-ground facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- AGRICULTURE_AND_LIVESTOCK_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for agriculture and livestock operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- agriculture_overview_screen
- agriculture_manage_screen
- agriculture_mix_screen
- agriculture_zone_allocation_screen
- agriculture_staffing_screen
- agriculture_supply_screen
- agriculture_output_screen
- agriculture_health_and_quality_screen
- agriculture_issue_screen


# ============================================================
# 3. AGRICULTURE OVERVIEW SCREEN
# ============================================================

screen_id: agriculture_overview_screen
route_key: agriculture/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- agriculture_summary_card
- agriculture_status_strip
- agriculture_supply_warning_panel
- agriculture_health_warning_panel
- agriculture_kpi_strip
- agriculture_issue_panel
- agriculture_recent_history_panel

primary_actions:
- open_agriculture_manage
- open_agriculture_mix
- open_agriculture_output
- open_agriculture_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. AGRICULTURE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- mix_tab
- zone_allocation_tab
- staffing_tab
- supply_tab
- output_tab
- health_and_quality_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. AGRICULTURE SUMMARY CARD
# ============================================================

section_id: agriculture_summary_card
section_type: summary_card

fields:
- facility_name
- production_type
- operation_context
- district_summary
- output_state
- supply_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. MIX TAB
# ============================================================

section_id: agriculture_mix_section
section_type: grouped_list

fields:
- crop_or_livestock_group
- active_unit_count
- diversification_state
- unsupported_area_flag
- overload_flag
- priority_state

actions:
- open_mix_detail
- reprioritize_mix
- escalate_mix_issue


# ============================================================
# 7. ZONE ALLOCATION TAB
# ============================================================

section_id: agriculture_zone_allocation_section
section_type: table

fields:
- field_or_zone_name
- zone_type
- assigned_use
- utilization_state
- overcrowding_flag
- reallocation_pressure_flag

actions:
- open_zone_detail
- reassign_zone
- escalate_zone_issue


# ============================================================
# 8. STAFFING TAB
# ============================================================

section_id: agriculture_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- workload_flag
- specialized_labor_need_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 9. SUPPLY TAB
# ============================================================

section_id: agriculture_supply_section
section_type: table

fields:
- supply_group
- sufficiency_state
- shortage_flag
- replenishment_need_flag
- dependency_visibility
- disruption_risk_flag

actions:
- open_supply_detail
- escalate_supply_issue
- trigger_supply_action where supported


# ============================================================
# 10. OUTPUT TAB
# ============================================================

section_id: agriculture_output_section
section_type: table

fields:
- output_group
- expected_output_state
- harvest_timing_visibility where applicable
- shipment_posture
- self_consumption_posture where applicable
- spoilage_risk_flag

actions:
- open_output_detail
- reprioritize_output
- escalate_output_issue


# ============================================================
# 11. HEALTH AND QUALITY TAB
# ============================================================

section_id: agriculture_health_and_quality_section
section_type: issue_panel

fields:
- crop_health_state
- livestock_health_state
- product_quality_state
- disease_concern_flag
- contamination_concern_flag where supported
- intervention_urgency_flag

actions:
- open_health_detail
- escalate_health_issue
- trigger_response_action where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: agriculture_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: agriculture_kpi_section
section_type: metric_strip

kpi_items:
- production_continuity_posture
- labor_sufficiency_posture
- supply_sufficiency_posture
- health_posture
- output_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: agriculture_issue_section
section_type: issue_panel

issue_types:
- disease_concern
- labor_shortage
- supply_shortage
- output_disruption
- spoilage_pressure
- environmental_suitability_concern
- shipment_coordination_concern

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

worker_or_operator:
- summary_tab
- zone_allocation_tab limited
- supply_tab limited
- issue_tab
- history_tab limited

inspection_or_quality_operator:
- health_and_quality_tab
- issue_tab
- summary_tab
- linked_tab limited

authority:
- summary_tab
- issue_tab
- history_tab
- permission_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

Agriculture UI interface must remain
production-ground-oriented,
supply-visible,
output-visible,
health-visible,
issue-visible,
and explicitly separable
from retail or logistics UI.



# ============================================================
# FILE: 3820009_FOOD_SERVICE_OPERATION_UI_INTERFACE.md
# ============================================================

# ============================================================
# FOOD SERVICE OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: food-service-operation-ui-interface
component: food-service-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the food-service operation UI interface contract
for Civilization dining-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- FOOD_SERVICE_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for food-service operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- food_service_overview_screen
- food_service_manage_screen
- food_service_menu_screen
- food_service_ingredient_screen
- food_service_kitchen_flow_screen
- food_service_seating_and_throughput_screen
- food_service_staffing_screen
- food_service_hygiene_and_safety_screen
- food_service_issue_screen


# ============================================================
# 3. FOOD SERVICE OVERVIEW SCREEN
# ============================================================

screen_id: food_service_overview_screen
route_key: food-service/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- food_service_summary_card
- food_service_status_strip
- food_service_stock_warning_panel
- food_service_hygiene_warning_panel
- food_service_kpi_strip
- food_service_issue_panel
- food_service_recent_history_panel

primary_actions:
- open_food_service_manage
- open_food_service_menu
- open_food_service_kitchen_flow
- open_food_service_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. FOOD SERVICE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- menu_tab
- ingredient_tab
- kitchen_flow_tab
- seating_and_throughput_tab
- staffing_tab
- hygiene_and_safety_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. FOOD SERVICE SUMMARY CARD
# ============================================================

section_id: food_service_summary_card
section_type: summary_card

fields:
- facility_name
- dining_type
- operation_context
- district_summary
- menu_state
- staffing_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. MENU TAB
# ============================================================

section_id: food_service_menu_section
section_type: grouped_list

fields:
- menu_group
- active_item_count
- time_period_posture where applicable
- demand_signal
- unsupported_item_flag
- priority_state

actions:
- open_menu_detail
- reprioritize_menu
- escalate_menu_issue


# ============================================================
# 7. INGREDIENT TAB
# ============================================================

section_id: food_service_ingredient_section
section_type: table

fields:
- ingredient_group
- sufficiency_state
- shortage_flag
- freshness_state where supported
- spoilage_risk_flag
- replenishment_need_flag

actions:
- open_ingredient_detail
- escalate_stock_issue
- trigger_supply_action where supported


# ============================================================
# 8. KITCHEN FLOW TAB
# ============================================================

section_id: food_service_kitchen_flow_section
section_type: table

fields:
- kitchen_flow_group
- workload_state
- bottleneck_flag
- prep_burden_flag
- delay_signal
- reassignment_need_flag

actions:
- open_kitchen_flow_detail
- reassign_flow_support
- escalate_kitchen_issue


# ============================================================
# 9. SEATING AND THROUGHPUT TAB
# ============================================================

section_id: food_service_seating_and_throughput_section
section_type: table

fields:
- service_area_group
- seating_state where applicable
- queue_state
- throughput_state
- overload_flag
- underuse_flag

actions:
- open_seating_detail
- correct_service_flow
- escalate_throughput_issue


# ============================================================
# 10. STAFFING TAB
# ============================================================

section_id: food_service_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- rush_pressure_flag
- unsupported_area_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 11. HYGIENE AND SAFETY TAB
# ============================================================

section_id: food_service_hygiene_and_safety_section
section_type: issue_panel

fields:
- hygiene_state
- sanitation_state
- contamination_concern_flag where supported
- inspection_concern_flag
- corrective_burden_flag
- escalation_need_flag

actions:
- open_hygiene_detail
- escalate_hygiene_issue
- trigger_safety_follow_up


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: food_service_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: food_service_kpi_section
section_type: metric_strip

kpi_items:
- service_continuity_posture
- ingredient_sufficiency_posture
- staffing_sufficiency_posture
- throughput_posture
- hygiene_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: food_service_issue_section
section_type: issue_panel

issue_types:
- ingredient_shortage
- staffing_shortage
- kitchen_bottleneck
- throughput_overload
- hygiene_concern
- spoilage_concern
- service_instability

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

kitchen_operator:
- menu_tab limited
- ingredient_tab
- kitchen_flow_tab
- issue_tab
- history_tab limited

floor_service_operator:
- seating_and_throughput_tab
- staffing_tab limited
- issue_tab
- summary_tab

inspection_operator:
- hygiene_and_safety_tab
- issue_tab
- summary_tab
- linked_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

Food-service UI interface must remain
dining-operation-oriented,
menu-visible,
stock-visible,
throughput-visible,
hygiene-visible,
issue-visible,
and explicitly separable
from retail or agriculture UI.



# ============================================================
# FILE: 3820010_LOGISTICS_AND_TRANSPORT_OPERATION_UI_INTERFACE.md
# ============================================================

# ============================================================
# LOGISTICS AND TRANSPORT OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: logistics-and-transport-operation-ui-interface
component: logistics-and-transport-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the logistics and transport operation UI interface contract
for Civilization movement-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- LOGISTICS_AND_TRANSPORT_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for logistics and transport operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- logistics_overview_screen
- logistics_manage_screen
- logistics_route_and_service_screen
- logistics_storage_and_transfer_screen
- logistics_capacity_screen
- logistics_staffing_screen
- logistics_reliability_and_delay_screen
- logistics_incident_and_disruption_screen
- logistics_issue_screen


# ============================================================
# 3. LOGISTICS OVERVIEW SCREEN
# ============================================================

screen_id: logistics_overview_screen
route_key: logistics/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- logistics_summary_card
- logistics_status_strip
- logistics_delay_warning_panel
- logistics_capacity_warning_panel
- logistics_kpi_strip
- logistics_issue_panel
- logistics_recent_history_panel

primary_actions:
- open_logistics_manage
- open_logistics_route_and_service
- open_logistics_incident_and_disruption
- open_logistics_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. LOGISTICS MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- route_and_service_tab
- storage_and_transfer_tab
- capacity_tab
- staffing_tab
- reliability_and_delay_tab
- incident_and_disruption_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. LOGISTICS SUMMARY CARD
# ============================================================

section_id: logistics_summary_card
section_type: summary_card

fields:
- facility_name
- node_type
- service_role
- district_summary
- route_state
- capacity_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. ROUTE AND SERVICE TAB
# ============================================================

section_id: logistics_route_and_service_section
section_type: table

fields:
- route_or_service_group
- service_priority_state
- overload_flag
- underuse_flag
- instability_flag
- reconfiguration_pressure_flag

actions:
- open_route_detail
- reprioritize_route
- escalate_route_issue


# ============================================================
# 7. STORAGE AND TRANSFER TAB
# ============================================================

section_id: logistics_storage_and_transfer_section
section_type: table

fields:
- storage_or_transfer_group
- load_state
- backlog_flag
- dwell_pressure_flag
- handoff_stability_state
- bottleneck_flag

actions:
- open_storage_detail
- correct_transfer_allocation
- escalate_transfer_issue


# ============================================================
# 8. CAPACITY TAB
# ============================================================

section_id: logistics_capacity_section
section_type: table

fields:
- capacity_group
- capacity_value
- utilization_state
- equipment_sufficiency_state
- readiness_flag
- reassignment_need_flag

actions:
- open_capacity_detail
- reassign_capacity
- escalate_capacity_issue


# ============================================================
# 9. STAFFING TAB
# ============================================================

section_id: logistics_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- dispatch_burden_flag
- handling_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 10. RELIABILITY AND DELAY TAB
# ============================================================

section_id: logistics_reliability_and_delay_section
section_type: issue_panel

fields:
- delay_state
- reliability_state
- bottleneck_concentration_flag
- disruption_spread_flag
- unstable_service_flag
- corrective_urgency_flag

actions:
- open_reliability_detail
- escalate_delay_issue
- trigger_correction_action where supported


# ============================================================
# 11. INCIDENT AND DISRUPTION TAB
# ============================================================

section_id: logistics_incident_and_disruption_section
section_type: issue_panel

fields:
- incident_group
- severity_state
- affected_service_count
- spread_risk_flag
- emergency_routing_need_flag
- manual_override_need_flag

actions:
- open_incident_detail
- escalate_incident
- trigger_disruption_response where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: logistics_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: logistics_kpi_section
section_type: metric_strip

kpi_items:
- service_continuity_posture
- capacity_sufficiency_posture
- storage_transfer_posture
- route_reliability_posture
- disruption_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: logistics_issue_section
section_type: issue_panel

issue_types:
- route_instability
- delay_concentration
- storage_backlog
- transfer_bottleneck
- staffing_shortage
- handling_shortage
- disruption_cascade_concern

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

dispatch_operator:
- route_and_service_tab
- reliability_and_delay_tab
- incident_and_disruption_tab
- issue_tab
- history_tab limited

transfer_operator:
- storage_and_transfer_tab
- capacity_tab limited
- issue_tab
- summary_tab

authority:
- summary_tab
- incident_and_disruption_tab
- issue_tab
- history_tab
- permission_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

Logistics UI interface must remain
movement-oriented,
route-visible,
capacity-visible,
delay-visible,
disruption-visible,
issue-visible,
and explicitly separable
from manufacturing or infrastructure UI.



# ============================================================
# FILE: 3820011_MANUFACTURING_OPERATION_UI_INTERFACE.md
# ============================================================

# ============================================================
# MANUFACTURING OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: manufacturing-operation-ui-interface
component: manufacturing-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the manufacturing operation UI interface contract
for Civilization production-process facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- MANUFACTURING_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for manufacturing operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- manufacturing_overview_screen
- manufacturing_manage_screen
- manufacturing_line_and_process_screen
- manufacturing_input_material_screen
- manufacturing_machine_and_equipment_screen
- manufacturing_staffing_screen
- manufacturing_quality_and_defect_screen
- manufacturing_maintenance_and_downtime_screen
- manufacturing_issue_screen


# ============================================================
# 3. MANUFACTURING OVERVIEW SCREEN
# ============================================================

screen_id: manufacturing_overview_screen
route_key: manufacturing/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- manufacturing_summary_card
- manufacturing_status_strip
- manufacturing_input_warning_panel
- manufacturing_quality_warning_panel
- manufacturing_kpi_strip
- manufacturing_issue_panel
- manufacturing_recent_history_panel

primary_actions:
- open_manufacturing_manage
- open_manufacturing_line_and_process
- open_manufacturing_maintenance_and_downtime
- open_manufacturing_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. MANUFACTURING MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- line_and_process_tab
- input_material_tab
- machine_and_equipment_tab
- staffing_tab
- quality_and_defect_tab
- maintenance_and_downtime_tab
- output_and_linked_flow_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. MANUFACTURING SUMMARY CARD
# ============================================================

section_id: manufacturing_summary_card
section_type: summary_card

fields:
- facility_name
- production_type
- operation_context
- district_summary
- line_state
- input_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. LINE AND PROCESS TAB
# ============================================================

section_id: manufacturing_line_and_process_section
section_type: table

fields:
- line_or_process_group
- priority_state
- overload_flag
- underuse_flag
- instability_flag
- reconfiguration_pressure_flag

actions:
- open_line_detail
- reprioritize_line
- escalate_line_issue


# ============================================================
# 7. INPUT MATERIAL TAB
# ============================================================

section_id: manufacturing_input_material_section
section_type: table

fields:
- input_group
- sufficiency_state
- shortage_flag
- replenishment_need_flag
- dependency_visibility
- interruption_risk_flag

actions:
- open_input_detail
- escalate_input_issue
- trigger_input_action where supported


# ============================================================
# 8. MACHINE AND EQUIPMENT TAB
# ============================================================

section_id: manufacturing_machine_and_equipment_section
section_type: table

fields:
- machine_group
- readiness_state
- degradation_flag
- operational_strain_flag
- breakdown_risk_flag
- reassignment_need_flag

actions:
- open_machine_detail
- reassign_machine_support
- escalate_machine_issue


# ============================================================
# 9. STAFFING TAB
# ============================================================

section_id: manufacturing_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- overload_flag
- skill_mismatch_flag where applicable
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 10. QUALITY AND DEFECT TAB
# ============================================================

section_id: manufacturing_quality_and_defect_section
section_type: issue_panel

fields:
- quality_state
- defect_risk_flag
- unstable_output_flag
- mismatch_signal_flag
- corrective_urgency_flag
- rework_burden_flag where supported

actions:
- open_quality_detail
- escalate_quality_issue
- trigger_quality_correction where supported


# ============================================================
# 11. MAINTENANCE AND DOWNTIME TAB
# ============================================================

section_id: manufacturing_maintenance_and_downtime_section
section_type: table

fields:
- maintenance_burden_state
- downtime_state
- repair_backlog_flag
- urgent_maintenance_flag
- line_interruption_flag
- escalation_need_flag

actions:
- open_maintenance_detail
- escalate_maintenance
- request_repair_action


# ============================================================
# 12. OUTPUT AND LINKED FLOW TAB
# ============================================================

section_id: manufacturing_output_and_linked_flow_section
section_type: table

fields:
- output_group
- completion_state
- backlog_flag
- shipment_readiness_state
- storage_pressure_flag
- instability_flag

actions:
- open_output_detail
- open_linked_logistics
- escalate_output_issue


# ============================================================
# 13. AUTOMATION TAB
# ============================================================

section_id: manufacturing_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 14. KPI TAB
# ============================================================

section_id: manufacturing_kpi_section
section_type: metric_strip

kpi_items:
- production_continuity_posture
- line_utilization_posture
- input_sufficiency_posture
- machine_continuity_posture
- quality_posture
- intervention_frequency_posture


# ============================================================
# 15. ISSUE TAB
# ============================================================

section_id: manufacturing_issue_section
section_type: issue_panel

issue_types:
- input_shortage
- line_instability
- machine_degradation
- breakdown_concern
- staffing_shortage
- quality_degradation
- downtime_concentration
- shipment_linkage_concern

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 16. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

line_operator:
- line_and_process_tab
- machine_and_equipment_tab limited
- issue_tab
- history_tab limited

maintenance_operator:
- machine_and_equipment_tab
- maintenance_and_downtime_tab
- issue_tab
- summary_tab

quality_operator:
- quality_and_defect_tab
- issue_tab
- output_and_linked_flow_tab limited
- history_tab limited


# ============================================================
# 17. FINAL RULE
# ============================================================

Manufacturing UI interface must remain
process-oriented,
line-visible,
input-visible,
machine-visible,
quality-visible,
issue-visible,
and explicitly separable
from logistics or infrastructure UI.



# ============================================================
# FILE: 3820012_GOVERNMENT_AND_CIVIC_SERVICE_UI_INTERFACE.md
# ============================================================

# ============================================================
# GOVERNMENT AND CIVIC SERVICE UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: government-and-civic-service-ui-interface
component: government-and-civic-service-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the government and civic service UI interface contract
for Civilization public-service-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- GOVERNMENT_AND_CIVIC_SERVICE_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for government and civic service UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- government_overview_screen
- government_manage_screen
- government_service_scope_screen
- government_counter_and_queue_screen
- government_case_and_process_screen
- government_document_and_notice_screen
- government_staffing_screen
- government_public_information_screen
- government_issue_screen


# ============================================================
# 3. GOVERNMENT OVERVIEW SCREEN
# ============================================================

screen_id: government_overview_screen
route_key: government/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- government_summary_card
- government_status_strip
- government_queue_warning_panel
- government_process_warning_panel
- government_kpi_strip
- government_issue_panel
- government_recent_history_panel

primary_actions:
- open_government_manage
- open_government_service_scope
- open_government_case_and_process
- open_government_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. GOVERNMENT MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- service_scope_tab
- counter_and_queue_tab
- case_and_process_tab
- document_and_notice_tab
- staffing_tab
- public_information_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. GOVERNMENT SUMMARY CARD
# ============================================================

section_id: government_summary_card
section_type: summary_card

fields:
- facility_name
- institution_type
- authority_context
- district_summary
- service_state
- process_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. SERVICE SCOPE TAB
# ============================================================

section_id: government_service_scope_section
section_type: grouped_list

fields:
- service_group
- active_service_count
- service_priority_state
- unsupported_area_flag
- overload_flag
- reconfiguration_pressure_flag

actions:
- open_service_detail
- reprioritize_service
- escalate_service_issue


# ============================================================
# 7. COUNTER AND QUEUE TAB
# ============================================================

section_id: government_counter_and_queue_section
section_type: table

fields:
- counter_group
- queue_state
- waiting_load_flag
- throughput_state
- bottleneck_flag
- support_need_flag

actions:
- open_queue_detail
- reallocate_counter_support
- escalate_queue_issue


# ============================================================
# 8. CASE AND PROCESS TAB
# ============================================================

section_id: government_case_and_process_section
section_type: table

fields:
- process_group
- backlog_state
- blocked_case_flag
- delayed_case_flag
- escalation_need_flag
- completion_state

actions:
- open_process_detail
- escalate_process
- reprioritize_case_handling


# ============================================================
# 9. DOCUMENT AND NOTICE TAB
# ============================================================

section_id: government_document_and_notice_section
section_type: table

fields:
- document_or_notice_group
- publication_state
- freshness_state
- outdated_flag
- correction_need_flag
- visibility_scope

actions:
- open_document_detail
- publish_or_update_notice where supported
- escalate_notice_issue


# ============================================================
# 10. STAFFING TAB
# ============================================================

section_id: government_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- queue_burden_flag
- process_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 11. PUBLIC INFORMATION TAB
# ============================================================

section_id: government_public_information_section
section_type: detail_panel

fields:
- public_information_state
- exposed_notice_count
- outdated_public_info_flag
- access_channel_state
- clarification_need_flag
- communication_burden_flag

actions:
- open_public_information_detail
- update_public_information where supported
- escalate_public_information_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: government_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: government_kpi_section
section_type: metric_strip

kpi_items:
- service_continuity_posture
- queue_posture
- process_completion_posture
- backlog_posture
- public_information_quality_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: government_issue_section
section_type: issue_panel

issue_types:
- service_backlog
- queue_overload
- staffing_shortage
- blocked_process
- outdated_or_missing_notice
- authority_handling_inconsistency_visibility
- service_coverage_concern

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

counter_operator:
- counter_and_queue_tab
- case_and_process_tab limited
- issue_tab
- history_tab limited

document_operator:
- document_and_notice_tab
- public_information_tab
- issue_tab
- summary_tab

authority:
- all tabs visible
- permission-sensitive actions visible by role

public_user:
- public_information_tab limited
- summary_tab limited
- issue tab hidden


# ============================================================
# 16. FINAL RULE
# ============================================================

Government UI interface must remain
public-service-oriented,
queue-visible,
process-visible,
notice-visible,
issue-visible,
and explicitly separable
from security or company-office UI.



# ============================================================
# FILE: 3820013_FINANCE_AND_SECURITIES_UI_INTERFACE.md
# ============================================================

# ============================================================
# FINANCE AND SECURITIES UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: finance-and-securities-ui-interface
component: finance-and-securities-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the finance and securities UI interface contract
for Civilization finance-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- FINANCE_AND_SECURITIES_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for finance and securities UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- finance_overview_screen
- finance_manage_screen
- finance_service_and_product_screen
- finance_account_and_channel_screen
- finance_review_screen
- finance_market_and_information_screen
- finance_staffing_screen
- finance_risk_and_exception_screen
- finance_issue_screen


# ============================================================
# 3. FINANCE OVERVIEW SCREEN
# ============================================================

screen_id: finance_overview_screen
route_key: finance/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- finance_summary_card
- finance_status_strip
- finance_review_warning_panel
- finance_risk_warning_panel
- finance_kpi_strip
- finance_issue_panel
- finance_recent_history_panel

primary_actions:
- open_finance_manage
- open_finance_service_and_product
- open_finance_review
- open_finance_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. FINANCE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- service_and_product_tab
- account_and_channel_tab
- review_tab
- market_and_information_tab
- staffing_tab
- risk_and_exception_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. FINANCE SUMMARY CARD
# ============================================================

section_id: finance_summary_card
section_type: summary_card

fields:
- facility_name
- institution_type
- trust_context
- district_summary
- service_state
- review_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. SERVICE AND PRODUCT TAB
# ============================================================

section_id: finance_service_and_product_section
section_type: grouped_list

fields:
- service_or_product_group
- active_item_count
- service_priority_state
- unsupported_area_flag
- overload_flag
- reconfiguration_pressure_flag

actions:
- open_service_detail
- reprioritize_service
- escalate_service_issue


# ============================================================
# 7. ACCOUNT AND CHANNEL TAB
# ============================================================

section_id: finance_account_and_channel_section
section_type: table

fields:
- account_or_channel_group
- access_state
- bottleneck_flag
- unstable_service_flag
- correction_need_flag
- burden_state

actions:
- open_channel_detail
- correct_channel_support
- escalate_channel_issue


# ============================================================
# 8. REVIEW TAB
# ============================================================

section_id: finance_review_section
section_type: table

fields:
- review_group
- backlog_state
- blocked_item_flag
- delayed_item_flag
- escalation_need_flag
- completion_state

actions:
- open_review_detail
- escalate_review
- reprioritize_review


# ============================================================
# 9. MARKET AND INFORMATION TAB
# ============================================================

section_id: finance_market_and_information_section
section_type: detail_panel

fields:
- market_board_state where applicable
- information_freshness_state
- delayed_data_flag
- public_or_internal_board_state
- correction_need_flag
- visibility_scope

actions:
- open_market_detail
- refresh_information where supported
- escalate_information_issue


# ============================================================
# 10. STAFFING TAB
# ============================================================

section_id: finance_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- counter_burden_flag
- review_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 11. RISK AND EXCEPTION TAB
# ============================================================

section_id: finance_risk_and_exception_section
section_type: issue_panel

fields:
- risk_state
- exception_visibility
- unstable_service_flag
- manual_oversight_need_flag
- escalation_urgency_flag
- trust_impact_flag

actions:
- open_risk_detail
- escalate_risk_issue
- trigger_exception_follow_up where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: finance_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: finance_kpi_section
section_type: metric_strip

kpi_items:
- service_continuity_posture
- review_posture
- channel_stability_posture
- risk_posture
- information_exposure_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: finance_issue_section
section_type: issue_panel

issue_types:
- review_backlog
- service_bottleneck
- staffing_shortage
- unstable_information_board_state
- risk_escalation
- abnormal_exception_visibility
- trust_impact_concern

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

counter_operator:
- account_and_channel_tab
- service_and_product_tab limited
- issue_tab
- history_tab limited

review_operator:
- review_tab
- risk_and_exception_tab limited
- issue_tab
- summary_tab

authority_or_risk_observer:
- risk_and_exception_tab
- issue_tab
- history_tab
- permission_tab limited

customer_access_user:
- account_and_channel_tab limited
- summary_tab limited
- issue tab hidden


# ============================================================
# 16. FINAL RULE
# ============================================================

Finance UI interface must remain
finance-service-oriented,
product-visible,
review-visible,
risk-visible,
information-visible,
issue-visible,
and explicitly separable
from government or real-estate UI.



# ============================================================
# FILE: 3820014_SECURITY_AND_JUDICIARY_UI_INTERFACE.md
# ============================================================

# ============================================================
# SECURITY AND JUDICIARY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: security-and-judiciary-ui-interface
component: security-and-judiciary-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the security and judiciary UI interface contract
for Civilization enforcement- and justice-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- SECURITY_AND_JUDICIARY_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for security and judiciary UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- security_overview_screen
- security_manage_screen
- security_incident_and_intake_screen
- security_case_and_process_screen
- security_custody_and_capacity_screen
- security_staffing_screen
- security_readiness_and_escalation_screen
- security_stability_screen
- security_issue_screen


# ============================================================
# 3. SECURITY OVERVIEW SCREEN
# ============================================================

screen_id: security_overview_screen
route_key: security/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- security_summary_card
- security_status_strip
- security_case_warning_panel
- security_capacity_warning_panel
- security_kpi_strip
- security_issue_panel
- security_recent_history_panel

primary_actions:
- open_security_manage
- open_security_incident_and_intake
- open_security_case_and_process
- open_security_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. SECURITY MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- incident_and_intake_tab
- case_and_process_tab
- custody_and_capacity_tab
- staffing_tab
- readiness_and_escalation_tab
- stability_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. SECURITY SUMMARY CARD
# ============================================================

section_id: security_summary_card
section_type: summary_card

fields:
- facility_name
- institution_type
- authority_context
- district_summary
- incident_state
- case_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. INCIDENT AND INTAKE TAB
# ============================================================

section_id: security_incident_and_intake_section
section_type: table

fields:
- incident_group
- intake_load_state
- severity_state
- response_burden_flag
- backlog_flag
- escalation_need_flag

actions:
- open_incident_detail
- reprioritize_response
- escalate_incident_issue


# ============================================================
# 7. CASE AND PROCESS TAB
# ============================================================

section_id: security_case_and_process_section
section_type: table

fields:
- case_group
- process_backlog_state
- blocked_case_flag
- delayed_case_flag
- progression_state
- escalation_need_flag

actions:
- open_case_detail
- escalate_case
- reprioritize_case_handling


# ============================================================
# 8. CUSTODY AND CAPACITY TAB
# ============================================================

section_id: security_custody_and_capacity_section
section_type: table

fields:
- custody_group
- capacity_value
- utilization_state
- overcapacity_flag
- transfer_need_flag
- stability_pressure_flag

actions:
- open_custody_detail
- reallocate_capacity
- escalate_capacity_issue


# ============================================================
# 9. STAFFING TAB
# ============================================================

section_id: security_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- response_burden_flag
- process_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 10. READINESS AND ESCALATION TAB
# ============================================================

section_id: security_readiness_and_escalation_section
section_type: detail_panel

fields:
- readiness_state
- escalation_state
- emergency_response_visibility
- instability_flag
- rapid_correction_need_flag
- dependency_visibility

actions:
- open_readiness_detail
- escalate_readiness_issue
- trigger_response_action where supported


# ============================================================
# 11. STABILITY TAB
# ============================================================

section_id: security_stability_section
section_type: issue_panel

fields:
- safety_state
- internal_stability_state
- custody_stability_state where applicable
- risk_concentration_flag
- support_burden_flag
- urgent_correction_flag

actions:
- open_stability_detail
- escalate_stability_issue
- trigger_follow_up where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: security_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: security_kpi_section
section_type: metric_strip

kpi_items:
- response_continuity_posture
- intake_posture
- case_progression_posture
- custody_capacity_posture
- escalation_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: security_issue_section
section_type: issue_panel

issue_types:
- incident_overload
- case_backlog
- staffing_shortage
- custody_capacity_concern
- escalation_delay
- stability_concern
- linked_authority_inconsistency_visibility

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

response_operator:
- incident_and_intake_tab
- readiness_and_escalation_tab limited
- issue_tab
- history_tab limited

case_operator:
- case_and_process_tab
- issue_tab
- summary_tab
- history_tab limited

authority:
- all tabs visible
- permission-sensitive actions visible by role

public_user:
- not part of this interface contract


# ============================================================
# 16. FINAL RULE
# ============================================================

Security and judiciary UI interface must remain
authority-oriented,
incident-visible,
case-visible,
capacity-visible,
readiness-visible,
issue-visible,
and explicitly separable
from government or military UI.



# ============================================================
# FILE: 3820015_MILITARY_BASE_OPERATION_UI_INTERFACE.md
# ============================================================

# ============================================================
# MILITARY BASE OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: military-base-operation-ui-interface
component: military-base-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the military base operation UI interface contract
for Civilization defense-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- MILITARY_BASE_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for military base operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- military_overview_screen
- military_manage_screen
- military_force_organization_screen
- military_readiness_and_alert_screen
- military_equipment_screen
- military_supply_and_support_screen
- military_training_screen
- military_deployment_support_screen
- military_issue_screen


# ============================================================
# 3. MILITARY OVERVIEW SCREEN
# ============================================================

screen_id: military_overview_screen
route_key: military/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- military_summary_card
- military_status_strip
- military_readiness_warning_panel
- military_supply_warning_panel
- military_kpi_strip
- military_issue_panel
- military_recent_history_panel

primary_actions:
- open_military_manage
- open_military_force_organization
- open_military_readiness_and_alert
- open_military_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. MILITARY MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- force_organization_tab
- readiness_and_alert_tab
- equipment_tab
- supply_and_support_tab
- training_tab
- deployment_support_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. MILITARY SUMMARY CARD
# ============================================================

section_id: military_summary_card
section_type: summary_card

fields:
- facility_name
- base_type
- defense_role
- district_or_strategic_summary
- readiness_state
- supply_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. FORCE ORGANIZATION TAB
# ============================================================

section_id: military_force_organization_section
section_type: table

fields:
- force_group
- role_group
- balance_state
- unsupported_area_flag
- concentration_flag
- reallocation_pressure_flag

actions:
- open_force_detail
- reassign_force where supported
- escalate_force_issue


# ============================================================
# 7. READINESS AND ALERT TAB
# ============================================================

section_id: military_readiness_and_alert_section
section_type: detail_panel

fields:
- readiness_state
- alert_state
- degraded_readiness_flag
- instability_flag
- surge_burden_flag
- corrective_need_flag

actions:
- open_readiness_detail
- escalate_readiness_issue
- correct_alert_posture where supported


# ============================================================
# 8. EQUIPMENT TAB
# ============================================================

section_id: military_equipment_section
section_type: table

fields:
- equipment_group
- readiness_state
- degradation_flag
- maintenance_burden_flag
- capability_gap_flag
- downtime_need_flag

actions:
- open_equipment_detail
- escalate_equipment_issue
- request_maintenance_action


# ============================================================
# 9. SUPPLY AND SUPPORT TAB
# ============================================================

section_id: military_supply_and_support_section
section_type: table

fields:
- supply_group
- sufficiency_state
- shortage_flag
- critical_resource_flag
- disruption_risk_flag
- escalation_need_flag

actions:
- open_supply_detail
- escalate_supply_issue
- trigger_support_action where supported


# ============================================================
# 10. TRAINING TAB
# ============================================================

section_id: military_training_section
section_type: grouped_list

fields:
- training_group
- preparedness_state
- unsupported_area_flag
- imbalance_flag
- readiness_improvement_need_flag
- correction_urgency_flag

actions:
- open_training_detail
- reprioritize_training
- escalate_training_issue


# ============================================================
# 11. DEPLOYMENT SUPPORT TAB
# ============================================================

section_id: military_deployment_support_section
section_type: relationship_panel

fields:
- deployment_support_state
- movement_readiness_state
- support_burden_flag
- staging_visibility
- instability_flag
- logistics_dependency_flag

actions:
- open_deployment_detail
- open_linked_logistics
- escalate_deployment_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: military_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: military_kpi_section
section_type: metric_strip

kpi_items:
- readiness_posture
- force_sufficiency_posture
- supply_sufficiency_posture
- equipment_continuity_posture
- training_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: military_issue_section
section_type: issue_panel

issue_types:
- degraded_readiness
- supply_shortage
- equipment_degradation
- training_shortfall
- alert_instability
- support_burden_concern
- linked_logistics_concern

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager_or_command:
- all tabs visible
- all standard actions visible

operations_operator:
- readiness_and_alert_tab
- deployment_support_tab limited
- issue_tab
- history_tab limited

maintenance_operator:
- equipment_tab
- supply_and_support_tab limited
- issue_tab
- summary_tab

authority:
- all tabs visible
- permission-sensitive actions visible by role

public_user:
- not part of this interface contract


# ============================================================
# 16. FINAL RULE
# ============================================================

Military UI interface must remain
defense-oriented,
force-visible,
readiness-visible,
supply-visible,
equipment-visible,
issue-visible,
and explicitly separable
from security or logistics UI.



# ============================================================
# FILE: 3820016_MEDIA_OPERATION_UI_INTERFACE.md
# ============================================================

# ============================================================
# MEDIA OPERATION UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: media-operation-ui-interface
component: media-operation-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the media operation UI interface contract
for Civilization media-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- MEDIA_OPERATION_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for media operation UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- media_overview_screen
- media_manage_screen
- media_content_and_catalog_screen
- media_schedule_screen
- media_staffing_and_production_screen
- media_audience_and_reach_screen
- media_advertising_and_sponsorship_screen
- media_reliability_and_exposure_screen
- media_issue_screen


# ============================================================
# 3. MEDIA OVERVIEW SCREEN
# ============================================================

screen_id: media_overview_screen
route_key: media/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- media_summary_card
- media_status_strip
- media_schedule_warning_panel
- media_exposure_warning_panel
- media_kpi_strip
- media_issue_panel
- media_recent_history_panel

primary_actions:
- open_media_manage
- open_media_content_and_catalog
- open_media_schedule
- open_media_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. MEDIA MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- content_and_catalog_tab
- schedule_tab
- staffing_and_production_tab
- audience_and_reach_tab
- advertising_and_sponsorship_tab
- reliability_and_exposure_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. MEDIA SUMMARY CARD
# ============================================================

section_id: media_summary_card
section_type: summary_card

fields:
- facility_name
- media_type
- institution_context
- district_summary
- content_state
- schedule_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. CONTENT AND CATALOG TAB
# ============================================================

section_id: media_content_and_catalog_section
section_type: grouped_list

fields:
- content_group
- active_content_count
- category_balance_state
- unsupported_area_flag
- priority_state
- reconfiguration_pressure_flag

actions:
- open_content_detail
- reprioritize_content
- escalate_content_issue


# ============================================================
# 7. SCHEDULE TAB
# ============================================================

section_id: media_schedule_section
section_type: table

fields:
- schedule_group
- timing_state
- delay_flag
- overload_flag
- instability_flag
- bottleneck_flag

actions:
- open_schedule_detail
- correct_schedule
- escalate_schedule_issue


# ============================================================
# 8. STAFFING AND PRODUCTION TAB
# ============================================================

section_id: media_staffing_and_production_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- production_burden_flag
- editorial_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 9. AUDIENCE AND REACH TAB
# ============================================================

section_id: media_audience_and_reach_section
section_type: detail_panel

fields:
- audience_state
- reach_state
- unstable_exposure_flag
- engagement_signal where supported
- growth_or_decline_flag
- correction_need_flag

actions:
- open_audience_detail
- investigate_reach_change
- escalate_audience_issue


# ============================================================
# 10. ADVERTISING AND SPONSORSHIP TAB
# ============================================================

section_id: media_advertising_and_sponsorship_section
section_type: table

fields:
- monetization_group
- advertising_state
- sponsorship_state
- underused_space_flag
- concentration_flag
- correction_need_flag

actions:
- open_advertising_detail
- reprioritize_slot where supported
- escalate_monetization_issue


# ============================================================
# 11. RELIABILITY AND EXPOSURE TAB
# ============================================================

section_id: media_reliability_and_exposure_section
section_type: issue_panel

fields:
- reliability_state
- interruption_flag
- degraded_exposure_flag
- delay_concentration_flag
- unstable_service_flag
- correction_urgency_flag

actions:
- open_reliability_detail
- escalate_reliability_issue
- trigger_correction_action where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: media_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: media_kpi_section
section_type: metric_strip

kpi_items:
- content_continuity_posture
- schedule_stability_posture
- staffing_sufficiency_posture
- audience_reach_posture
- reliability_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: media_issue_section
section_type: issue_panel

issue_types:
- schedule_disruption
- production_backlog
- staffing_shortage
- exposure_instability
- audience_decline_concern
- advertising_imbalance
- publication_delay

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

editorial_operator:
- content_and_catalog_tab
- schedule_tab limited
- issue_tab
- history_tab limited

schedule_operator:
- schedule_tab
- reliability_and_exposure_tab
- issue_tab
- summary_tab

advertising_operator:
- advertising_and_sponsorship_tab
- audience_and_reach_tab limited
- issue_tab
- history_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

Media UI interface must remain
media-service-oriented,
content-visible,
schedule-visible,
reach-visible,
reliability-visible,
issue-visible,
and explicitly separable
from streamer or exhibition UI.



# ============================================================
# FILE: 3820017_EXHIBITION_AND_EVENT_UI_INTERFACE.md
# ============================================================

# ============================================================
# EXHIBITION AND EVENT UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: exhibition-and-event-ui-interface
component: exhibition-and-event-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the exhibition and event UI interface contract
for Civilization venue- and event-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- EXHIBITION_AND_EVENT_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for exhibition and event UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- exhibition_overview_screen
- exhibition_manage_screen
- exhibition_event_and_program_screen
- exhibition_layout_and_space_screen
- exhibition_exhibitor_and_participant_screen
- exhibition_admission_and_visitor_flow_screen
- exhibition_staffing_and_turnover_screen
- exhibition_readiness_and_reliability_screen
- exhibition_issue_screen


# ============================================================
# 3. EXHIBITION OVERVIEW SCREEN
# ============================================================

screen_id: exhibition_overview_screen
route_key: exhibition/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- exhibition_summary_card
- exhibition_status_strip
- exhibition_layout_warning_panel
- exhibition_admission_warning_panel
- exhibition_kpi_strip
- exhibition_issue_panel
- exhibition_recent_history_panel

primary_actions:
- open_exhibition_manage
- open_exhibition_event_and_program
- open_exhibition_layout_and_space
- open_exhibition_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. EXHIBITION MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- event_and_program_tab
- layout_and_space_tab
- exhibitor_and_participant_tab
- admission_and_visitor_flow_tab
- staffing_and_turnover_tab
- readiness_and_reliability_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. EXHIBITION SUMMARY CARD
# ============================================================

section_id: exhibition_summary_card
section_type: summary_card

fields:
- facility_name
- venue_type
- institution_context
- district_summary
- event_state
- readiness_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. EVENT AND PROGRAM TAB
# ============================================================

section_id: exhibition_event_and_program_section
section_type: grouped_list

fields:
- event_group
- program_count
- timing_posture
- overload_flag
- unsupported_area_flag
- reconfiguration_pressure_flag

actions:
- open_event_detail
- reprioritize_event
- escalate_event_issue


# ============================================================
# 7. LAYOUT AND SPACE TAB
# ============================================================

section_id: exhibition_layout_and_space_section
section_type: table

fields:
- zone_or_layout_group
- allocation_state
- overcrowding_flag
- underuse_flag
- setup_readiness_flag
- mismatch_flag

actions:
- open_layout_detail
- reassign_space
- escalate_layout_issue


# ============================================================
# 8. EXHIBITOR AND PARTICIPANT TAB
# ============================================================

section_id: exhibition_exhibitor_and_participant_section
section_type: table

fields:
- exhibitor_or_participant_group
- onboarding_state
- readiness_state
- coordination_burden_flag
- instability_flag
- correction_need_flag

actions:
- open_participant_detail
- reprioritize_participant_support
- escalate_participant_issue


# ============================================================
# 9. ADMISSION AND VISITOR FLOW TAB
# ============================================================

section_id: exhibition_admission_and_visitor_flow_section
section_type: table

fields:
- admission_group
- entry_state
- queue_state
- visitor_flow_state
- bottleneck_flag
- correction_need_flag

actions:
- open_admission_detail
- correct_admission_flow
- escalate_admission_issue


# ============================================================
# 10. STAFFING AND TURNOVER TAB
# ============================================================

section_id: exhibition_staffing_and_turnover_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- turnover_burden_flag
- setup_teardown_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 11. READINESS AND RELIABILITY TAB
# ============================================================

section_id: exhibition_readiness_and_reliability_section
section_type: issue_panel

fields:
- readiness_state
- setup_completion_state
- instability_flag
- delay_concentration_flag
- service_reliability_state
- correction_urgency_flag

actions:
- open_readiness_detail
- escalate_readiness_issue
- trigger_correction_action where supported


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: exhibition_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: exhibition_kpi_section
section_type: metric_strip

kpi_items:
- event_continuity_posture
- layout_readiness_posture
- staffing_sufficiency_posture
- admission_posture
- visitor_flow_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: exhibition_issue_section
section_type: issue_panel

issue_types:
- layout_instability
- staffing_shortage
- participant_coordination_burden
- admission_bottleneck
- schedule_delay
- readiness_concern
- visitor_flow_instability

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

venue_operator:
- layout_and_space_tab
- admission_and_visitor_flow_tab limited
- issue_tab
- history_tab limited

participant_coordinator:
- exhibitor_and_participant_tab
- event_and_program_tab limited
- issue_tab
- summary_tab

admission_operator:
- admission_and_visitor_flow_tab
- readiness_and_reliability_tab limited
- issue_tab
- summary_tab


# ============================================================
# 16. FINAL RULE
# ============================================================

Exhibition UI interface must remain
venue-operation-oriented,
event-visible,
layout-visible,
admission-visible,
readiness-visible,
issue-visible,
and explicitly separable
from media or culture UI.



# ============================================================
# FILE: 3820018_COMPANY_PREMISES_AND_TENANT_UI_INTERFACE.md
# ============================================================

# ============================================================
# COMPANY PREMISES AND TENANT UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: company-premises-and-tenant-ui-interface
component: company-premises-and-tenant-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the company premises and tenant UI interface contract
for Civilization company-occupancy-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- COMPANY_PREMISES_AND_TENANT_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for company premises and tenant UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- company_premises_overview_screen
- company_premises_manage_screen
- company_premises_structure_screen
- company_premises_tenant_allocation_screen
- company_premises_shared_space_screen
- company_premises_access_and_movement_screen
- company_premises_staffing_screen
- company_premises_usage_visibility_screen
- company_premises_issue_screen


# ============================================================
# 3. COMPANY PREMISES OVERVIEW SCREEN
# ============================================================

screen_id: company_premises_overview_screen
route_key: company-premises/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- company_premises_summary_card
- company_premises_status_strip
- company_premises_tenant_warning_panel
- company_premises_access_warning_panel
- company_premises_kpi_strip
- company_premises_issue_panel
- company_premises_recent_history_panel

primary_actions:
- open_company_premises_manage
- open_company_premises_structure
- open_company_premises_tenant_allocation
- open_company_premises_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. COMPANY PREMISES MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- structure_tab
- tenant_allocation_tab
- shared_space_tab
- access_and_movement_tab
- staffing_tab
- usage_visibility_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. COMPANY PREMISES SUMMARY CARD
# ============================================================

section_id: company_premises_summary_card
section_type: summary_card

fields:
- facility_name
- premises_type
- organization_context
- district_summary
- occupancy_state
- usage_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. STRUCTURE TAB
# ============================================================

section_id: company_premises_structure_section
section_type: table

fields:
- site_or_floor_group
- section_count
- utilization_state
- underuse_flag
- overload_flag
- reallocation_pressure_flag

actions:
- open_structure_detail
- reassign_section
- escalate_structure_issue


# ============================================================
# 7. TENANT ALLOCATION TAB
# ============================================================

section_id: company_premises_tenant_allocation_section
section_type: table

fields:
- tenant_or_branch_group
- occupied_space_count
- stability_state
- mismatch_flag
- concentration_flag
- reassignment_need_flag

actions:
- open_tenant_detail
- reassign_tenant
- escalate_tenant_issue


# ============================================================
# 8. SHARED SPACE TAB
# ============================================================

section_id: company_premises_shared_space_section
section_type: table

fields:
- shared_space_group
- load_state
- usage_imbalance_flag
- contention_flag
- unsupported_area_flag
- correction_need_flag

actions:
- open_shared_space_detail
- correct_shared_space_usage
- escalate_shared_space_issue


# ============================================================
# 9. ACCESS AND MOVEMENT TAB
# ============================================================

section_id: company_premises_access_and_movement_section
section_type: detail_panel

fields:
- access_state
- restricted_area_visibility
- movement_bottleneck_flag
- entry_burden_flag
- unstable_access_flag
- correction_need_flag

actions:
- open_access_detail
- correct_access_flow
- escalate_access_issue


# ============================================================
# 10. STAFFING TAB
# ============================================================

section_id: company_premises_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- facilities_support_burden_flag
- reception_or_support_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 11. USAGE VISIBILITY TAB
# ============================================================

section_id: company_premises_usage_visibility_section
section_type: issue_panel

fields:
- occupancy_state
- utilization_state
- underuse_flag
- overuse_flag
- mismatch_between_intended_and_actual_use_flag
- correction_urgency_flag

actions:
- open_usage_detail
- intervene_usage
- escalate_usage_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: company_premises_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: company_premises_kpi_section
section_type: metric_strip

kpi_items:
- occupancy_posture
- usage_posture
- tenant_stability_posture
- shared_space_burden_posture
- access_stability_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: company_premises_issue_section
section_type: issue_panel

issue_types:
- occupancy_mismatch
- tenant_instability
- shared_space_contention
- support_staff_shortage
- access_instability
- underuse_or_overload
- premises_usage_inconsistency_visibility

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

tenant_operator:
- tenant_allocation_tab limited
- shared_space_tab limited
- issue_tab
- summary_tab

facilities_operator:
- structure_tab
- access_and_movement_tab
- staffing_tab limited
- issue_tab

owner_or_authority:
- all tabs visible
- permission-sensitive actions visible by role


# ============================================================
# 16. FINAL RULE
# ============================================================

Company-premises UI interface must remain
organization-occupancy-oriented,
tenant-visible,
shared-space-visible,
access-visible,
usage-visible,
issue-visible,
and explicitly separable
from real-estate or retail UI.



# ============================================================
# FILE: 3820019_INFRASTRUCTURE_AND_UTILITY_UI_INTERFACE.md
# ============================================================

# ============================================================
# INFRASTRUCTURE AND UTILITY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: infrastructure-and-utility-ui-interface
component: infrastructure-and-utility-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the infrastructure and utility UI interface contract
for Civilization foundational-service facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- INFRASTRUCTURE_AND_UTILITY_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for infrastructure and utility UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- infrastructure_overview_screen
- infrastructure_manage_screen
- infrastructure_coverage_and_region_screen
- infrastructure_supply_and_capacity_screen
- infrastructure_dependency_and_linkage_screen
- infrastructure_maintenance_and_condition_screen
- infrastructure_outage_and_restoration_screen
- infrastructure_staffing_and_control_screen
- infrastructure_issue_screen


# ============================================================
# 3. INFRASTRUCTURE OVERVIEW SCREEN
# ============================================================

screen_id: infrastructure_overview_screen
route_key: infrastructure/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- infrastructure_summary_card
- infrastructure_status_strip
- infrastructure_outage_warning_panel
- infrastructure_dependency_warning_panel
- infrastructure_kpi_strip
- infrastructure_issue_panel
- infrastructure_recent_history_panel

primary_actions:
- open_infrastructure_manage
- open_infrastructure_coverage_and_region
- open_infrastructure_outage_and_restoration
- open_infrastructure_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. INFRASTRUCTURE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- coverage_and_region_tab
- supply_and_capacity_tab
- dependency_and_linkage_tab
- maintenance_and_condition_tab
- outage_and_restoration_tab
- staffing_and_control_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. INFRASTRUCTURE SUMMARY CARD
# ============================================================

section_id: infrastructure_summary_card
section_type: summary_card

fields:
- facility_name
- utility_type
- service_role
- district_summary
- coverage_state
- supply_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. COVERAGE AND REGION TAB
# ============================================================

section_id: infrastructure_coverage_and_region_section
section_type: table

fields:
- region_group
- coverage_state
- uncovered_flag
- overextended_flag
- imbalance_flag
- priority_region_flag

actions:
- open_region_detail
- reprioritize_region
- escalate_coverage_issue


# ============================================================
# 7. SUPPLY AND CAPACITY TAB
# ============================================================

section_id: infrastructure_supply_and_capacity_section
section_type: table

fields:
- supply_group
- capacity_value
- supply_state
- overload_flag
- bottleneck_flag
- correction_need_flag

actions:
- open_supply_detail
- correct_supply_allocation
- escalate_supply_issue


# ============================================================
# 8. DEPENDENCY AND LINKAGE TAB
# ============================================================

section_id: infrastructure_dependency_and_linkage_section
section_type: detail_panel

fields:
- dependency_group
- linked_facility_visibility
- critical_dependency_flag
- cascading_risk_flag
- unstable_link_flag
- correction_urgency_flag

actions:
- open_dependency_detail
- open_linked_facility
- escalate_dependency_issue


# ============================================================
# 9. MAINTENANCE AND CONDITION TAB
# ============================================================

section_id: infrastructure_maintenance_and_condition_section
section_type: table

fields:
- maintenance_group
- maintenance_burden_state
- repair_backlog_flag
- degradation_flag
- interruption_risk_flag
- restoration_need_flag

actions:
- open_maintenance_detail
- escalate_maintenance
- request_repair_action


# ============================================================
# 10. OUTAGE AND RESTORATION TAB
# ============================================================

section_id: infrastructure_outage_and_restoration_section
section_type: issue_panel

fields:
- outage_group
- outage_state
- restoration_progress_state
- affected_region_count
- emergency_correction_flag
- recovery_burden_flag

actions:
- open_outage_detail
- escalate_outage_issue
- trigger_restoration_action where supported


# ============================================================
# 11. STAFFING AND CONTROL TAB
# ============================================================

section_id: infrastructure_staffing_and_control_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- control_burden_flag
- maintenance_burden_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: infrastructure_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: infrastructure_kpi_section
section_type: metric_strip

kpi_items:
- coverage_posture
- supply_sufficiency_posture
- outage_posture
- restoration_posture
- dependency_stability_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: infrastructure_issue_section
section_type: issue_panel

issue_types:
- coverage_gap
- supply_instability
- outage_concentration
- dependency_concern
- maintenance_overload
- staffing_shortage
- restoration_delay

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

control_operator:
- supply_and_capacity_tab
- dependency_and_linkage_tab limited
- outage_and_restoration_tab
- issue_tab

maintenance_operator:
- maintenance_and_condition_tab
- outage_and_restoration_tab limited
- issue_tab
- history_tab limited

authority:
- all tabs visible
- permission-sensitive actions visible by role


# ============================================================
# 16. FINAL RULE
# ============================================================

Infrastructure UI interface must remain
utility-service-oriented,
coverage-visible,
supply-visible,
outage-visible,
dependency-visible,
issue-visible,
and explicitly separable
from logistics or manufacturing UI.



# ============================================================
# FILE: 3820020_CULTURE_AND_LEISURE_UI_INTERFACE.md
# ============================================================

# ============================================================
# CULTURE AND LEISURE UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: culture-and-leisure-ui-interface
component: culture-and-leisure-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the culture and leisure UI interface contract
for Civilization attraction-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- CULTURE_AND_LEISURE_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for culture and leisure UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- culture_overview_screen
- culture_manage_screen
- culture_program_and_activity_screen
- culture_visitor_and_flow_screen
- culture_atmosphere_and_condition_screen
- culture_staffing_and_upkeep_screen
- culture_appeal_and_visibility_screen
- culture_money_visibility_screen
- culture_issue_screen


# ============================================================
# 3. CULTURE OVERVIEW SCREEN
# ============================================================

screen_id: culture_overview_screen
route_key: culture/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- culture_summary_card
- culture_status_strip
- culture_visitor_warning_panel
- culture_condition_warning_panel
- culture_kpi_strip
- culture_issue_panel
- culture_recent_history_panel

primary_actions:
- open_culture_manage
- open_culture_program_and_activity
- open_culture_visitor_and_flow
- open_culture_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. CULTURE MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- program_and_activity_tab
- visitor_and_flow_tab
- atmosphere_and_condition_tab
- staffing_and_upkeep_tab
- appeal_and_visibility_tab
- money_visibility_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. CULTURE SUMMARY CARD
# ============================================================

section_id: culture_summary_card
section_type: summary_card

fields:
- facility_name
- attraction_type
- institution_context
- district_summary
- visitor_state
- appeal_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. PROGRAM AND ACTIVITY TAB
# ============================================================

section_id: culture_program_and_activity_section
section_type: grouped_list

fields:
- program_group
- active_program_count
- priority_state
- unsupported_area_flag
- overload_flag
- reconfiguration_pressure_flag

actions:
- open_program_detail
- reprioritize_program
- escalate_program_issue


# ============================================================
# 7. VISITOR AND FLOW TAB
# ============================================================

section_id: culture_visitor_and_flow_section
section_type: table

fields:
- visitor_group
- visitor_state
- overcrowding_flag
- underuse_flag
- bottleneck_flag
- correction_need_flag

actions:
- open_visitor_detail
- correct_flow
- escalate_flow_issue


# ============================================================
# 8. ATMOSPHERE AND CONDITION TAB
# ============================================================

section_id: culture_atmosphere_and_condition_section
section_type: detail_panel

fields:
- atmosphere_state
- cleanliness_state where applicable
- visual_condition_state
- degradation_flag
- attraction_quality_flag
- urgent_correction_flag

actions:
- open_condition_detail
- apply_condition_correction
- escalate_condition_issue


# ============================================================
# 9. STAFFING AND UPKEEP TAB
# ============================================================

section_id: culture_staffing_and_upkeep_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- upkeep_burden_flag
- unsupported_area_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 10. APPEAL AND VISIBILITY TAB
# ============================================================

section_id: culture_appeal_and_visibility_section
section_type: issue_panel

fields:
- appeal_state
- visibility_state
- decline_flag
- growth_signal where applicable
- underperforming_area_flag
- correction_need_flag

actions:
- open_appeal_detail
- investigate_decline
- escalate_appeal_issue


# ============================================================
# 11. MONEY VISIBILITY TAB
# ============================================================

section_id: culture_money_visibility_section
section_type: detail_panel

fields:
- admission_state where applicable
- pricing_visibility
- burden_visibility
- underperforming_program_flag
- correction_need_flag
- monetization_note where applicable

actions:
- open_money_detail
- apply_money_correction where supported
- escalate_money_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: culture_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: culture_kpi_section
section_type: metric_strip

kpi_items:
- visitor_posture
- attraction_continuity_posture
- site_condition_posture
- staffing_sufficiency_posture
- appeal_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: culture_issue_section
section_type: issue_panel

issue_types:
- visitor_instability
- overcrowding_or_underuse
- site_condition_degradation
- staffing_shortage
- appeal_decline
- program_imbalance
- readiness_concern

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

program_operator:
- program_and_activity_tab
- visitor_and_flow_tab limited
- issue_tab
- history_tab limited

site_operator:
- atmosphere_and_condition_tab
- staffing_and_upkeep_tab
- issue_tab
- summary_tab

public_information_operator:
- appeal_and_visibility_tab
- money_visibility_tab limited
- issue_tab
- summary_tab


# ============================================================
# 16. FINAL RULE
# ============================================================

Culture and leisure UI interface must remain
attraction-oriented,
program-visible,
visitor-visible,
condition-visible,
appeal-visible,
issue-visible,
and explicitly separable
from exhibition or media UI.



# ============================================================
# FILE: 3820021_COMMUNITY_AND_LIFE_SUPPORT_UI_INTERFACE.md
# ============================================================

# ============================================================
# COMMUNITY AND LIFE SUPPORT UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: community-and-life-support-ui-interface
component: community-and-life-support-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the community and life support UI interface contract
for Civilization local support-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- COMMUNITY_AND_LIFE_SUPPORT_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for community and life support UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- community_support_overview_screen
- community_support_manage_screen
- community_support_service_scope_screen
- community_support_access_and_eligibility_screen
- community_support_case_load_screen
- community_support_staffing_screen
- community_support_continuity_screen
- community_support_linkage_screen
- community_support_issue_screen


# ============================================================
# 3. COMMUNITY SUPPORT OVERVIEW SCREEN
# ============================================================

screen_id: community_support_overview_screen
route_key: community-support/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- community_support_summary_card
- community_support_status_strip
- community_support_access_warning_panel
- community_support_case_warning_panel
- community_support_kpi_strip
- community_support_issue_panel
- community_support_recent_history_panel

primary_actions:
- open_community_support_manage
- open_community_support_service_scope
- open_community_support_case_load
- open_community_support_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. COMMUNITY SUPPORT MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- service_scope_tab
- access_and_eligibility_tab
- case_load_tab
- staffing_tab
- continuity_tab
- linkage_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. COMMUNITY SUPPORT SUMMARY CARD
# ============================================================

section_id: community_support_summary_card
section_type: summary_card

fields:
- facility_name
- support_type
- institution_context
- district_summary
- service_state
- continuity_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. SERVICE SCOPE TAB
# ============================================================

section_id: community_support_service_scope_section
section_type: grouped_list

fields:
- service_group
- active_service_count
- priority_state
- unsupported_area_flag
- overload_flag
- reconfiguration_pressure_flag

actions:
- open_service_detail
- reprioritize_service
- escalate_service_issue


# ============================================================
# 7. ACCESS AND ELIGIBILITY TAB
# ============================================================

section_id: community_support_access_and_eligibility_section
section_type: table

fields:
- access_group
- eligibility_visibility
- blocked_access_flag
- delayed_access_flag
- entry_bottleneck_flag
- unresolved_access_burden_flag

actions:
- open_access_detail
- correct_access_flow
- escalate_access_issue


# ============================================================
# 8. CASE LOAD TAB
# ============================================================

section_id: community_support_case_load_section
section_type: table

fields:
- case_group
- load_state
- backlog_flag
- support_burden_flag
- unmet_need_flag
- escalation_need_flag

actions:
- open_case_detail
- reprioritize_case
- escalate_case_issue


# ============================================================
# 9. STAFFING TAB
# ============================================================

section_id: community_support_staffing_section
section_type: table

fields:
- role_group
- assigned_staff_count
- coverage_state
- support_burden_flag
- unsupported_area_flag
- reassignment_need_flag

actions:
- open_staffing_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 10. CONTINUITY TAB
# ============================================================

section_id: community_support_continuity_section
section_type: detail_panel

fields:
- life_stability_state
- continuity_visibility
- unresolved_support_pressure_flag
- improvement_or_decline_signal
- correction_urgency_flag
- local_dependency_visibility

actions:
- open_continuity_detail
- apply_continuity_correction
- escalate_continuity_issue


# ============================================================
# 11. LINKAGE TAB
# ============================================================

section_id: community_support_linkage_section
section_type: relationship_panel

fields:
- family_support_state
- childcare_support_state
- employment_support_state
- unstable_linkage_flag
- handoff_burden_flag
- correction_need_flag

actions:
- open_linkage_detail
- open_linked_support
- escalate_linkage_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: community_support_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: community_support_kpi_section
section_type: metric_strip

kpi_items:
- service_continuity_posture
- access_posture
- case_load_posture
- staffing_sufficiency_posture
- life_stability_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: community_support_issue_section
section_type: issue_panel

issue_types:
- access_blockage
- staffing_shortage
- case_backlog
- unmet_support_need
- continuity_concern
- unstable_linkage_with_other_support_systems
- support_imbalance

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

case_operator:
- case_load_tab
- access_and_eligibility_tab limited
- issue_tab
- history_tab limited

support_operator:
- service_scope_tab limited
- continuity_tab
- linkage_tab
- issue_tab

authority_or_support_admin:
- all tabs visible
- permission-sensitive actions visible by role

resident_or_public_user:
- access_and_eligibility_tab limited
- summary_tab limited
- issue tab hidden


# ============================================================
# 16. FINAL RULE
# ============================================================

Community-support UI interface must remain
support-oriented,
service-visible,
access-visible,
case-visible,
continuity-visible,
issue-visible,
and explicitly separable
from government or medical UI.



# ============================================================
# FILE: 3820022_LODGING_AND_STAY_UI_INTERFACE.md
# ============================================================

# ============================================================
# LODGING AND STAY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: lodging-and-stay-ui-interface
component: lodging-and-stay-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the lodging and stay UI interface contract
for Civilization temporary-stay-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- LODGING_AND_STAY_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for lodging and stay UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- lodging_overview_screen
- lodging_manage_screen
- lodging_room_and_unit_screen
- lodging_booking_and_assignment_screen
- lodging_guest_and_support_screen
- lodging_cleaning_and_turnover_screen
- lodging_occupancy_and_utilization_screen
- lodging_money_visibility_screen
- lodging_issue_screen


# ============================================================
# 3. LODGING OVERVIEW SCREEN
# ============================================================

screen_id: lodging_overview_screen
route_key: lodging/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- lodging_summary_card
- lodging_status_strip
- lodging_booking_warning_panel
- lodging_turnover_warning_panel
- lodging_kpi_strip
- lodging_issue_panel
- lodging_recent_history_panel

primary_actions:
- open_lodging_manage
- open_lodging_room_and_unit
- open_lodging_booking_and_assignment
- open_lodging_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. LODGING MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- room_and_unit_tab
- booking_and_assignment_tab
- guest_and_support_tab
- cleaning_and_turnover_tab
- occupancy_and_utilization_tab
- money_visibility_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. LODGING SUMMARY CARD
# ============================================================

section_id: lodging_summary_card
section_type: summary_card

fields:
- facility_name
- lodging_type
- operation_context
- district_summary
- occupancy_state
- turnover_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. ROOM AND UNIT TAB
# ============================================================

section_id: lodging_room_and_unit_section
section_type: table

fields:
- room_or_unit_group
- room_type
- allocation_state
- unavailable_flag
- underuse_flag
- reassignment_need_flag

actions:
- open_room_detail
- reassign_room
- escalate_room_issue


# ============================================================
# 7. BOOKING AND ASSIGNMENT TAB
# ============================================================

section_id: lodging_booking_and_assignment_section
section_type: table

fields:
- booking_group
- assignment_state
- blocked_assignment_flag
- delayed_assignment_flag
- turnover_conflict_flag
- correction_need_flag

actions:
- open_booking_detail
- correct_assignment
- escalate_booking_issue


# ============================================================
# 8. GUEST AND SUPPORT TAB
# ============================================================

section_id: lodging_guest_and_support_section
section_type: grouped_list

fields:
- guest_group
- support_burden_flag
- special_support_visibility where applicable
- assignment_mismatch_flag
- unresolved_support_flag
- escalation_need_flag

actions:
- open_guest_detail
- open_support_follow_up
- escalate_guest_issue


# ============================================================
# 9. CLEANING AND TURNOVER TAB
# ============================================================

section_id: lodging_cleaning_and_turnover_section
section_type: table

fields:
- turnover_group
- cleaning_state
- turnover_burden_flag
- delayed_turnover_flag
- room_readiness_state
- correction_urgency_flag

actions:
- open_turnover_detail
- escalate_turnover_issue
- trigger_cleaning_action where supported


# ============================================================
# 10. OCCUPANCY AND UTILIZATION TAB
# ============================================================

section_id: lodging_occupancy_and_utilization_section
section_type: issue_panel

fields:
- occupancy_state
- utilization_state
- underuse_flag
- overload_flag
- mismatch_between_intended_and_actual_use_flag
- correction_need_flag

actions:
- open_occupancy_detail
- intervene_occupancy
- escalate_occupancy_issue


# ============================================================
# 11. MONEY VISIBILITY TAB
# ============================================================

section_id: lodging_money_visibility_section
section_type: detail_panel

fields:
- stay_charge_visibility where applicable
- burden_visibility
- underperforming_unit_flag
- correction_need_flag
- monetization_note where applicable

actions:
- open_money_detail
- apply_money_correction where supported
- escalate_money_issue


# ============================================================
# 12. AUTOMATION TAB
# ============================================================

section_id: lodging_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 13. KPI TAB
# ============================================================

section_id: lodging_kpi_section
section_type: metric_strip

kpi_items:
- occupancy_posture
- turnover_posture
- room_readiness_posture
- staffing_sufficiency_posture
- guest_support_posture
- intervention_frequency_posture


# ============================================================
# 14. ISSUE TAB
# ============================================================

section_id: lodging_issue_section
section_type: issue_panel

issue_types:
- booking_conflict
- occupancy_instability
- cleaning_delay
- turnover_backlog
- staffing_shortage
- guest_support_concern
- urgent_intervention_trigger

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 15. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

booking_operator:
- booking_and_assignment_tab
- occupancy_and_utilization_tab limited
- issue_tab
- history_tab limited

cleaning_operator:
- cleaning_and_turnover_tab
- room_and_unit_tab limited
- issue_tab
- summary_tab

guest_support_operator:
- guest_and_support_tab
- issue_tab
- linked_tab limited
- summary_tab

authority:
- summary_tab
- issue_tab
- history_tab
- permission_tab limited


# ============================================================
# 16. FINAL RULE
# ============================================================

Lodging UI interface must remain
stay-oriented,
room-visible,
booking-visible,
turnover-visible,
occupancy-visible,
issue-visible,
and explicitly separable
from residence or real-estate UI.



# ============================================================
# FILE: 3820023_RESEARCH_AND_TECHNOLOGY_UI_INTERFACE.md
# ============================================================

# ============================================================
# RESEARCH AND TECHNOLOGY UI INTERFACE
# ============================================================

status: canonical
layer: interface
scope: research-and-technology-ui-interface
component: research-and-technology-ui-interface

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the research and technology UI interface contract
for Civilization research-oriented facilities.

This document must align with:

- CIVILIZATION_FACILITY_UI_INTERFACE
- RESEARCH_AND_TECHNOLOGY_UI_ARCHITECTURE

This document defines
screen composition,
tab contract,
field contract,
action contract,
and state contract
for research and technology UI.


# ============================================================
# 2. SCREEN MAP
# ============================================================

Canonical screens:

- research_overview_screen
- research_manage_screen
- research_program_and_focus_screen
- research_staff_and_allocation_screen
- research_laboratory_and_equipment_screen
- research_output_and_progress_screen
- research_budget_and_support_screen
- research_issue_screen


# ============================================================
# 3. RESEARCH OVERVIEW SCREEN
# ============================================================

screen_id: research_overview_screen
route_key: research/overview
route_params:
- facility_id
- facility_type
- canonical_ui_target
- selected_tab optional

visible_sections:
- research_summary_card
- research_status_strip
- research_equipment_warning_panel
- research_progress_warning_panel
- research_kpi_strip
- research_issue_panel
- research_recent_history_panel

primary_actions:
- open_research_manage
- open_research_program_and_focus
- open_research_output_and_progress
- open_research_issue

states:
- loading
- ready
- empty
- warning
- blocked
- partial_data
- error


# ============================================================
# 4. RESEARCH MANAGE SCREEN TABS
# ============================================================

Canonical tabs:

- summary_tab
- program_and_focus_tab
- staff_and_allocation_tab
- laboratory_and_equipment_tab
- output_and_progress_tab
- budget_and_support_tab
- automation_tab
- kpi_tab
- issue_tab
- history_tab
- permission_tab
- linked_tab


# ============================================================
# 5. RESEARCH SUMMARY CARD
# ============================================================

section_id: research_summary_card
section_type: summary_card

fields:
- facility_name
- research_type
- institution_context
- district_summary
- program_state
- equipment_state
- current_alert_level

actions:
- change_mode_to_operate
- open_issue_screen


# ============================================================
# 6. PROGRAM AND FOCUS TAB
# ============================================================

section_id: research_program_and_focus_section
section_type: grouped_list

fields:
- program_group
- active_program_count
- focus_visibility
- unsupported_area_flag
- priority_state
- reconfiguration_pressure_flag

actions:
- open_program_detail
- reprioritize_program
- escalate_program_issue


# ============================================================
# 7. STAFF AND ALLOCATION TAB
# ============================================================

section_id: research_staff_and_allocation_section
section_type: table

fields:
- staff_group
- allocation_state
- coverage_state
- overload_flag
- specialization_need_flag
- reassignment_need_flag

actions:
- open_staff_detail
- reassign_staff
- escalate_staffing_issue


# ============================================================
# 8. LABORATORY AND EQUIPMENT TAB
# ============================================================

section_id: research_laboratory_and_equipment_section
section_type: table

fields:
- lab_or_equipment_group
- readiness_state
- degradation_flag
- bottleneck_flag
- correction_need_flag
- support_burden_flag

actions:
- open_equipment_detail
- escalate_equipment_issue
- request_support_action


# ============================================================
# 9. OUTPUT AND PROGRESS TAB
# ============================================================

section_id: research_output_and_progress_section
section_type: issue_panel

fields:
- output_state
- progress_visibility
- unstable_progress_flag
- blocked_output_flag
- milestone_posture where applicable
- correction_urgency_flag

actions:
- open_progress_detail
- investigate_blocked_progress
- escalate_progress_issue


# ============================================================
# 10. BUDGET AND SUPPORT TAB
# ============================================================

section_id: research_budget_and_support_section
section_type: detail_panel

fields:
- budget_visibility where applicable
- support_visibility
- burden_concentration_flag
- under_supported_area_flag
- correction_need_flag
- support_note where applicable

actions:
- open_support_detail
- rebalance_support where supported
- escalate_support_issue


# ============================================================
# 11. AUTOMATION TAB
# ============================================================

section_id: research_automation_section
section_type: detail_panel

fields:
- automation_enabled
- active_policy_profile
- automation_visibility_state
- escalation_threshold_summary
- recent_automated_change_summary

actions:
- pause_automation
- resume_automation
- open_automation_detail


# ============================================================
# 12. KPI TAB
# ============================================================

section_id: research_kpi_section
section_type: metric_strip

kpi_items:
- program_continuity_posture
- staffing_sufficiency_posture
- equipment_readiness_posture
- output_posture
- support_posture
- intervention_frequency_posture


# ============================================================
# 13. ISSUE TAB
# ============================================================

section_id: research_issue_section
section_type: issue_panel

issue_types:
- staffing_shortage
- equipment_instability
- blocked_progress
- under_supported_program
- output_degradation
- lab_bottleneck
- urgent_intervention_trigger

actions:
- open_issue_detail
- intervene_now
- escalate_issue


# ============================================================
# 14. ROLE EXPOSURE
# ============================================================

manager:
- all tabs visible
- all standard actions visible

program_operator:
- program_and_focus_tab
- output_and_progress_tab limited
- issue_tab
- history_tab limited

lab_operator:
- laboratory_and_equipment_tab
- issue_tab
- summary_tab
- linked_tab limited

support_or_budget_operator:
- budget_and_support_tab
- issue_tab
- history_tab limited
- summary_tab


# ============================================================
# 15. FINAL RULE
# ============================================================

Research UI interface must remain
research-oriented,
program-visible,
staffing-visible,
equipment-visible,
progress-visible,
issue-visible,
and explicitly separable
from education or manufacturing UI.


