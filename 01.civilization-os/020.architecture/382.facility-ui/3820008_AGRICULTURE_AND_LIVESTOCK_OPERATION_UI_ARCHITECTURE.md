# ============================================================
# AGRICULTURE AND LIVESTOCK OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: agriculture-and-livestock-operation-ui
component: agriculture-and-livestock-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for agriculture, livestock,
and related primary-production facilities in Civilization.

This document covers the UI family
where cultivation, husbandry,
yield continuity,
and production-ground management truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- Agriculture and Livestock Detailed Configuration and Auto Operation Architecture
- Facility Type Master Architecture
- agriculture, livestock, production-ground,
  resource, staffing, and supply-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
yield formulas,
growth-cycle internals,
disease-response internals,
feed formulas,
fertilizer formulas,
or lower production-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Agriculture and livestock operation UI
is the canonical UI family
for production-ground-oriented facilities in Civilization.

This family applies when the primary truth is:

- crop production
- orchard operation
- greenhouse operation
- livestock operation
- dairy operation
- egg-production operation
- apiary operation
- fish-pond operation where farm truth dominates
- harvest and shipment continuity
- production-ground maintenance and sustainability

Agriculture UI is not identical to:

- retail store UI
- market hub UI
- manufacturing UI
- residence living-truth UI
- generic logistics UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- agriculture UI structure
- production-operation screen responsibility
- relation between setup, operation, auto, and intervention
- production-ground surface composition
- relation between agriculture truth and linked retail / logistics truth
- relation between agriculture truth and linked land / property truth

This document must not redefine:

- growth-cycle formulas
- crop-quality formulas
- livestock-health algorithms
- disease internals
- feed / fertilizer internals
- breeding internals
- harvest formulas
- lower production-record truth
- land-rights internals
- lower shipment-contract truth

Those remain owned by
existing agriculture architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. AGRICULTURE SERVICE TRUTH
# ============================================================

Agriculture and livestock operation UI belongs to
the agriculture_livestock_and_fishery family.

This family may include:

- farmland
- vegetable farm
- orchard
- greenhouse
- livestock farm
- dairy unit
- egg production unit
- apiary
- fish pond where farm truth dominates
- mixed agricultural grounds
- agriculture-linked support grounds where production truth dominates

Agriculture UI must resolve from
canonical_ui_target
and dominant production truth,
not from land shell alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Agriculture UI must allow
the operator to understand and manage
living production grounds
as part of the persistent Civilization world.

Agriculture UI must expose:

- what is being cultivated or raised
- how production space is allocated
- how labor is assigned
- how feed, fertilizer, water, and supplies are holding
- how yield or production continuity is behaving
- what disease, disaster, or shortage risks exist
- what shipment or self-consumption posture exists
- what intervention is required

Agriculture UI must not collapse
into abstract output bookkeeping only.


# ============================================================
# 6. AGRICULTURE UI LIFECYCLE
# ============================================================

The canonical agriculture UI lifecycle is:

post-placement setup
-> production-ground and operation setup
-> crop / livestock mix setup
-> resource and labor setup
-> harvest / output / shipment setup
-> ongoing agricultural operation
-> auto production operation where supported
-> observation
-> issue detection
-> intervention
-> continued agricultural operation

This lifecycle must support
Earth-like time flow
and seasonal or cyclical continuity where applicable.


# ============================================================
# 7. AGRICULTURE UI MODES
# ============================================================

Agriculture UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- worker_mode where appropriate
- inspection_mode where appropriate
- authority_mode where appropriate

Consumer-facing purchase surfaces
may connect to agriculture-linked systems,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. AGRICULTURE COMMON SURFACES
# ============================================================

Agriculture UI must inherit
the common facility UI frame
and must expose agriculture-specialized surfaces.

Canonical agriculture surfaces include:

- production summary surface
- operation identity and ground surface
- crop / livestock mix surface
- field / pen / zone allocation surface
- labor and staffing surface
- feed / fertilizer / water / supply surface
- harvest / output / shipment surface
- quality and health visibility surface
- equipment and maintenance surface where applicable
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and production event surface
- permission and role surface
- linked retail / logistics / property / support-facility surface


# ============================================================
# 9. PRODUCTION SUMMARY SURFACE
# ============================================================

The production summary surface must provide
fast understanding of current production state.

This should expose visibility into:

- operation type
- current crop or livestock posture
- labor sufficiency posture
- supply sufficiency posture
- health or risk posture
- expected output posture
- active issues
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for agriculture-management entry.


# ============================================================
# 10. OPERATION IDENTITY AND GROUND SURFACE
# ============================================================

This surface defines
what kind of production operation exists
and how the ground is organized.

It should expose:

- operation classification
- ground identity
- field / barn / pond / greenhouse context where relevant
- linked district or jurisdiction context
- ownership / management posture
- production-scope visibility

This surface must clarify
production truth clearly.


# ============================================================
# 11. CROP / LIVESTOCK MIX SURFACE
# ============================================================

This surface covers
what is being grown or raised.

It should expose:

- active crop grouping
- active livestock grouping
- mix balance
- seasonal or cyclical posture where applicable
- concentration or diversification signals
- unsupported or overburdened areas
- production-priority posture

This is a visibility and management surface.

