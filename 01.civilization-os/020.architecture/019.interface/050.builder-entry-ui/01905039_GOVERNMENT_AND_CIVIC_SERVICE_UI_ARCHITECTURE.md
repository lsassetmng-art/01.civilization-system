# ============================================================
# GOVERNMENT AND CIVIC SERVICE UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: government-and-civic-service-ui
component: government-and-civic-service-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for government, administrative,
public-counter,
and civic-service operation in Civilization.

This document covers the UI family
where public service delivery,
administrative process continuity,
civic communication,
and authority-managed service truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- government / administration / civic-service-related architectures
- Facility Type Master Architecture
- public-service, queue, document,
  staffing, notice, and authority-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
administrative-law internals,
approval-law internals,
document-validity internals,
public-rights policy internals,
or lower service-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Government and civic service UI
is the canonical UI family
for public-facing and authority-operated facilities in Civilization.

This family applies when the primary truth is:

- public service delivery
- administrative process handling
- public counter operation
- civic notice and information distribution
- document and case progress visibility
- staffing and queue continuity
- authority-controlled service execution
- institutional transparency where permitted

Government UI is not identical to:

- generic company office UI
- finance UI
- security / judiciary UI
- residence UI
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- government UI structure
- civic-service screen responsibility
- relation between setup, operation, auto, and intervention
- counter / process / notice / authority surface composition
- relation between government truth and linked civic, welfare, or authority truth

This document must not redefine:

- legal process internals
- document-validation internals
- approval-routing internals
- exact case-processing algorithms
- identity or rights verification internals
- lower public-service record truth
- lower authority-rule internals

Those remain owned by
existing government architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. GOVERNMENT SERVICE TRUTH
# ============================================================

Government and civic service UI belongs to
the government_and_civic_service family.

This family may include:

- government service facility
- administrative office
- public employment counter
- public documentation center
- civic notice board
- public information center
- administrative plaza function
- local service center
- civic support counter
  where public-service truth dominates

Government UI must resolve from
canonical_ui_target
and dominant civic-service truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Government UI must allow
the operator to understand and manage
a live public-service institution
as part of the persistent Civilization world.

Government UI must expose:

- what public services are being delivered
- how counters or service channels are operating
- how cases, requests, or documents are progressing
- how staffing and queue load are behaving
- what notices or public information are active
- what service delays or authority issues are emerging
- what interventions are required

Government UI must not collapse
into abstract case bookkeeping only.


# ============================================================
# 6. GOVERNMENT UI LIFECYCLE
# ============================================================

The canonical government UI lifecycle is:

post-placement setup
-> institution and service-scope setup
-> counter / process / staffing setup
-> notice and public-information setup
-> ongoing civic-service operation
-> auto service operation where supported
-> observation
-> issue detection
-> intervention
-> continued government operation

This lifecycle must support
persistent institutional continuity
and public-service time flow.


# ============================================================
# 7. GOVERNMENT UI MODES
# ============================================================

Government UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- authority_mode
- manager_mode
- counter_mode where appropriate
- document_mode where appropriate
- public_information_mode where appropriate
- public_access_mode where appropriate

Public self-service or resident-facing surfaces
may connect to civic systems,
but are not the only subject
of this operation UI architecture.


# ============================================================
# 8. GOVERNMENT COMMON SURFACES
# ============================================================

Government UI must inherit
the common facility UI frame
and must expose government-specialized surfaces.

Canonical government surfaces include:

- government summary surface
- institution identity and authority surface
- service menu and service-scope surface
- counter and queue surface
- case / request / process visibility surface
- document and notice surface
- staffing and operations surface
- public-information and exposure surface
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and civic event surface
- permission and authority surface
- linked welfare / residence / security / support-facility surface


# ============================================================
# 9. GOVERNMENT SUMMARY SURFACE
# ============================================================

The government summary surface must provide
fast understanding of current civic-service state.

This should expose visibility into:

- institution type
- active service posture
- staffing sufficiency posture
- queue or process-load posture
- notice or information posture
- active service issues
- active alerts
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for government-management entry.


# ============================================================
# 10. INSTITUTION IDENTITY AND AUTHORITY SURFACE
# ============================================================

This surface defines
what public institution exists
and under what authority it operates.

It should expose:

- institution classification
- authority posture
- jurisdiction context
- operating organization context
- service-scope visibility
- linked public-service identity
- special authority visibility where relevant

This surface must clarify
public-service truth clearly.


# ============================================================
# 11. SERVICE MENU AND SERVICE-SCOPE SURFACE
# ============================================================

