# ============================================================
# MILITARY BASE OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: military-base-operation-ui
component: military-base-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for military base,
defense-support,
deployment-support,
and military-readiness operation in Civilization.

This document covers the UI family
where force organization,
readiness posture,
equipment and supply continuity,
training posture,
and deployment-sensitive defense truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- military-base-related detailed configuration architectures
- Facility Type Master Architecture
- force, readiness, equipment, supply,
  training, deployment, and authority-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
combat logic,
engagement rules,
battle formulas,
command-law internals,
or lower force-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Military base operation UI
is the canonical UI family
for defense-oriented facilities in Civilization.

This family applies when the primary truth is:

- base readiness
- force organization
- equipment continuity
- military supply posture
- training continuity
- deployment support
- alert-state handling
- defense-support institutional continuity

Military UI is not identical to:

- security and judiciary UI
- generic government UI
- logistics-only UI
- residence or dormitory UI
- pure builder placement UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- military UI structure
- base-operation screen responsibility
- relation between setup, operation, auto, and intervention
- force / readiness / supply / training surface composition
- relation between military truth and linked logistics / government / security truth

This document must not redefine:

- combat-resolution internals
- operational battle algorithms
- engagement-rule internals
- command-chain law internals
- weapon-system internals
- lower force-record truth
- lower deployment-record truth
- lower defense-strategy internals

Those remain owned by
existing military architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. MILITARY SERVICE TRUTH
# ============================================================

Military base operation UI belongs to
the military_and_defense family.

This family may include:

- military base
- defense support facility
- deployment support facility
- training-oriented military facility
- logistics-support base where defense truth dominates
- strategic readiness facility
- military command-support facility
  where military-readiness truth dominates

Military UI must resolve from
canonical_ui_target
and dominant defense-service truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Military UI must allow
the operator or authority user
to understand and manage
a live defense institution
as part of the persistent Civilization world.

Military UI must expose:

- what force structure exists
- how readiness is behaving
- how training and support posture are holding
- how equipment and supply are behaving
- how alert or deployment posture is changing
- what capacity or burden issues are emerging
- what intervention is required

Military UI must not collapse
into abstract readiness bookkeeping only.


# ============================================================
# 6. MILITARY UI LIFECYCLE
# ============================================================

The canonical military UI lifecycle is:

post-placement setup
-> base and role setup
-> force and readiness setup
-> supply and equipment setup
-> training and deployment-support setup
-> ongoing military operation
-> auto military operation where supported
-> observation
-> issue detection
-> intervention
-> continued military operation

This lifecycle must support
persistent institutional continuity,
alert-sensitive operation,
and defense-readiness time flow.


# ============================================================
# 7. MILITARY UI MODES
# ============================================================

Military UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- authority_mode
- command_mode where appropriate
- readiness_mode where appropriate
- training_mode where appropriate
- supply_mode where appropriate
- deployment_mode where appropriate

Public-facing surfaces are not
the main subject
of this operation UI architecture.


# ============================================================
# 8. MILITARY COMMON SURFACES
# ============================================================

Military UI must inherit
the common facility UI frame
and must expose military-specialized surfaces.

Canonical military surfaces include:

- military summary surface
- base identity and defense-role surface
- force organization surface
- readiness and alert surface
- equipment and maintenance surface
- supply and support surface
- training and preparedness surface
- deployment-support surface
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and defense event surface
- permission and authority surface
- linked logistics / government / security / support-facility surface


# ============================================================
# 9. MILITARY SUMMARY SURFACE
# ============================================================

The military summary surface must provide
fast understanding of current defense state.

This should expose visibility into:

- base type
- current force posture
- readiness posture
- supply sufficiency posture
- training posture
- active issues
- active alerts
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for military-management entry.


# ============================================================
# 10. BASE IDENTITY AND DEFENSE-ROLE SURFACE
# ============================================================

This surface defines
what kind of defense institution exists
and what role it performs.

It should expose:

- base classification
- defense-role posture
- jurisdiction or strategic context
- operating organization context
- service-scope visibility
- special authority visibility where relevant
- linked defense identity

This surface must clarify
military-readiness truth clearly.


# ============================================================
# 11. FORCE ORGANIZATION SURFACE
# ============================================================

This surface covers
what force structure exists locally.

It should expose:

