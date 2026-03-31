# ============================================================
# INFRASTRUCTURE AND UTILITY UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: infrastructure-and-utility-ui-implementation
component: infrastructure-and-utility-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for infrastructure and utility UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- INFRASTRUCTURE_AND_UTILITY_UI_ARCHITECTURE
- INFRASTRUCTURE_AND_UTILITY_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Infrastructure UI must implement:

- infrastructure_overview_screen
- infrastructure_manage_screen
- infrastructure_issue_screen
- infrastructure_history_screen
- infrastructure_permission_screen

Optional where supported:

- infrastructure_linked_screen
- infrastructure_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Infrastructure overview must prioritize
coverage and outage posture.

Initial priority:

1. utility identity
2. service role
3. coverage posture
4. supply posture
5. outage warning summary
6. dependency warning summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Infrastructure manage must default to:

- summary_tab

Fallback order:

- coverage_and_region_tab
- supply_and_capacity_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. coverage_and_region_tab
3. supply_and_capacity_tab
4. outage_and_restoration_tab
5. dependency_and_linkage_tab
6. maintenance_and_condition_tab
7. issue_tab
8. staffing_and_control_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab

Coverage, supply, and outage posture
must become visible early.


# ============================================================
# 6. COVERAGE AND REGION TAB IMPLEMENTATION
# ============================================================

Coverage and region tab must expose
service-area posture.

It should load:

- region groups
- coverage posture
- uncovered indicators
- overextended indicators
- imbalance indicators
- priority-region indicators

Coverage corrections should refresh:

- coverage section
- overview coverage summary
- issue indicators


# ============================================================
# 7. SUPPLY AND CAPACITY TAB IMPLEMENTATION
# ============================================================

Supply and capacity tab is a high-priority surface.

It must expose:

- supply groups
- capacity values
- supply posture
- overload indicators
- bottleneck indicators
- correction need

Supply changes should refresh:

- supply section
- overview supply summary
- issue indicators


# ============================================================
# 8. DEPENDENCY AND LINKAGE TAB IMPLEMENTATION
# ============================================================

Dependency and linkage tab must expose
critical linked-service posture.

It should load:

- dependency groups
- linked-facility visibility
- critical dependency indicators
- cascading risk
- unstable link indicators
- correction urgency

Critical dependencies must remain explicit
and must not hide behind generic summary only.


# ============================================================
# 9. MAINTENANCE AND CONDITION TAB IMPLEMENTATION
# ============================================================

Maintenance and condition tab must expose
repair burden and degradation posture.

It should load:

- maintenance groups
- maintenance burden
- repair backlog
- degradation indicators
- interruption risk
- restoration need

Maintenance changes should refresh:

- maintenance tab
- outage posture when relevant
- issue indicators


# ============================================================
# 10. OUTAGE AND RESTORATION TAB IMPLEMENTATION
# ============================================================

Outage and restoration tab must remain explicit.

It should load:

- outage groups
- outage posture
- restoration progress
- affected-region count
- emergency correction indicators
- recovery burden

Critical outage conditions must appear
on overview as well.


# ============================================================
# 11. STAFFING AND CONTROL TAB IMPLEMENTATION
# ============================================================

Staffing and control tab must expose
utility-operation staffing sufficiency.

It should load:

- role groups
- assigned staff counts
- coverage posture
- control burden
- maintenance burden
- reassignment need

Staffing changes should refresh:

- staffing tab
- overview outage or control summaries when relevant
- issue indicators


# ============================================================
# 12. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Infrastructure automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide outages,
dependency risk,
or supply instability.


# ============================================================
# 13. ISSUE TAB IMPLEMENTATION
# ============================================================

Infrastructure issue tab must centralize
utility-service instability.

Typical issue groups include:

- coverage gap
- supply instability
- outage concentration
- dependency concern
- maintenance overload
- staffing shortage
- restoration delay

Issue handling must remain explicit
and severity-aware.


# ============================================================
# 14. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

control_operator:
- supply visibility
- limited dependency visibility
- outage visibility
- issue visibility

maintenance_operator:
- maintenance visibility
- limited outage visibility
- issue visibility
- limited history visibility

authority:
- all tabs visible
- permission-sensitive actions visible by role

Restrictions should preserve operational readability.


# ============================================================
# 15. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- logistics
- manufacturing
- company premises
- military or security support where applicable
- district or city service context

Linked routing must preserve
source infrastructure orientation.


# ============================================================
# 16. FINAL RULE
# ============================================================

Infrastructure implementation must remain:

- coverage-visible
- supply-visible
- outage-visible
- dependency-visible
- issue-visible
- summary-first
- clearly separable from logistics or manufacturing-only truth
