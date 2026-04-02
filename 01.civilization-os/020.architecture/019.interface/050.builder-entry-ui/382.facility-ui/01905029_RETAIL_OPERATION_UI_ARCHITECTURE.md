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
