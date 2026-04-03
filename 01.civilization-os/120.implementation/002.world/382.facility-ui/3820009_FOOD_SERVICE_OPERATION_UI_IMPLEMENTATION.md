# ============================================================
# FOOD SERVICE OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: food-service-operation-ui-implementation
component: food-service-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for food service operation UI
inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- FOOD_SERVICE_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Food service UI must implement:

- food_service_overview_screen
- food_service_manage_screen
- food_service_issue_screen
- food_service_history_screen
- food_service_permission_screen

Optional where supported:

- food_service_linked_screen
- food_service_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Food service overview must prioritize
service continuity and ingredient posture.

Initial priority:

1. facility identity
2. service type
3. operation posture
4. ingredient posture
5. hygiene warning summary
6. staffing or queue summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Food service manage must default to:

- summary_tab

Fallback order:

- menu_and_service_tab
- ingredient_and_stock_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. menu_and_service_tab
3. ingredient_and_stock_tab
4. kitchen_and_hygiene_tab
5. queue_and_customer_flow_tab
6. issue_tab
7. staffing_tab
8. automation_tab
9. kpi_tab
10. history_tab
11. permission_tab
12. linked_tab

Service and ingredient posture
must become visible early.


# ============================================================
# 6. MENU AND SERVICE TAB IMPLEMENTATION
# ============================================================

Menu and service tab must expose
offerings and service posture.

It should load:

- menu groups
- active service offerings
- unsupported area indicators
- service instability indicators
- reprioritization need
- demand pressure where supported

Menu changes should refresh:

- menu section
- overview service summary
- issue indicators when relevant


# ============================================================
# 7. INGREDIENT AND STOCK TAB IMPLEMENTATION
# ============================================================

Ingredient and stock tab is a high-priority surface.

It must expose:

- ingredient groups
- stock posture
- shortage indicators
- freshness posture where applicable
- spoilage indicators
- replenishment need

Ingredient changes should refresh:

- ingredient section
- overview ingredient summary
- issue indicators


# ============================================================
# 8. KITCHEN AND HYGIENE TAB IMPLEMENTATION
# ============================================================

Kitchen and hygiene tab must expose
food-safety and preparation posture.

It should load:

- kitchen readiness
- hygiene posture
- cleanliness posture
- contamination concern where supported
- correction urgency
- blocked operation indicators

Critical hygiene problems
must appear on overview as well.


# ============================================================
# 9. QUEUE AND CUSTOMER FLOW TAB IMPLEMENTATION
# ============================================================

Queue and customer flow tab must expose
frontline service burden.

It should load:

- queue posture
- waiting burden
- service speed posture
- bottleneck indicators
- overload indicators
- corrective need

Queue changes should refresh:

- queue section
- overview burden summary
- issue indicators


# ============================================================
# 10. STAFFING TAB IMPLEMENTATION
# ============================================================

Staffing tab must expose
service-operation staffing sufficiency.

It should load:

- role groups
- assigned staff counts
- coverage posture
- kitchen burden
- counter burden
- reassignment need

Staffing changes should refresh:

- staffing tab
- queue or hygiene posture when relevant
- issue indicators


# ============================================================
# 11. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Food service automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide
ingredient shortage,
hygiene risk,
or queue overload.


# ============================================================
# 12. ISSUE TAB IMPLEMENTATION
# ============================================================

Food service issue tab must centralize
service and food-safety problems.

Typical issue groups include:

- ingredient shortage
- spoilage risk
- hygiene concern
- staffing shortage
- queue overload
- service instability
- urgent intervention trigger

Issue handling must remain explicit
and severity-aware.


# ============================================================
# 13. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

kitchen_operator:
- ingredient visibility
- kitchen/hygiene visibility
- issue visibility
- limited history visibility

counter_operator:
- queue visibility
- limited menu visibility
- issue visibility
- summary visibility

Restrictions should preserve operational readability.


# ============================================================
# 14. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- retail
- market
- logistics
- community support
- health-related warning visibility where surfaced

Linked routing must preserve
source food-service orientation.


# ============================================================
# 15. FINAL RULE
# ============================================================

Food-service implementation must remain:

- service-visible
- ingredient-visible
- hygiene-visible
- queue-visible
- issue-visible
- summary-first
- clearly separable from retail or hospital-only truth
