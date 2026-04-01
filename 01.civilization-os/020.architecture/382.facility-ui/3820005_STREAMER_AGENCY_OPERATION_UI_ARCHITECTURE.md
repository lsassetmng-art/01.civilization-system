# ============================================================
# STREAMER AGENCY OPERATION UI ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: streamer-agency-operation-ui
component: streamer-agency-operation-ui

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical UI architecture
for streamer agency operation in Civilization.

This document covers the UI family
where streamer-agency company operation,
roster management,
Civilization-side announcement,
ordinary goods sales,
physical fulfillment,
and mirrored revenue observation dominate.

This document must align with:

- Civilization Facility UI Architecture
- Company Builder Architecture
- company site / tenant / premises architectures
- Streamer Agency Architecture
- Streamer Agency and Streaming Revenue Mirror Architecture
- Streamer Agency Product Review and Fulfillment Architecture
- Marketplace-related lower-layer documents

This document defines UI responsibility
and UI structure only.

This document does not redefine
StreamingOS source-of-truth objects,
stream-native event truth,
or lower commerce and fulfillment contracts.


# ============================================================
# 2. POSITION
# ============================================================

Streamer agency operation UI is the canonical UI family
for Civilization-side streamer agency structures.

Streamer agency belongs to Civilization company operation.

Streamer agency UI is used when the primary truth is:

- talent scouting
- roster administration
- agency-side support and management
- Civilization-side announcement operation
- ordinary goods sales coordination
- physical fulfillment coordination
- mirrored revenue intake observation

Streamer agency UI is not:

- a replacement for StreamingOS truth
- a replacement for streaming-native runtime objects
- a replacement for Marketplace canonical commerce contracts
- a replacement for fulfillment logistics truth

Those connect to this UI family,
but remain distinct sources of truth.


# ============================================================
# 3. NON-DUPLICATION RULE
# ============================================================

This document must define only:

- streamer-agency UI structure
- management and observation surface composition
- roster / goods / fulfillment / revenue-mirror UI responsibility
- relationship between company premises and agency operation surfaces
- overview, operation, auto, and intervention flow where supported

This document must not redefine:

- StreamingOS source-of-truth identities
- stream-native event objects
- revenue-mirror internals
- review workflow internals
- product catalog truth owned elsewhere
- fulfillment contract internals
- Marketplace transaction truth
- lower logistics truth

Those remain owned by
their existing architectures
and lower-layer documents.


# ============================================================
# 4. STREAMER AGENCY SERVICE TRUTH
# ============================================================

Streamer agency operation UI belongs to
the streamer_agency_and_creator_support family.

This family may include:

- streamer agency office operation
- agency roster operation
- scout and candidate review context
- announcement operation context
- ordinary goods sales coordination
- physical-product fulfillment coordination
- mirrored revenue observation context
- creator support company structures in Civilization
  where streamer agency truth dominates

Streamer agency UI must resolve from
canonical_ui_target
and company-operation truth,
not from branding alone.


# ============================================================
# 5. CORE GOAL
# ============================================================

Streamer agency UI must allow
the operator to understand and manage
a Civilization-side agency structure
without confusing it
with StreamingOS-native truth.

Streamer agency UI must expose:

- who belongs to the agency
- what scouting and roster state exists
- what announcements or promotions are active
- what ordinary goods are being handled
- what fulfillment state exists
- what mirrored revenue is visible
- what issues require intervention

Boundary clarity is mandatory.


# ============================================================
# 6. STREAMER AGENCY UI LIFECYCLE
# ============================================================

The canonical streamer agency UI lifecycle is:

company / premises setup
-> agency setup
-> roster initialization
-> scouting and intake operation
-> announcement and promotion setup
-> ordinary goods operation setup
-> physical fulfillment linkage
-> mirrored revenue observation
-> issue detection
-> intervention
-> continued agency operation

This lifecycle must preserve
Civilization-side company continuity.


# ============================================================
# 7. STREAMER AGENCY UI MODES
# ============================================================

Streamer agency UI supports
the following canonical modes.

- setup_mode
- operate_mode
- auto_mode where supported
- intervention_mode
- overview_mode
- owner_mode
- manager_mode
- scout_mode where appropriate
- fulfillment_mode where appropriate
- finance_observation_mode where appropriate

