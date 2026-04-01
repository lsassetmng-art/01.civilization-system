# ============================================================
# MANUFACTURING OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: manufacturing-operation-ui
component: manufacturing-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for manufacturing and production-facility operation in Civilization.

This document covers the UI family
where process flow, line continuity,
input transformation,
machine operation,
and output-quality truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- manufacturing-related detailed configuration architectures
- Facility Type Master Architecture
- line, machine, input, quality,
  staffing, maintenance, and output-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
production formulas,
machine-control internals,
quality formulas,
maintenance formulas,
or lower work-order truth.


# ============================================================
# 2. POSITION
# ============================================================

Manufacturing operation UI
is the canonical UI family
for transformation-oriented facilities in Civilization.

This family applies when the primary truth is:

- production-line operation
- material input transformation
- line balancing
- machine and equipment continuity
- quality control
- staffing of production processes
- maintenance burden
- output readiness and shipment linkage

Manufacturing UI is not identical to:

- logistics UI
- retail UI
- agriculture UI
- pure infrastructure-control UI
- generic company premises UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- manufacturing UI structure
- production-operation screen responsibility
- relation between setup, operation, auto, and intervention
- line / machine / input / output surface composition
- relation between manufacturing truth and linked logistics truth
- relation between manufacturing truth and linked maintenance or infrastructure truth

This document must not redefine:

- process formulas
- machine-control internals
- production-planning formulas
- quality-evaluation internals
- maintenance algorithms
- lower work-order truth
- lower inventory-truth internals
- lower shipment-contract truth

Those remain owned by
existing manufacturing architectures,
model documents,
runtime documents,
policy documents,
and lower interface layers.


# ============================================================
# 4. MANUFACTURING SERVICE TRUTH
# ============================================================

Manufacturing operation UI belongs to
the manufacturing_and_industry family.

This family may include:

- factory
- processing line facility
- assembly line facility
- industrial production facility
- multi-line manufacturing site
- warehouse-linked production facility
- specialized transformation facility
  where production-process truth dominates

Manufacturing UI must resolve from
canonical_ui_target
and dominant process truth,
not from building shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Manufacturing UI must allow
the operator to understand and manage
a live production system
as part of the persistent Civilization world.

Manufacturing UI must expose:

- what is being produced
- how lines and processes are configured
- how input materials are holding
- how machines and equipment are behaving
- how staffing is allocated
- how quality and defect risk are behaving
- how maintenance and downtime risk are emerging
- what intervention is required

Manufacturing UI must not collapse
into abstract output bookkeeping only.


# ============================================================
# 6. MANUFACTURING UI LIFECYCLE
# ============================================================

The canonical manufacturing UI lifecycle is:

post-placement setup
-> facility and line setup
-> input and process setup
-> staffing and machine setup
-> quality and output setup
-> ongoing manufacturing operation
-> auto production operation where supported
-> observation
-> issue detection
-> intervention
-> continued manufacturing operation

This lifecycle must support
time-based continuity,
process stability,
and persistent world production.


# ============================================================
# 7. MANUFACTURING UI MODES
# ============================================================

Manufacturing UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- line_mode where appropriate
- maintenance_mode where appropriate
- quality_mode where appropriate
- authority_mode where appropriate

Customer-facing sales surfaces
may connect to manufacturing-linked systems,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. MANUFACTURING COMMON SURFACES
# ============================================================

Manufacturing UI must inherit
the common facility UI frame
and must expose manufacturing-specialized surfaces.

Canonical manufacturing surfaces include:

- manufacturing summary surface
- facility identity and production-role surface
- line and process surface
- input-material surface
- machine and equipment surface
- staffing and shift surface
- quality and defect visibility surface
- maintenance and downtime surface
- output and shipment-linkage surface
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and production event surface
- permission and role surface
- linked logistics / supply / infrastructure / company surface


# ============================================================
# 9. MANUFACTURING SUMMARY SURFACE
# ============================================================

The manufacturing summary surface must provide
fast understanding of current production state.

This should expose visibility into:

- facility or line type
- current production posture
- input sufficiency posture
- machine continuity posture
- staffing sufficiency posture
- quality posture
- active issues
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for manufacturing-management entry.


# ============================================================
# 10. FACILITY IDENTITY AND PRODUCTION-ROLE SURFACE
# ============================================================

This surface defines
what kind of production operation exists.

It should expose:

- production classification
- line or facility role
- district or jurisdiction context
- operating organization context
- product-scope visibility
- linked network or site identity where relevant

This surface must clarify
production-process truth clearly.


# ============================================================
# 11. LINE AND PROCESS SURFACE
# ============================================================

This surface covers
how production is structured.

It should expose:

- active lines
- process grouping
- line priority posture
- overloaded or underused lines
- process imbalance visibility
- unsupported or unstable process areas
- reconfiguration pressure

This is a visibility and management surface.

It does not redefine
lower process model internals.


