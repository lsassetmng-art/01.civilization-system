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