Fan-facing or public promotion surfaces
may connect to this family,
but are not the primary subject
of this operation UI architecture.


# ============================================================
# 8. STREAMER AGENCY COMMON SURFACES
# ============================================================

Streamer agency UI must inherit
the common facility UI frame
and must expose agency-specialized surfaces.

Canonical streamer-agency surfaces include:

- agency summary surface
- agency identity and premises surface
- roster surface
- scouting and intake surface
- support and assignment surface
- announcement and promotion surface
- ordinary goods and sales surface
- product review visibility surface
- fulfillment surface
- mirrored revenue surface
- automation and policy surface where supported
- KPI and report surface
- issue and alert surface
- history and event surface
- permission and role surface
- linked company / marketplace / logistics / streaming-boundary surface


# ============================================================
# 9. AGENCY SUMMARY SURFACE
# ============================================================

The agency summary surface must provide
fast understanding of current agency state.

This should expose visibility into:

- agency identity
- current roster size or posture
- active scouting or intake pressure
- active announcement or promotion state
- goods and fulfillment status
- mirrored revenue posture
- active issues
- current automation posture where supported
- recent intervention state

The summary surface is the default landing surface
for agency-management entry.


# ============================================================
# 10. AGENCY IDENTITY AND PREMISES SURFACE
# ============================================================

This surface defines
what the agency structure is
and where it operates.

It should expose:

- company identity
- agency branch identity where relevant
- premises context
- linked office / site / tenant context
- organizational posture
- operator / manager context
- public-facing presentation posture where relevant

This surface must keep
agency-company truth visible.


# ============================================================
# 11. ROSTER SURFACE
# ============================================================

The roster surface is central
to agency operation.

It should expose:

- active roster members
- roster grouping
- support status
- role or activity grouping where supported
- current agency-side management posture
- imbalance or overload signals
- roster-related issue visibility

This surface covers Civilization-side
agency roster administration.

It must not replace
StreamingOS-native identity truth.


# ============================================================
# 12. SCOUTING AND INTAKE SURFACE
# ============================================================

This surface covers
candidate and intake activity
from an agency-operation viewpoint.

It should expose:

- scouting posture
- candidate review visibility
- intake pressure
- pipeline stage visibility where supported
- staffing or support burden
- pending decision visibility

This is an agency management surface.

It does not redefine
candidate truth held elsewhere.


# ============================================================
# 13. SUPPORT AND ASSIGNMENT SURFACE
# ============================================================

Streamer agencies often provide
management-side support and assignment coordination.

This surface should expose:

- internal support posture
- assignment grouping where appropriate
- operational burden visibility
- coordination pressure
- unresolved support issues
- required management follow-up

This surface keeps agency operation visible
as an organizational function,
not only as a sales surface.


# ============================================================
# 14. ANNOUNCEMENT AND PROMOTION SURFACE
# ============================================================

This surface covers
Civilization-side announcement operation.

It should expose:

- current announcement state
- promotion scheduling posture
- pending communication tasks
- campaign grouping where supported
- announcement issue visibility
- agency-side promotion burden

This surface must preserve
the boundary that StreamingOS
remains source-of-truth
for streaming-native activity.


# ============================================================
# 15. ORDINARY GOODS AND SALES SURFACE
# ============================================================

Streamer agency may support
ordinary Marketplace-compatible goods sales
inside Civilization.

This surface should expose:

- goods grouping
- sales posture
- active goods visibility
- sales burden or demand signals
- linked issue visibility
- coordination state with review and fulfillment

This surface is not
the full commerce truth layer.

It is the agency operation surface
for ordinary goods handling.


# ============================================================
# 16. PRODUCT REVIEW VISIBILITY SURFACE
# ============================================================

Where review flow exists,
the UI must expose review visibility.

This surface should expose:

- pending review visibility
- review-blocked items
- ready-state visibility
- correction-needed visibility
- routing into responsible follow-up flows

This is a visibility and coordination surface.

It does not redefine
review workflow internals.


# ============================================================
# 17. FULFILLMENT SURFACE
# ============================================================

Physical fulfillment is a major agency concern
when ordinary goods are handled.

This surface should expose:

