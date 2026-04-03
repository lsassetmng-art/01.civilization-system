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
