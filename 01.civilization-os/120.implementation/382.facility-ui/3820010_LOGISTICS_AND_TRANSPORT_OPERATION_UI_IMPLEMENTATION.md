# ============================================================
# LOGISTICS AND TRANSPORT OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: logistics-and-transport-operation-ui-implementation
component: logistics-and-transport-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for logistics and transport operation UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- LOGISTICS_AND_TRANSPORT_OPERATION_UI_ARCHITECTURE
- LOGISTICS_AND_TRANSPORT_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Logistics UI must implement:

- logistics_overview_screen
- logistics_manage_screen
- logistics_issue_screen
- logistics_history_screen
- logistics_permission_screen

Optional where supported:

- logistics_linked_screen
- logistics_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Logistics overview must prioritize
route continuity and delay visibility.

Initial priority:

1. node identity
2. service role
3. route posture
4. capacity posture
5. delay warning summary
6. disruption summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Logistics manage must default to:

- summary_tab

Fallback order:

- route_and_service_tab
- reliability_and_delay_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. route_and_service_tab
3. reliability_and_delay_tab
4. capacity_tab
5. storage_and_transfer_tab
6. issue_tab
7. incident_and_disruption_tab
8. staffing_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab

Route continuity and delay posture
must become visible early.


# ============================================================
# 6. ROUTE AND SERVICE TAB IMPLEMENTATION
# ============================================================

Route and service tab must expose
active route posture.

It should load:

- route groups
- service priority posture
- overload indicators
- underuse indicators
- instability indicators
- reconfiguration pressure

Route reprioritization must be explicit
and should refresh related summary indicators.


# ============================================================
# 7. STORAGE AND TRANSFER TAB IMPLEMENTATION
# ============================================================

Storage and transfer tab must expose
handoff burden and backlog posture.

It should load:

- storage or transfer groups
- load posture
- backlog indicators
- dwell pressure
- handoff stability
- bottleneck indicators

Transfer corrections should refresh:

- storage/transfer tab
- overview delay/disruption summaries where affected
- issue indicators


# ============================================================
# 8. CAPACITY TAB IMPLEMENTATION
# ============================================================

Capacity tab must expose
logistics capacity sufficiency.

It should load:

- capacity groups
- capacity values
- utilization posture
- equipment sufficiency
- readiness indicators
- reassignment need

Capacity changes should refresh:

- capacity section
- overview capacity summary
- issue indicators


# ============================================================
# 9. STAFFING TAB IMPLEMENTATION
# ============================================================

Staffing tab must expose
movement-support staffing sufficiency.

It should load:

- role groups
- assigned staff counts
- coverage posture
- dispatch burden
- handling burden
- reassignment need

Staffing changes should refresh:

- staffing tab
- overview burden summaries
- issue indicators


# ============================================================
# 10. RELIABILITY AND DELAY TAB IMPLEMENTATION
# ============================================================

Reliability and delay tab is a high-priority surface.

It must expose:

- delay posture
- reliability posture
- bottleneck concentration
- disruption spread
- unstable service visibility
- corrective urgency

Delay-driven warnings must appear
on overview when significant.


# ============================================================
# 11. INCIDENT AND DISRUPTION TAB IMPLEMENTATION
# ============================================================

Incident and disruption tab must expose
acute operational instability.

It should load:

- incident groups
- severity posture
- affected service count
- spread risk
- emergency routing need
- manual override need

Incident response actions must be explicit
and should preserve readable status updates.


# ============================================================
# 12. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Logistics automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide disruption posture
or route instability.


# ============================================================
# 13. ISSUE TAB IMPLEMENTATION
# ============================================================

Logistics issue tab must centralize
route and transfer problems.

Typical issue groups include:

- route instability
- delay concentration
- storage backlog
- transfer bottleneck
- staffing shortage
- handling shortage
- disruption cascade concern

Issue handling must remain explicit
and severity-aware.


# ============================================================
# 14. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

dispatch_operator:
- route and service visibility
- reliability and delay visibility
- incident visibility
- issue visibility

transfer_operator:
- storage and transfer visibility
- limited capacity visibility
- issue visibility

authority:
- summary visibility
- incident and disruption visibility
- issue visibility
- limited permission visibility

Restrictions should preserve operational readability.


# ============================================================
# 15. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- linked manufacturing
- linked retail
- linked infrastructure
- linked military or security support where applicable
- linked marketplace supply context

Linked routing must preserve
source logistics orientation.


# ============================================================
# 16. FINAL RULE
# ============================================================

Logistics implementation must remain:

- route-visible
- delay-visible
- disruption-visible
- capacity-visible
- issue-visible
- summary-first
- clearly separable from manufacturing or infrastructure truth