- fulfillment posture
- pending shipment visibility
- backlog signals
- issue or delay visibility
- logistics linkage visibility
- fulfillment intervention need

This is an agency-facing coordination surface.

It does not replace
logistics source-of-truth layers.


# ============================================================
# 18. MIRRORED REVENUE SURFACE
# ============================================================

Where StreamingOS revenue is mirrored
into Civilization-side agency accounting visibility,
the UI must expose a mirrored revenue surface.

This surface should expose:

- mirrored revenue visibility
- period grouping where supported
- trend visibility
- anomaly visibility
- missing or delayed mirror visibility where relevant
- agency-side interpretation posture

This is an observation surface.

It does not redefine
the mirror-generation internals.


# ============================================================
# 19. AUTOMATION AND POLICY SURFACE
# ============================================================

Where agency domains support
policy-driven or partially automated operation,
the UI must expose an automation surface.

This surface should clarify:

- what is automated
- what remains manual
- current posture for agency workflows
- escalation conditions
- recent automated actions of significance
- current warning or drift signals

Automation must remain visible
and reviewable.


# ============================================================
# 20. KPI AND REPORT SURFACE
# ============================================================

Streamer agency KPI visibility is mandatory.

Typical KPI groups include:

- roster stability posture
- scouting pressure
- support burden
- announcement throughput
- goods-handling posture
- fulfillment backlog or delay posture
- mirrored revenue movement
- intervention frequency

This document does not define
exact KPI formulas.

It defines the obligation
to expose KPI families clearly.


# ============================================================
# 21. ISSUE AND ALERT SURFACE
# ============================================================

Streamer agency operation requires
explicit issue visibility.

Typical issue families include:

- roster-management overload
- scouting backlog
- support failure or delay
- announcement blockage
- goods review blockage
- fulfillment delay
- mirrored revenue anomaly
- boundary inconsistency visibility

This surface is the canonical bridge
into intervention mode.


# ============================================================
# 22. INTERVENTION STRUCTURE
# ============================================================

Streamer agency intervention must be explicit.

Typical intervention families include:

- roster correction
- scouting reprioritization
- management burden correction
- announcement correction
- goods-handling correction
- fulfillment escalation
- mirror anomaly follow-up
- cross-system boundary routing

Intervention must connect
to visible agency conditions.

Intervention must not feel like
editing hidden cross-system values only.


# ============================================================
# 23. COMPANY PREMISES RELATION
# ============================================================

Streamer agency often exists
inside company premises structures.

Agency UI may connect to:

- site surfaces
- premises surfaces
- tenant surfaces
- shared office or branch surfaces

However,
premises truth must not replace
agency operation truth.

Agency UI remains
a distinct operation family.


# ============================================================
# 24. STREAMINGOS BOUNDARY RULE
# ============================================================

Boundary clarity is mandatory.

StreamingOS remains the source of truth
for streaming-native objects and behaviors.

Civilization streamer agency UI may observe,
mirror,
coordinate,
or route work,
but must not silently absorb
StreamingOS truth.

Any cross-system visibility
must remain explicitly labeled
as mirrored,
linked,
or externally sourced where appropriate.


# ============================================================
# 25. REQUIRED LOWER-LAYER FOLLOW-UP
# ============================================================

This architecture must be followed by
proper lower-layer documents.

030.model should define
streamer-agency UI-edited truths such as:

- agency roster grouping
- scouting grouping
- goods-handling grouping
- fulfillment issue grouping
- mirrored revenue observation grouping
- intervention target entities where needed

090.interface should define
streamer-agency UI contracts such as:

- agency summary exposure
- roster management surfaces
- scouting and intake surfaces
- announcement operation surfaces
- goods and review visibility surfaces
- fulfillment exposure contracts
- mirrored revenue exposure contracts
- issue and intervention exposure contracts


# ============================================================
# 26. FINAL RULE
# ============================================================

Streamer agency operation UI in Civilization must remain:

- company-operation aligned
- streamer-agency-truth aligned
- roster-visible
- support-visible
- goods-and-fulfillment-visible
- mirrored-revenue-visible
- intervention-capable
- boundary-clear with StreamingOS

Streamer agency UI must never blur
Civilization company truth
and StreamingOS source-of-truth objects.
