# ============================================================
# FOOD SERVICE OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: food-service-operation-ui
component: food-service-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for food-service operation in Civilization.

This document covers the UI family
where menu delivery,
ingredient handling,
service throughput,
and dining operation truth dominate.

This document must align with:

- Civilization Facility UI Architecture
- food-service-related detailed configuration architectures
- Facility Type Master Architecture
- food-service, ingredient, staffing,
  hygiene, and delivery-linked lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
menu-cost formulas,
recipe internals,
kitchen-process internals,
food-safety formulas,
or lower order-record truth.


# ============================================================
# 2. POSITION
# ============================================================

Food service operation UI
is the canonical UI family
for dining and meal-service facilities in Civilization.

This family applies when the primary truth is:

- restaurant operation
- cafe operation
- cafeteria operation
- food hall unit operation
- street-food operation
- meal-service operation
- kitchen and service-flow coordination
- dining-capacity and service-throughput control
- food-quality and hygiene continuity

Food-service UI is not identical to:

- retail store UI
- market hub UI
- agriculture UI
- lodging UI
- generic event-venue UI

Those may connect,
but they are not the same truth category.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- food-service UI structure
- dining-operation screen responsibility
- relation between setup, operation, auto, and intervention
- menu / kitchen / service surface composition
- relation between food-service truth and linked retail / agriculture / delivery truth

This document must not redefine:

- recipe formulas
- ingredient-cost formulas
- kitchen-process internals
- hygiene-regulation internals
- service-time formulas
- order-record internals
- lower pricing formulas
- lower staffing algorithms

Those remain owned by
existing food-service architectures,
model documents,
policy documents,
runtime documents,
and lower interface layers.


# ============================================================
# 4. FOOD SERVICE TRUTH
# ============================================================

Food service operation UI belongs to
the food_service family.

This family may include:

- restaurant
- cafe
- cafeteria
- food hall unit
- meal-service operation
- delivery-linked dining facility
- street-food facility
- other dining-oriented facilities
  where food-service truth dominates

Food-service UI must resolve from
canonical_ui_target
and dominant service truth,
not from shell appearance alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Food-service UI must allow
the operator to understand and manage
a live dining operation
as part of the persistent Civilization world.

Food-service UI must expose:

- what is being served
- how menu structure is configured
- how ingredients are holding
- how kitchen and floor staffing are allocated
- how seating and throughput are behaving
- what hygiene and safety risks exist
- what delay, shortage, or service issues are emerging
- what intervention is required

Food-service UI must not collapse
into abstract sales bookkeeping only.


# ============================================================
# 6. FOOD SERVICE UI LIFECYCLE
# ============================================================

The canonical food-service UI lifecycle is:

post-placement setup
-> service identity and menu setup
-> ingredient and kitchen setup
-> staffing and seating setup
-> pricing and service setup
-> ongoing food-service operation
-> auto operation where supported
-> observation
-> issue detection
-> intervention
-> continued dining operation

This lifecycle must support
time-of-day continuity,
daily service rhythm,
and persistent world operation.


# ============================================================
# 7. FOOD SERVICE UI MODES
# ============================================================

Food-service UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode where appropriate
- manager_mode
- kitchen_mode where appropriate
- floor_service_mode where appropriate
- inspection_mode where appropriate
- authority_mode where appropriate

Customer-facing ordering surfaces
may connect to dining systems,
but are not the main subject
of this operation UI architecture.


# ============================================================
# 8. FOOD SERVICE COMMON SURFACES
# ============================================================

Food-service UI must inherit
the common facility UI frame
and must expose food-service-specialized surfaces.

Canonical food-service surfaces include:

- service summary surface
- operation identity and dining concept surface
- menu and offering surface
- ingredient and stock surface
- kitchen workflow surface
- seating and throughput surface
- staffing and shift surface
- pricing and fee visibility surface
- hygiene, sanitation, and safety surface
- delivery / takeout linkage surface where applicable
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and service event surface
- permission and role surface
- linked retail / agriculture / logistics / event-facility surface


# ============================================================
# 9. SERVICE SUMMARY SURFACE
# ============================================================

The service summary surface must provide
fast understanding of current dining state.

This should expose visibility into:

- facility type
- current menu / service posture
- ingredient sufficiency posture
- staffing sufficiency posture
- seating or throughput posture
- hygiene posture
- active issues
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for food-service-management entry.


# ============================================================
# 10. OPERATION IDENTITY AND DINING CONCEPT SURFACE
# ============================================================

This surface defines
what kind of dining operation exists.

It should expose:

- service classification
- dining concept posture
- public / private / company / special posture where relevant
- linked district or jurisdiction context
- operating organization context
- service-scope visibility

This surface must clarify
food-service truth clearly.


# ============================================================
# 11. MENU AND OFFERING SURFACE
# ============================================================

This surface covers
what the facility is serving.

It should expose:

- active menu grouping
- offering breadth
- service-time or meal-period posture where applicable
- category balance
- unavailable or unsupported offerings
- demand pressure visibility
- menu-priority posture

This is a visibility and management surface.

It does not redefine
lower recipe or menu model internals.


# ============================================================
# 12. INGREDIENT AND STOCK SURFACE
# ============================================================

This surface covers
core ingredient continuity.

It should expose:

- ingredient sufficiency
- shortage risk
- freshness posture where supported
- spoilage risk
- replenishment need
- dependency visibility
- critical-item risk

