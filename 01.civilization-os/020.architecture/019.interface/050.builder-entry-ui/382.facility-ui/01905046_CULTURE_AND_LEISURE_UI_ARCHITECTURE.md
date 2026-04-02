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
