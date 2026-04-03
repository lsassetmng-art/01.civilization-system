# ============================================================
# SCHOOL OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: school-operation-ui
component: school-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for school and education-facility operation in Civilization.

This document covers the UI family
where education truth dominates.

This document must align with:

- Civilization Facility UI Architecture
- School Detailed Configuration and Auto Operation Architecture
- Housing and dormitory-related architectures where linked
- Facility Type Master Architecture
- education-related lower-layer model and interface documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
curriculum truth,
academic-cycle truth,
enrollment rule internals,
evaluation formulas,
or lower educational policy truth.


# ============================================================
# 2. POSITION
# ============================================================

School operation UI is the canonical UI family
for education-oriented facilities in Civilization.

This family applies when the primary truth is:

- education delivery
- student enrollment and progression
- teacher and staff allocation
- academic operation
- school safety and discipline
- campus and school-life coordination
- dormitory linkage where school truth dominates

School UI is not identical to:

- residence living-truth UI
- public training-only UI
- pure building placement UI
- generic administration UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- school UI structure
- school-operation screen responsibility
- relation between overview, operation, auto, and intervention
- school-specific surface composition
- relation between school truth and linked dormitory truth
- relation between school truth and linked public / civic functions

This document must not redefine:

- detailed curriculum internals
- exact academic scheduling formulas
- enrollment-rule algorithms
- grading formulas
- examination internals
- tuition formulas
- educational-rights policy internals
- lower student-record truth

Those remain owned by
existing school architectures,
education model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. SCHOOL SERVICE TRUTH
# ============================================================

School operation UI belongs to
the education_and_school family.

This family may include:

- public school
- private school
- university
- vocational school
- technical school
- commercial-support school
- business school
- finance academy
- large education complex
- boarding-school context where education truth dominates

School UI must resolve from
canonical_ui_target
and dominant service truth,
not from building appearance alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

School UI must allow
the operator to understand and manage
a living education institution
as part of the persistent Civilization world.

School UI must expose:

- who is being educated
- what programs are being delivered
- how teachers and staff are allocated
- what campus or facility capacity exists
- how student progression is behaving
- what safety or discipline issues are emerging
- what school-life support is required
- what intervention is needed

School UI must not collapse
into an abstract education ledger only.


# ============================================================
# 6. SCHOOL UI LIFECYCLE
# ============================================================

The canonical school UI lifecycle is:

post-placement setup
-> school identity and scope setup
-> enrollment and intake setup
-> academic and staffing setup
-> campus / facility / dormitory linkage setup where applicable
-> ongoing school operation
-> auto academic operation where supported
-> observation
-> issue detection
-> intervention
-> continued school operation

This lifecycle must support
Earth-like time flow
and long-lived institutional continuity.


# ============================================================
# 7. SCHOOL UI MODES
# ============================================================

School UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- teacher_mode where appropriate
- student_support_mode where appropriate
- authority_mode where appropriate
- public_information_mode where appropriate

Student-facing experience surfaces
may connect to school systems,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. SCHOOL COMMON SURFACES
# ============================================================

School UI must inherit
the common facility UI frame
and must expose school-specialized surfaces.

Canonical school surfaces include:

- school summary surface
- school identity and institution surface
- enrollment and student body surface
- program / course / curriculum visibility surface
- teacher and staff allocation surface
- campus / classroom / facility capacity surface
- dormitory and student-life linkage surface where applicable
- tuition / fee visibility surface where appropriate
- safety, discipline, and welfare surface
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and academic event surface
- permission and role surface
- linked residence / training / civic / support-facility surface


# ============================================================
# 9. SCHOOL SUMMARY SURFACE
# ============================================================

The school summary surface must provide
fast understanding of current institutional state.

This should expose visibility into:

- school type
- current enrollment posture
- staff sufficiency posture
- facility capacity posture
- active school-life issues
- academic-operation posture
- active alerts
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for school-management entry.


# ============================================================
# 10. SCHOOL IDENTITY AND INSTITUTION SURFACE
# ============================================================

This surface defines
what the school is
and what kind of institution it operates as.

It should expose:

- school classification
- institutional identity
- public / private / company / special posture where relevant
- linked district or jurisdiction context
- linked campus identity
- operating organization context
- education-scope visibility

This surface must clarify
education truth clearly.


# ============================================================
# 11. ENROLLMENT AND STUDENT BODY SURFACE
# ============================================================

This surface covers
who the school is serving.

It should expose:

- enrollment posture
- intake state
- student grouping where supported
- capacity pressure
- progression-stage grouping where supported
- support-needing student visibility where relevant
- imbalance or overload signals

This is a school-operation surface.

It must not replace
lower student-record truth.


# ============================================================
# 12. PROGRAM / COURSE / CURRICULUM VISIBILITY SURFACE
# ============================================================

This surface covers
what educational structure is active.

It should expose:

