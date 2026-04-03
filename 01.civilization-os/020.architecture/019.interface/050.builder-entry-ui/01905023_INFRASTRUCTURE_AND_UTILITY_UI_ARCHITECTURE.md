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
