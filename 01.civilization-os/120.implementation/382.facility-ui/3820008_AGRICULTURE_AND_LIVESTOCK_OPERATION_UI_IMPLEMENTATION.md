# ============================================================
# AGRICULTURE AND LIVESTOCK OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: agriculture-and-livestock-operation-ui-implementation
component: agriculture-and-livestock-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for agriculture and livestock operation UI
inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- AGRICULTURE_AND_LIVESTOCK_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Agriculture and livestock UI must implement:

- agriculture_overview_screen
- agriculture_manage_screen
- agriculture_issue_screen
- agriculture_history_screen
- agriculture_permission_screen

Optional where supported:

- agriculture_linked_screen
- agriculture_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Agriculture overview must prioritize
yield posture and resource sufficiency.

Initial priority:

1. farm identity
2. production type
3. crop or livestock posture
4. resource posture
5. risk warning summary
6. output summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Agriculture manage must default to:

- summary_tab

Fallback order:

- production_tab
- land_and_resource_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. production_tab
3. land_and_resource_tab
4. seasonal_and_climate_tab
5. storage_and_output_tab
6. issue_tab
7. staffing_tab
8. automation_tab
9. kpi_tab
10. history_tab
11. permission_tab
12. linked_tab

Production and resource posture
must become visible early.


# ============================================================
# 6. PRODUCTION TAB IMPLEMENTATION
# ============================================================

Production tab must expose
crop or livestock production posture.

It should load:

- production groups
- current output posture
- yield indicators
- growth or health posture where applicable
- unsupported area indicators
- reconfiguration pressure

Production changes should refresh:

- production section
- overview output summary
- issue indicators when relevant


# ============================================================
# 7. LAND AND RESOURCE TAB IMPLEMENTATION
# ============================================================

Land and resource tab is a high-priority surface.

It must expose:

- land allocation posture
- water posture
- feed or input posture where applicable
- soil or resource burden where applicable
- shortage indicators
- correction need

Resource changes should refresh:

- land/resource section
- overview risk summary
- issue indicators


# ============================================================
# 8. SEASONAL AND CLIMATE TAB IMPLEMENTATION
# ============================================================

Seasonal and climate tab must expose
season-linked production risk.

It should load:

- season posture
- climate stress posture
- weather-linked burden where supported
- instability indicators
- mitigation posture
- correction urgency

Critical season or climate stress
must appear on overview as well.


# ============================================================
# 9. STORAGE AND OUTPUT TAB IMPLEMENTATION
# ============================================================

Storage and output tab must expose
post-production continuity.

It should load:

- storage posture
- spoilage risk where applicable
- output availability
- reserve posture
- transfer burden
- linkage to market or logistics where supported

Storage changes should refresh:

- storage section
- output summary
- issue indicators


# ============================================================
# 10. STAFFING TAB IMPLEMENTATION
# ============================================================

Staffing tab must expose
farm-operation staffing sufficiency.

It should load:

- role groups
- assigned staff counts
- workload posture
- seasonal burden
- support gap indicators
- reassignment need

Staffing changes should refresh:

- staffing tab
- production posture when relevant
- issue indicators


# ============================================================
# 11. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Agriculture automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide
production decline,
resource shortage,
or climate stress.


# ============================================================
# 12. ISSUE TAB IMPLEMENTATION
# ============================================================

Agriculture issue tab must centralize
production and resource problems.

Typical issue groups include:

- yield decline
- resource shortage
- climate stress
- storage loss
- livestock health concern where applicable
- staffing shortage
- output instability

Issue handling must remain explicit
and severity-aware.


# ============================================================
# 13. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

farm_operator:
- production visibility
- resource visibility
- issue visibility
- limited history visibility

support_operator:
- staffing visibility
- storage visibility
- issue visibility
- summary visibility

Restrictions should preserve operational readability.


# ============================================================
# 14. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- market
- logistics
- community support
- infrastructure / utility
- famine / food-risk visibility where surfaced

Linked routing must preserve
source agriculture orientation.


# ============================================================
# 15. FINAL RULE
# ============================================================

Agriculture and livestock implementation must remain:

- production-visible
- resource-visible
- season-visible
- storage-visible
- issue-visible
- summary-first
- clearly separable from market or famine-only truth