It does not redefine
lower biological or production models.


# ============================================================
# 12. FIELD / PEN / ZONE ALLOCATION SURFACE
# ============================================================

This surface covers
space allocation for production.

It should expose:

- field allocation
- greenhouse allocation
- pen or livestock-area allocation
- pond allocation where relevant
- overcrowding or underuse
- ground suitability visibility
- mismatch between intended and actual use
- expansion or reallocation pressure

This is a live operational surface,
not a pure builder surface.


# ============================================================
# 13. LABOR AND STAFFING SURFACE
# ============================================================

This surface covers
human production capacity.

It should expose:

- labor sufficiency
- staffing allocation
- workload imbalance
- specialized labor needs where relevant
- peak burden visibility
- unstable or unsupported areas
- manual reassignment need

This surface may connect to
larger company or state staffing systems,
but must preserve
operation-local visibility.


# ============================================================
# 14. FEED / FERTILIZER / WATER / SUPPLY SURFACE
# ============================================================

This surface covers
resource continuity for production.

It should expose:

- feed posture where relevant
- fertilizer posture where relevant
- water posture where relevant
- critical supply sufficiency
- shortage risk
- replenishment need
- dependency visibility
- disruption risk

This surface is central
to production continuity.

It does not redefine
lower supply or formula truth.


# ============================================================
# 15. HARVEST / OUTPUT / SHIPMENT SURFACE
# ============================================================

This surface covers
what is being produced
and where it is going.

It should expose:

- expected output posture
- harvest timing visibility where applicable
- output accumulation
- shipment posture
- self-consumption versus sale posture where relevant
- backlog or spoilage pressure
- coordination need with logistics or retail

This surface is a production-operation surface,
not a full logistics truth layer.


# ============================================================
# 16. QUALITY AND HEALTH VISIBILITY SURFACE
# ============================================================

This surface covers
quality and biological stability.

It should expose:

- crop health posture
- livestock health posture
- product-quality signals
- disease concern visibility
- contamination or environmental concern visibility where supported
- intervention urgency
- quality degradation risk

This surface must remain explicit
and quickly readable.


# ============================================================
# 17. EQUIPMENT AND MAINTENANCE SURFACE
# ============================================================

Where applicable,
this surface covers
equipment continuity and maintenance burden.

It should expose:

- tool or equipment posture
- maintenance burden
- breakdown or degradation visibility
- operational continuity risk
- repair need
- linked infrastructure dependency visibility

This surface may connect to
construction or infrastructure systems,
but must preserve
production-local truth.


# ============================================================
# 18. AUTOMATION AND POLICY SURFACE
# ============================================================

Where agriculture domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current production posture
- labor / supply / harvest automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 19. KPI AND REPORT SURFACE
# ============================================================

Agriculture KPI visibility is mandatory.

Typical KPI groups include:

- production continuity posture
- labor sufficiency
- supply sufficiency
- health and disease posture
- output posture
- quality posture
- spoilage or loss posture where relevant
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 20. ISSUE AND ALERT SURFACE
# ============================================================

Agriculture operation requires
explicit issue visibility.

Typical issue families include:

- disease concern
- labor shortage
- feed / fertilizer / water shortage
- output disruption
- spoilage or loss pressure
- environmental suitability concern
- overcrowding or underuse
- shipment coordination concern

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 21. INTERVENTION STRUCTURE
# ============================================================

Agriculture intervention must be explicit.

Typical intervention families include:

- crop or livestock reprioritization
- labor reassignment
- supply escalation
- disease-response escalation
- harvest timing correction
- shipment correction
- partial shutdown or quarantine-like correction where supported
- reallocation of production space

Intervention must connect
to visible production conditions.

Intervention must not feel like
editing hidden yield variables only.


# ============================================================
# 22. AGRICULTURE / RETAIL / LOGISTICS RELATION
# ============================================================

Agriculture UI is related to
retail,
market,
and logistics systems,
but is not identical to them.

Agriculture truth covers:

- production continuity
- biological / cultivation operation
- output generation
- ground management

Retail truth covers:

- store operation
- assortment and shelf control
- customer-facing sale logic

Logistics truth covers:

- routing
- transfer
- transport and distribution continuity

Agriculture UI may link to those surfaces,
but production truth must remain primary
when agriculture routing is selected.


# ============================================================
# 23. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
agriculture UI-edited truths such as:

- production-ground grouping
- crop / livestock grouping
- labor grouping
- supply grouping
- quality and health grouping
- output grouping
- issue grouping
- intervention target entities where needed

090.interface should define
agriculture UI contracts such as:

- production summary exposure
- crop / livestock mix surfaces
- field / pen / zone allocation surfaces
- labor and staffing surfaces
- feed / fertilizer / water / supply surfaces
- harvest / output / shipment surfaces
- quality and health visibility surfaces
- issue and intervention exposure contracts


# ============================================================
# 24. FINAL RULE
# ============================================================

Agriculture and livestock operation UI in Civilization must remain:

- production-truth aligned
- space-visible
- labor-visible
- supply-visible
- output-visible
- health-visible
- issue-visible
- intervention-capable
- world-linked
- clearly separated from retail-only or logistics-only truth

Agriculture UI must treat production grounds
as living operational reality,
not only as output bookkeeping.