This surface covers
what services are being provided.

It should expose:

- active service grouping
- service-scope posture
- overloaded or underused services
- service-priority visibility
- unsupported areas
- service-coverage imbalance
- reconfiguration pressure

This is a visibility and management surface.

It does not redefine
lower service-policy internals.


# ============================================================
# 12. COUNTER AND QUEUE SURFACE
# ============================================================

This surface covers
public-facing service throughput.

It should expose:

- counter posture
- queue posture
- waiting-load visibility
- throughput sufficiency
- overcapacity or underuse
- service bottleneck visibility
- manual support need

This is a live operational surface,
not a pure staffing list.


# ============================================================
# 13. CASE / REQUEST / PROCESS VISIBILITY SURFACE
# ============================================================

This surface covers
how civic-service work is progressing.

It should expose:

- request posture
- case progression visibility
- process backlog
- blocked or delayed cases
- unstable process areas
- escalation need
- service-completion posture

This surface is central
to public-service continuity.

It does not redefine
lower case model truth.


# ============================================================
# 14. DOCUMENT AND NOTICE SURFACE
# ============================================================

This surface covers
public documents and civic notice exposure.

It should expose:

- active documents visibility
- notice posture
- public-information status
- outdated or blocked information visibility
- publication or circulation burden
- correction need visibility

This surface must distinguish
public-facing notice truth
from internal authority-only process truth.


# ============================================================
# 15. STAFFING AND OPERATIONS SURFACE
# ============================================================

This surface covers
human public-service capacity.

It should expose:

- staffing sufficiency
- role coverage
- queue-handling burden
- process burden
- unsupported service areas
- shift imbalance where relevant
- manual reassignment need

This surface may connect to
larger government staffing systems,
but must preserve
institution-local operational visibility.


# ============================================================
# 16. PUBLIC-INFORMATION AND EXPOSURE SURFACE
# ============================================================

This surface covers
how the institution communicates outward.

It should expose:

- public-information posture
- information clarity
- current exposed notices
- missing or outdated public information
- access-channel visibility
- need for public correction or clarification

This surface supports
civic transparency where permitted.


# ============================================================
# 17. AUTOMATION AND POLICY SURFACE
# ============================================================

Where government domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current service-operation posture
- queue / process / notice automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 18. KPI AND REPORT SURFACE
# ============================================================

Government KPI visibility is mandatory.

Typical KPI groups include:

- service continuity posture
- staffing sufficiency
- queue posture
- process completion posture
- backlog posture
- public-information quality posture
- service-coverage balance
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 19. ISSUE AND ALERT SURFACE
# ============================================================

Government operation requires
explicit issue visibility.

Typical issue families include:

- service backlog
- queue overload
- staffing shortage
- blocked process
- outdated or missing notice
- authority-handling inconsistency visibility
- service-coverage concern
- escalation delay

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 20. INTERVENTION STRUCTURE
# ============================================================

Government intervention must be explicit.

Typical intervention families include:

- service reprioritization
- counter reallocation
- staffing reassignment
- queue correction
- process escalation
- public-notice correction
- temporary operating-posture correction where supported
- linked civic-support routing

Intervention must connect
to visible civic-service conditions.

Intervention must not feel like
editing hidden process variables only.


# ============================================================
# 21. GOVERNMENT / SECURITY / WELFARE RELATION
# ============================================================

Government UI is related to
security,
judiciary,
welfare,
and civic-support systems,
but is not identical to them.

Government truth covers:

- public service delivery
- administrative continuity
- queue and process handling
- civic communication

Security and judiciary truth cover:

- enforcement
- incident handling
- custody or legal authority execution

Welfare truth covers:

- life-support continuity
- non-administrative support operation

Government UI may link to those surfaces,
but civic-service truth must remain primary
when government routing is selected.


# ============================================================
# 22. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
government UI-edited truths such as:

- service grouping
- queue grouping
- process grouping
- document / notice grouping
- staffing grouping
- issue grouping
- intervention target entities where needed

090.interface should define
government UI contracts such as:

- government summary exposure
- service menu and scope surfaces
- counter and queue surfaces
- case / request / process visibility surfaces
- document and notice surfaces
- public-information exposure surfaces
- issue and intervention exposure contracts


# ============================================================
# 23. FINAL RULE
# ============================================================

Government and civic service UI in Civilization must remain:

- public-service-truth aligned
- service-visible
- queue-visible
- process-visible
- notice-visible
- staffing-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from security-only or company-office truth

Government UI must treat civic institutions
as live public-service reality,
not only as case bookkeeping.
