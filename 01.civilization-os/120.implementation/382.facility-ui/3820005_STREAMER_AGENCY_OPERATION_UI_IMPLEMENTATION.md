# ============================================================
# STREAMER AGENCY OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: streamer-agency-operation-ui-implementation
component: streamer-agency-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for streamer agency operation UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- STREAMER_AGENCY_OPERATION_UI_ARCHITECTURE
- STREAMER_AGENCY_OPERATION_UI_INTERFACE

This document emphasizes
boundary-safe implementation
between Civilization-side agency truth
and externally linked Streaming-side truth.


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Streamer agency UI must implement:

- streamer_agency_overview_screen
- streamer_agency_manage_screen
- streamer_agency_issue_screen
- streamer_agency_history_screen
- streamer_agency_permission_screen

Optional where supported:

- streamer_agency_linked_screen
- streamer_agency_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Agency overview must prioritize
roster and operational burden visibility.

Initial priority:

1. agency identity
2. company context
3. active roster posture
4. current alert level
5. fulfillment warning summary
6. roster / support warning summary
7. mirrored revenue posture summary
8. KPI strip
9. recent issue summary

Overview must clearly distinguish
internal agency truth
from linked / mirrored external visibility.


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Agency manage must default to:

- summary_tab

Fallback order:

- roster_tab
- fulfillment_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading priority:

1. summary_tab
2. roster_tab
3. issue_tab
4. fulfillment_tab
5. scouting_tab
6. goods_tab
7. review_tab
8. mirrored_revenue_tab
9. announcement_tab
10. automation_tab
11. kpi_tab
12. history_tab
13. permission_tab
14. linked_tab

Roster, fulfillment, and issue visibility
must become available early.


# ============================================================
# 6. ROSTER TAB IMPLEMENTATION
# ============================================================

Roster tab must expose
agency-side roster management truth.

It should load:

- roster grouping
- active member count
- support load indicators
- instability indicators
- management burden indicators
- unresolved support indicators

Roster corrections should refresh:

- roster tab
- overview summary
- issue indicators


# ============================================================
# 7. SCOUTING TAB IMPLEMENTATION
# ============================================================

Scouting tab must expose
candidate intake posture.

It should load:

- candidate grouping
- scouting posture
- intake pressure
- pending decision posture
- support burden
- backlog indicators

Scouting actions must remain explicit.

They must not silently mutate
external or linked truth
without explicit route or confirmation.


# ============================================================
# 8. ANNOUNCEMENT TAB IMPLEMENTATION
# ============================================================

Announcement tab must expose
Civilization-side announcement operation.

It should load:

- campaign grouping
- schedule visibility
- blocked posture
- coordination burden
- correction need

Announcement behavior must preserve
boundary clarity with streaming-native systems.


# ============================================================
# 9. GOODS TAB IMPLEMENTATION
# ============================================================

Goods tab must expose
agency-side goods handling posture.

It should load:

- goods grouping
- sales posture
- active goods count
- demand signals
- coordination flags
- blocked flags

Goods edits must refresh:

- goods tab
- review visibility when relevant
- fulfillment posture when relevant


# ============================================================
# 10. REVIEW TAB IMPLEMENTATION
# ============================================================

Review tab is primarily a visibility surface.

It should expose:

- pending review count
- blocked review count
- correction-needed count
- ready-state count
- delay indicators
- routing need indicators

Review tab should link into follow-up flows,
but must not redefine review-truth internals.


# ============================================================
# 11. FULFILLMENT TAB IMPLEMENTATION
# ============================================================

Fulfillment tab is a high-priority operational surface.

It must expose:

- fulfillment posture
- pending shipment count
- backlog indicators
- delay indicators
- logistics dependency visibility
- intervention need

Fulfillment escalation must refresh:

- fulfillment tab
- overview warning summary
- issue indicators


# ============================================================
# 12. MIRRORED REVENUE TAB IMPLEMENTATION
# ============================================================

Mirrored revenue tab is an observation surface.

It must clearly indicate
that mirrored revenue visibility is:

- observed
- linked
- externally sourced where applicable

It should load:

- mirrored revenue posture
- period grouping
- trend posture
- anomaly indicators
- delayed mirror indicators

Mirrored revenue views must not present themselves
as the direct source-of-truth generator.


# ============================================================
# 13. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Agency automation must remain visible.

It should expose:

- automation enabled state
- active policy profile
- threshold summary
- recent automated changes
- warning / drift indicators

Automation must not blur
agency truth and linked external truth.


# ============================================================
# 14. ISSUE TAB IMPLEMENTATION
# ============================================================

Agency issue tab must centralize
cross-functional agency problems.

Typical issue groups include:

- roster management overload
- scouting backlog
- support failure or delay
- announcement blockage
- goods review blockage
- fulfillment delay
- mirrored revenue anomaly
- boundary inconsistency visibility

Issue handling must remain explicit
and boundary-safe.


# ============================================================
# 15. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

owner:
- all tabs visible
- selected escalation actions may be constrained

scout_operator:
- scouting visibility
- limited roster visibility
- issue visibility

fulfillment_operator:
- fulfillment visibility
- limited goods visibility
- issue visibility

finance_observer:
- mirrored revenue visibility
- summary visibility
- limited issue visibility

Boundary clarity should be preserved
for all roles.


# ============================================================
# 16. SEARCH ENTRY RULE
# ============================================================

Search entry should land on:

- streamer_agency_overview_screen

Matched context may highlight:

- agency identity
- roster match
- goods match
- issue match

Search must not deep-link by default
into fulfillment or mirrored revenue mutation surfaces.


# ============================================================
# 17. NOTIFICATION ENTRY RULE
# ============================================================

Notification entry may route to:

- overview by default
- issue screen when issue-rooted
- fulfillment tab when explicitly fulfillment-rooted and safe
- mirrored revenue tab when explicitly observer-rooted and safe

Notification-driven highlighting should remain explicit.


# ============================================================
# 18. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- company premises
- logistics
- marketplace-linked context
- external streaming-boundary visibility surfaces where surfaced

Opening linked context must preserve
source agency orientation.


# ============================================================
# 19. FINAL RULE
# ============================================================

Streamer agency implementation must remain:

- boundary-clear
- roster-visible
- fulfillment-visible
- issue-visible
- mirrored-revenue-observable
- summary-first
- explicitly separated from StreamingOS-native truth