- active programs
- course grouping
- curriculum visibility
- specialization posture
- program-balance signals
- overburdened or under-supported areas
- academic focus posture

This is a visibility and management surface.

It does not redefine
curriculum or academic model internals.


# ============================================================
# 13. TEACHER AND STAFF ALLOCATION SURFACE
# ============================================================

This surface covers
human educational capacity.

It should expose:

- teacher allocation posture
- staff sufficiency
- role coverage
- overloaded areas
- support burden
- unfilled or unstable areas
- manual reassignment need

This surface may connect to
larger company or state staffing systems,
but must preserve
school-local operational visibility.


# ============================================================
# 14. CAMPUS / CLASSROOM / FACILITY CAPACITY SURFACE
# ============================================================

This surface covers
space and facility readiness
for education delivery.

It should expose:

- campus capacity
- classroom / facility allocation where supported
- overcrowding or underuse
- facility condition impact on education
- special-room or specialized-facility pressure where relevant
- linked dormitory or ancillary facility visibility where applicable

This is not a pure builder surface.

It is a live operational capacity surface.


# ============================================================
# 15. DORMITORY AND STUDENT-LIFE LINKAGE SURFACE
# ============================================================

Where school life includes boarding
or strong school-life support,
the UI must expose
a school-side dormitory and student-life linkage surface.

This surface should expose:

- dormitory linkage posture
- student-life support burden
- assignment visibility where appropriate
- school-life continuity concerns
- linked residence or support issue visibility
- escalation need for non-academic student-life concerns

This surface does not replace
residence-family truth.

It provides school-side operational visibility.


# ============================================================
# 16. TUITION / FEE VISIBILITY SURFACE
# ============================================================

Where relevant,
school operation UI should expose
money-related institutional visibility.

This surface may include:

- tuition posture
- fee visibility
- support or subsidy visibility where relevant
- non-payment or burden risk visibility where supported
- program-cost pressure visibility

This document does not define
fee formulas.

It defines the UI responsibility
to expose institutional money posture where needed.


# ============================================================
# 17. SAFETY, DISCIPLINE, AND WELFARE SURFACE
# ============================================================

This surface is central
to school operation.

It should expose:

- safety posture
- discipline concerns
- student welfare concerns
- incident visibility
- support burden
- escalation routes
- school-life stability signals

This surface may connect to
medical,
community-support,
or civic systems,
but must preserve
school-side operational truth.


# ============================================================
# 18. AUTOMATION AND POLICY SURFACE
# ============================================================

Where school domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current academic-operation posture
- staffing / scheduling / support automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 19. KPI AND REPORT SURFACE
# ============================================================

School KPI visibility is mandatory.

Typical KPI groups include:

- enrollment posture
- capacity sufficiency
- staff sufficiency
- program balance
- student progression posture
- welfare and discipline issue posture
- campus burden
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 20. ISSUE AND ALERT SURFACE
# ============================================================

School operation requires
explicit issue visibility.

Typical issue families include:

- overcapacity or undercapacity
- teacher shortage
- student-life support overload
- discipline issue
- safety concern
- dormitory-linked issue where relevant
- academic-operation instability
- facility-capacity mismatch

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 21. INTERVENTION STRUCTURE
# ============================================================

School intervention must be explicit.

Typical intervention families include:

- intake correction
- program reprioritization
- teacher or staff reassignment
- capacity correction
- student-life support escalation
- safety or discipline response
- dormitory or support-service linkage correction
- partial suspension or operating posture correction where supported

Intervention must connect
to visible school conditions.

Intervention must not feel like
editing hidden academic variables only.


# ============================================================
# 22. SCHOOL / RESIDENCE / TRAINING RELATION
# ============================================================

School UI is related to
residence,
training,
and civic support,
but is not identical to them.

School truth covers:

- education delivery
- student body operation
- academic continuity
- school-life institutional management

Residence truth covers:

- daily living continuity

Training truth covers:

- training-program-focused operation
- professional development emphasis
- completion and employment linkage

School UI may link to those surfaces,
but education truth must remain primary
when school routing is selected.


# ============================================================
# 23. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
school UI-edited truths such as:

- student-body grouping
- program grouping
- staff allocation grouping
- campus capacity grouping
- school-life support grouping
- issue grouping
- intervention target entities where needed

090.interface should define
school UI contracts such as:

- school summary exposure
- enrollment and student-body surfaces
- program / curriculum visibility surfaces
- teacher and staff allocation surfaces
- campus / facility-capacity surfaces
- dormitory-linkage surfaces
- safety / discipline / welfare surfaces
- issue and intervention exposure contracts


# ============================================================
# 24. FINAL RULE
# ============================================================

School operation UI in Civilization must remain:

- education-truth aligned
- enrollment-visible
- staffing-visible
- capacity-visible
- student-life-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from pure residence or training truth

School UI must treat school operation
as living institutional continuity,
not only as academic bookkeeping.
