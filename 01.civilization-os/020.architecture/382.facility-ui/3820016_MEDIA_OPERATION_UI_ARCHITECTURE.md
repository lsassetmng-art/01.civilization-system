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
