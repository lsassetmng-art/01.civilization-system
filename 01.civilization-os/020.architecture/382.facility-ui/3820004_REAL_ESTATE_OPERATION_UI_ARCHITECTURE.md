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
