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