- force grouping
- role grouping where supported
- imbalance visibility
- unsupported force areas
- concentration or underuse signals
- reallocation pressure
- structure instability visibility

This is a visibility and management surface.

It does not redefine
lower force model internals.


# ============================================================
# 12. READINESS AND ALERT SURFACE
# ============================================================

This surface is central
to military truth.

It should expose:

- readiness posture
- alert posture
- degraded readiness visibility
- unstable readiness areas
- surge burden where relevant
- escalation urgency
- corrective need

This surface must remain explicit
and quickly readable.


# ============================================================
# 13. EQUIPMENT AND MAINTENANCE SURFACE
# ============================================================

This surface covers
core defense assets.

It should expose:

- equipment posture
- readiness of key assets
- degradation visibility
- maintenance burden
- repair backlog
- capability gap visibility
- manual reassignment or downtime need

This is a live operational surface,
not a pure asset register.


# ============================================================
# 14. SUPPLY AND SUPPORT SURFACE
# ============================================================

This surface covers
resource continuity for defense operation.

It should expose:

- supply sufficiency
- support posture
- shortage risk
- critical-resource visibility
- disruption risk
- dependency visibility
- escalation need

This surface is central
to military continuity.

It does not redefine
lower supply model truth.


# ============================================================
# 15. TRAINING AND PREPAREDNESS SURFACE
# ============================================================

This surface covers
non-combat readiness continuity.

It should expose:

- training posture
- preparedness burden
- unsupported training areas
- imbalance visibility
- readiness-improvement need
- correction urgency

This surface keeps
preparedness reality visible.


# ============================================================
# 16. DEPLOYMENT-SUPPORT SURFACE
# ============================================================

Where relevant,
this surface covers
deployment and support posture.

It should expose:

- deployment-support posture
- movement-readiness visibility
- support burden
- handoff or staging visibility
- instability signals
- linked logistics dependency visibility

This surface bridges
base reality
and wider defense movement.


# ============================================================
# 17. AUTOMATION AND POLICY SURFACE
# ============================================================

Where military domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current defense-operation posture
- readiness / support / training automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 18. KPI AND REPORT SURFACE
# ============================================================

Military KPI visibility is mandatory.

Typical KPI groups include:

- readiness posture
- force sufficiency
- supply sufficiency
- training posture
- equipment continuity
- alert posture
- support burden
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 19. ISSUE AND ALERT SURFACE
# ============================================================

Military operation requires
explicit issue visibility.

Typical issue families include:

- degraded readiness
- supply shortage
- equipment degradation
- training shortfall
- alert instability
- support burden concern
- linked logistics concern
- urgent intervention trigger

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 20. INTERVENTION STRUCTURE
# ============================================================

Military intervention must be explicit.

Typical intervention families include:

- readiness reprioritization
- force reassignment
- supply escalation
- equipment maintenance escalation
- training correction
- alert-posture correction
- deployment-support correction
- temporary operating-posture correction where supported

Intervention must connect
to visible defense conditions.

Intervention must not feel like
editing hidden battle variables only.


# ============================================================
# 21. MILITARY / SECURITY / LOGISTICS RELATION
# ============================================================

Military UI is related to
security,
government,
and logistics systems,
but is not identical to them.

Military truth covers:

- defense readiness
- force organization
- supply and support continuity
- alert and deployment-sensitive operation

Security truth covers:

- enforcement continuity
- incident and justice handling

Logistics truth covers:

- movement and transfer continuity
- routing and node behavior

Military UI may link to those surfaces,
but defense-readiness truth must remain primary
when military routing is selected.


# ============================================================
# 22. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
military UI-edited truths such as:

- force grouping
- readiness grouping
- equipment grouping
- supply grouping
- training grouping
- issue grouping
- intervention target entities where needed

090.interface should define
military UI contracts such as:

- military summary exposure
- force organization surfaces
- readiness and alert surfaces
- equipment and maintenance surfaces
- supply and support surfaces
- training and preparedness surfaces
- deployment-support surfaces
- issue and intervention exposure contracts


# ============================================================
# 23. FINAL RULE
# ============================================================

Military base operation UI in Civilization must remain:

- defense-readiness-truth aligned
- force-visible
- readiness-visible
- supply-visible
- equipment-visible
- training-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from security-only or logistics-only truth

Military UI must treat military bases
as live defense-readiness reality,
not only as readiness bookkeeping.
