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
