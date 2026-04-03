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