This surface is central
to dining continuity.

It does not redefine
lower stock or formula truth.


# ============================================================
# 13. KITCHEN WORKFLOW SURFACE
# ============================================================

This surface covers
internal preparation flow.

It should expose:

- kitchen workload posture
- bottleneck visibility
- prep burden
- unsupported or overloaded areas
- service-delay signals
- reassignment need
- operational instability visibility

This surface is a live operational surface,
not a pure staff list or builder surface.


# ============================================================
# 14. SEATING AND THROUGHPUT SURFACE
# ============================================================

This surface covers
dining-capacity usage.

It should expose:

- seating posture where applicable
- queue or wait posture where supported
- throughput sufficiency
- overcapacity or underuse
- floor-turnover pressure where relevant
- timing imbalance
- need for operating correction

This surface keeps
customer-flow reality visible.


# ============================================================
# 15. STAFFING AND SHIFT SURFACE
# ============================================================

This surface covers
human service capacity.

It should expose:

- kitchen staffing posture
- floor-service staffing posture
- role coverage
- shift imbalance
- peak burden visibility
- unstable or unsupported areas
- manual reassignment need

This surface may connect to
larger staffing systems,
but must preserve
facility-local operational visibility.


# ============================================================
# 16. PRICING AND FEE VISIBILITY SURFACE
# ============================================================

This surface covers
operator-visible money posture.

It should expose:

- pricing posture
- fee visibility where relevant
- demand or margin pressure visibility
- category-level pricing signals
- correction need visibility

This document does not define
pricing formulas.

It defines the UI responsibility
to expose food-service money posture clearly.


# ============================================================
# 17. HYGIENE, SANITATION, AND SAFETY SURFACE
# ============================================================

This surface is central
to food-service operation.

It should expose:

- hygiene posture
- sanitation burden
- contamination or cleanliness concern visibility where supported
- inspection concern visibility
- urgent corrective burden
- safety escalation state

This surface must remain explicit
and quickly readable.


# ============================================================
# 18. DELIVERY / TAKEOUT LINKAGE SURFACE
# ============================================================

Where applicable,
the UI must expose
delivery and takeout linkage.

This surface should expose:

- delivery posture
- takeout posture
- service split visibility
- backlog or delay visibility
- packaging / dispatch burden where supported
- linked logistics or pickup dependency visibility

This is a coordination surface.

It does not replace
full logistics source-of-truth layers.


# ============================================================
# 19. AUTOMATION AND POLICY SURFACE
# ============================================================

Where food-service domains support
detailed configuration and auto operation,
the UI must expose
an automation and policy surface.

This surface should clarify:

- what is automated
- what remains manual
- current service posture
- menu / stock / staffing automation posture where supported
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 20. KPI AND REPORT SURFACE
# ============================================================

Food-service KPI visibility is mandatory.

Typical KPI groups include:

- service continuity posture
- ingredient sufficiency
- staffing sufficiency
- seating / throughput posture
- hygiene and safety posture
- delay or backlog posture
- spoilage posture where relevant
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 21. ISSUE AND ALERT SURFACE
# ============================================================

Food-service operation requires
explicit issue visibility.

Typical issue families include:

- ingredient shortage
- staffing shortage
- kitchen bottleneck
- seating or throughput overload
- hygiene concern
- spoilage concern
- delivery / takeout coordination concern
- service instability

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 22. INTERVENTION STRUCTURE
# ============================================================

Food-service intervention must be explicit.

Typical intervention families include:

- menu reprioritization
- staffing reassignment
- ingredient escalation
- service-flow correction
- seating / throughput correction
- hygiene-response escalation
- delivery / takeout correction
- temporary operating-posture correction where supported

Intervention must connect
to visible dining conditions.

Intervention must not feel like
editing hidden service variables only.


# ============================================================
# 23. FOOD SERVICE / RETAIL / AGRICULTURE RELATION
# ============================================================

Food-service UI is related to
retail,
agriculture,
and logistics systems,
but is not identical to them.

Food-service truth covers:

- menu delivery
- kitchen and floor operation
- dining throughput
- hygiene and service continuity

Retail truth covers:

- store operation
- assortment and shelf control
- consumer retail sale logic

Agriculture truth covers:

- cultivation or husbandry
- production-ground management
- output generation

Food-service UI may link to those surfaces,
but dining-operation truth must remain primary
when food-service routing is selected.


# ============================================================
# 24. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
food-service UI-edited truths such as:

- menu grouping
- ingredient grouping
- kitchen workflow grouping
- seating / throughput grouping
- staffing grouping
- hygiene grouping
- issue grouping
- intervention target entities where needed

090.interface should define
food-service UI contracts such as:

- service summary exposure
- menu and offering surfaces
- ingredient and stock surfaces
- kitchen workflow surfaces
- seating and throughput surfaces
- staffing and shift surfaces
- hygiene / sanitation / safety surfaces
- delivery / takeout linkage surfaces
- issue and intervention exposure contracts


# ============================================================
# 25. FINAL RULE
# ============================================================

Food-service operation UI in Civilization must remain:

- dining-operation-truth aligned
- menu-visible
- stock-visible
- kitchen-visible
- staffing-visible
- throughput-visible
- hygiene-visible
- issue-visible
- intervention-capable
- world-linked

Food-service UI must treat dining operation
as live service reality,
not only as sales bookkeeping.
