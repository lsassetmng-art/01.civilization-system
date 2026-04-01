# ============================================================
# COMMUNITY AND LIFE SUPPORT UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: community-and-life-support-ui
component: community-and-life-support-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for community support,
life-support services,
family support,
childcare support,
employment support,
and local support-oriented operation in Civilization.

This document covers the UI family
where life continuity,
support access,
case handling,
service eligibility,
and community-stability truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- community / welfare / support-related architectures
- Facility Type Master Architecture
- support case, eligibility, staffing,
  service menu, and continuity-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
eligibility formulas,
support-law internals,
case-priority internals,
benefit formulas,
or lower support-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Community and life support UI
is the canonical UI family
for local support-oriented facilities in Civilization.

This family applies when the primary truth is:

- family support continuity
- childcare support
- employment support
- local life-support continuity
- community counseling or local guidance
- support access and case progression
- life-stability assistance
- community-linked welfare-support operation
  where non-medical support truth dominates

Community-support UI is not identical to:

- hospital UI
- government civic-service UI
- residence UI
- school UI
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- community-support UI structure
- support-operation screen responsibility
- relation between setup, operation, auto, and intervention
- support-menu / access / case / continuity surface composition
- relation between support truth and linked government / residence / school / medical truth

This document must not redefine:

- eligibility-rule internals
- benefit or support formulas
- lower case-priority internals
- lower support-record truth
- lower welfare-law internals
- lower rights-verification internals

Those remain owned by
existing community-support architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. COMMUNITY SUPPORT SERVICE TRUTH
# ============================================================

Community and life support UI belongs to
the community_and_life_support family.

This family may include:

- childcare support facility
- employment support facility
- family support facility
- community counseling support facility
- local life support center
- support-oriented civic assistance facility
  where life-support truth dominates

Community-support UI must resolve from
canonical_ui_target
and dominant support-service truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Community-support UI must allow
the operator to understand and manage
a live local support institution
as part of the persistent Civilization world.

Community-support UI must expose:

- what support services are active
- who is being supported
- how access and eligibility posture are behaving
- how case load and staffing burden are behaving
- how life-stability or local-support continuity is changing
- what unmet needs or support issues are emerging
- what interventions are required

Community-support UI must not collapse
into abstract support bookkeeping only.


# ============================================================
# 6. COMMUNITY SUPPORT UI LIFECYCLE
# ============================================================

The canonical community-support UI lifecycle is:

post-placement setup
-> institution and service-scope setup
-> support-menu and access setup
-> staffing and case-handling setup
-> ongoing support operation
-> auto support operation where supported
-> observation
-> issue detection
-> intervention
-> continued support operation

This lifecycle must support
persistent community continuity
and world-linked life-stability flow.


# ============================================================
# 7. COMMUNITY SUPPORT UI MODES
# ============================================================

Community-support UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- authority_mode where appropriate
- manager_mode
- case_mode where appropriate
- access_mode where appropriate
- childcare_mode where appropriate
- employment_support_mode where appropriate

Resident-facing support-access surfaces
may connect to support systems,
but are not the only subject
of this operation UI architecture.


# ============================================================
# 8. COMMUNITY SUPPORT COMMON SURFACES
# ============================================================

Community-support UI must inherit
the common facility UI frame
and must expose support-specialized surfaces.

Canonical community-support surfaces include:

- support summary surface
- institution identity and support-role surface
- support-menu and service-scope surface
- access and eligibility visibility surface
- case and support-load surface
- staffing and operations surface
- continuity and life-stability surface
- family / childcare / employment linkage surface where applicable
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and support event surface
- permission and role surface
- linked government / residence / school / medical / support-facility surface


# ============================================================
# 9. SUPPORT SUMMARY SURFACE
# ============================================================

The support summary surface must provide
fast understanding of current support state.

This should expose visibility into:

- institution type
- active support-service posture
- access posture
- staffing sufficiency posture
- case-load posture
- continuity posture
- active issues
- active alerts
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for support-management entry.


# ============================================================
# 10. INSTITUTION IDENTITY AND SUPPORT-ROLE SURFACE
# ============================================================

This surface defines
what kind of support institution exists.

It should expose:

- institution classification
- childcare / employment / family / life-support posture
- operating organization context
- district or jurisdiction context
- service-scope visibility
- linked support identity
- public-facing role visibility where relevant

This surface must clarify
support-service truth clearly.


# ============================================================
# 11. SUPPORT-MENU AND SERVICE-SCOPE SURFACE
# ============================================================

This surface covers
what support services are being provided.

It should expose:

- active support grouping
- service-scope posture
- overloaded or underused services
- unsupported areas
- priority visibility
- service-balance signals
- reconfiguration pressure

This is a visibility and management surface.

It does not redefine
lower service model internals.


# ============================================================
# 12. ACCESS AND ELIGIBILITY VISIBILITY SURFACE
# ============================================================

This surface covers
who can access support
and how access is behaving.

It should expose:

- access posture
- eligibility visibility
- blocked or delayed access visibility
- unstable access areas
- support-entry bottlenecks
- correction need
- unresolved access burden

This surface is central
to support continuity.

It does not redefine
lower rights or eligibility truth.


# ============================================================
# 13. CASE AND SUPPORT-LOAD SURFACE
# ============================================================

This surface covers
how support work is progressing.

It should expose:

- case-load posture
- backlog visibility
- support burden
- unstable case areas
- escalation need
- service-completion posture where relevant
- unmet-need visibility

This surface must remain explicit
and quickly readable.


# ============================================================
# 14. STAFFING AND OPERATIONS SURFACE
# ============================================================

This surface covers
human support capacity.

It should expose:

- staffing sufficiency
- role coverage
- support burden
- unsupported service areas
- shift imbalance where relevant
- manual reassignment need

This surface may connect to
larger staffing systems,
but must preserve
institution-local operational visibility.


# ============================================================
# 15. CONTINUITY AND LIFE-STABILITY SURFACE
# ============================================================

This surface covers
the effect of support on daily life continuity.

It should expose:

- life-stability posture
- continuity visibility
- unresolved support pressure
- improvement or decline signals
- correction urgency
- linked local dependency visibility

This surface bridges
service operation
and lived outcome visibility.


# ============================================================
# 16. FAMILY / CHILDCARE / EMPLOYMENT LINKAGE SURFACE
# ============================================================

Where applicable,
this surface covers
linked support domains.

It should expose:

- family-support posture
- childcare-support posture
- employment-support posture
- unstable linkage visibility
- handoff burden
- correction need

This surface may connect to
school,
residence,
government,
or employment systems,
but must preserve
support-local operational truth.


# ============================================================
# 17. AUTOMATION AND POLICY SURFACE
# ============================================================

Where community-support domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current support-operation posture
- access / case / continuity automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 18. KPI AND REPORT SURFACE
# ============================================================

Community-support KPI visibility is mandatory.

Typical KPI groups include:

- service continuity posture
- access posture
- staffing sufficiency
- case-load posture
- life-stability posture
- unmet-need posture
- support-balance posture
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 19. ISSUE AND ALERT SURFACE
# ============================================================

Community-support operation requires
explicit issue visibility.

Typical issue families include:

- access blockage
- staffing shortage
- case backlog
- unmet support need
- continuity concern
- unstable linkage with other support systems
- support imbalance
- urgent intervention trigger

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 20. INTERVENTION STRUCTURE
# ============================================================

Community-support intervention must be explicit.

Typical intervention families include:

- service reprioritization
- access correction
- staffing reassignment
- case escalation
- continuity-support correction
- childcare / family / employment linkage correction
- temporary operating-posture correction where supported
- linked government or residence routing

Intervention must connect
to visible support conditions.

Intervention must not feel like
editing hidden support variables only.


# ============================================================
# 21. COMMUNITY SUPPORT / GOVERNMENT / RESIDENCE / MEDICAL RELATION
# ============================================================

Community-support UI is related to
government,
residence,
school,
and medical systems,
but is not identical to them.

Community-support truth covers:

- local support continuity
- case and access handling
- life-stability assistance
- support-service outcome visibility

Government truth covers:

- public-service and authority process continuity

Residence truth covers:

- dwelling and daily living continuity

Medical truth covers:

- care delivery and health-sensitive operation

Community-support UI may link to those surfaces,
but support-service truth must remain primary
when community-support routing is selected.


# ============================================================
# 22. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
community-support UI-edited truths such as:

- service grouping
- access grouping
- case grouping
- staffing grouping
- continuity grouping
- issue grouping
- intervention target entities where needed

090.interface should define
community-support UI contracts such as:

- support summary exposure
- support-menu and service-scope surfaces
- access and eligibility visibility surfaces
- case and support-load surfaces
- staffing and operations surfaces
- continuity and life-stability surfaces
- linkage surfaces
- issue and intervention exposure contracts


# ============================================================
# 23. FINAL RULE
# ============================================================

Community and life support UI in Civilization must remain:

- support-service-truth aligned
- service-visible
- access-visible
- case-visible
- continuity-visible
- staffing-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from government-only or medical-only truth

Community-support UI must treat support institutions
as live life-continuity reality,
not only as support bookkeeping.