# ============================================================
# 12. INPUT-MATERIAL SURFACE
# ============================================================

This surface covers
production inputs.

It should expose:

- input-material sufficiency
- shortage risk
- replenishment need
- dependency visibility
- critical-input posture
- unstable input areas
- production-interruption risk

This surface is central
to production continuity.

It does not redefine
lower inventory or supply truth.


# ============================================================
# 13. MACHINE AND EQUIPMENT SURFACE
# ============================================================

This surface covers
core production assets.

It should expose:

- machine posture
- equipment readiness
- allocation imbalance
- degradation visibility
- operational strain
- breakdown risk
- manual reassignment or shutdown need

This is a live operational surface,
not a pure asset register.


# ============================================================
# 14. STAFFING AND SHIFT SURFACE
# ============================================================

This surface covers
human production capacity.

It should expose:

- staffing sufficiency
- role coverage
- shift imbalance
- overloaded areas
- unsupported process areas
- skill-mismatch visibility where relevant
- manual reassignment need

This surface may connect to
larger staffing systems,
but must preserve
facility-local operational visibility.


# ============================================================
# 15. QUALITY AND DEFECT VISIBILITY SURFACE
# ============================================================

This surface is central
to manufacturing truth.

It should expose:

- quality posture
- defect risk
- unstable output visibility
- process-quality mismatch signals
- corrective urgency
- quality degradation trend visibility
- rework burden where supported

This surface must remain explicit
and quickly readable.


# ============================================================
# 16. MAINTENANCE AND DOWNTIME SURFACE
# ============================================================

This surface covers
continuity risk from machine condition.

It should expose:

- maintenance burden
- downtime posture
- repair backlog
- urgent maintenance risk
- line interruption visibility
- linked infrastructure dependency visibility
- escalation need

This surface may connect to
construction or infrastructure systems,
but must preserve
production-local truth.


# ============================================================
# 17. OUTPUT AND SHIPMENT-LINKAGE SURFACE
# ============================================================

This surface covers
what is leaving the production system.

It should expose:

- output posture
- completion visibility
- backlog visibility
- shipment-readiness posture
- coordination need with logistics
- storage pressure where relevant
- output instability visibility

This is a production-operation surface.

It does not replace
full logistics source-of-truth layers.


# ============================================================
# 18. AUTOMATION AND POLICY SURFACE
# ============================================================

Where manufacturing domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current production posture
- line / machine / staffing automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 19. KPI AND REPORT SURFACE
# ============================================================

Manufacturing KPI visibility is mandatory.

Typical KPI groups include:

- production continuity posture
- line utilization posture
- input sufficiency
- machine continuity
- staffing sufficiency
- quality posture
- downtime posture
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 20. ISSUE AND ALERT SURFACE
# ============================================================

Manufacturing operation requires
explicit issue visibility.

Typical issue families include:

- input shortage
- line instability
- machine degradation
- breakdown concern
- staffing shortage
- quality degradation
- downtime concentration
- shipment-linkage concern

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 21. INTERVENTION STRUCTURE
# ============================================================

Manufacturing intervention must be explicit.

Typical intervention families include:

- line reprioritization
- process correction
- staffing reassignment
- maintenance escalation
- input escalation
- quality correction
- temporary shutdown or slowdown where supported
- output and shipment correction

Intervention must connect
to visible production conditions.

Intervention must not feel like
editing hidden process variables only.


# ============================================================
# 22. MANUFACTURING / LOGISTICS / INFRASTRUCTURE RELATION
# ============================================================

Manufacturing UI is related to
logistics,
infrastructure,
and supply systems,
but is not identical to them.

Manufacturing truth covers:

- transformation of inputs to outputs
- line and machine behavior
- quality and continuity of process
- local production reality

Logistics truth covers:

- movement and transfer continuity
- route and node behavior
- shipment and storage beyond the line

Infrastructure truth covers:

- regional utility or base-system continuity

Manufacturing UI may link to those surfaces,
but production-process truth must remain primary
when manufacturing routing is selected.


# ============================================================
# 23. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
manufacturing UI-edited truths such as:

- line grouping
- process grouping
- input grouping
- machine grouping
- staffing grouping
- quality grouping
- issue grouping
- intervention target entities where needed

090.interface should define
manufacturing UI contracts such as:

- manufacturing summary exposure
- line and process surfaces
- input-material surfaces
- machine and equipment surfaces
- staffing and shift surfaces
- quality and defect visibility surfaces
- maintenance and downtime surfaces
- output and shipment-linkage surfaces
- issue and intervention exposure contracts


# ============================================================
# 24. FINAL RULE
# ============================================================

Manufacturing operation UI in Civilization must remain:

- production-process-truth aligned
- line-visible
- input-visible
- machine-visible
- staffing-visible
- quality-visible
- downtime-visible
- issue-visible
- intervention-capable
- world-linked

Manufacturing UI must treat production facilities
as live operational reality,
not only as output bookkeeping.
