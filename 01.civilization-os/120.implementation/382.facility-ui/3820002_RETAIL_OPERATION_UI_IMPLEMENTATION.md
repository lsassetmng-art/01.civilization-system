# ============================================================
# RETAIL OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: retail-operation-ui-implementation
component: retail-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for retail operation UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- RETAIL_OPERATION_UI_ARCHITECTURE
- RETAIL_OPERATION_UI_INTERFACE

This document defines:

- retail screen implementation behavior
- retail tab loading order
- retail action execution order
- issue handling behavior
- staffing and stock visibility behavior
- automation visibility behavior


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Retail UI must implement:

- retail_overview_screen
- retail_manage_screen
- retail_issue_screen
- retail_history_screen
- retail_permission_screen

Optional where supported:

- retail_linked_screen
- retail_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Retail overview must load
summary-critical data first.

Initial priority:

1. facility identity
2. open_status
3. current_alert_level
4. stock warning summary
5. staffing warning summary
6. KPI strip
7. recent issue summary
8. recent history summary

Overview must become usable
before all secondary detail sections complete,
if summary-critical data is available.


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Retail manage must default to:

- summary_tab

If summary_tab is unavailable for any reason,
fallback order is:

- merchandise_tab
- inventory_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Retail tab loading should follow
the following operational priority.

1. summary_tab
2. inventory_tab
3. issue_tab
4. merchandise_tab
5. shelf_tab
6. ordering_tab
7. pricing_tab
8. staffing_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab

Inventory and issue visibility
must become available early,
because retail operation depends on:

- stock health
- shortage visibility
- immediate issue recognition


# ============================================================
# 6. SUMMARY TAB IMPLEMENTATION
# ============================================================

Summary tab must expose
the current store posture at a glance.

It must include:

- store identity
- operator context
- open status
- current alert level
- stock posture
- staffing posture
- current shortage risk
- recent issue posture

Summary must support fast route entry into:

- inventory
- shelf
- ordering
- issue


# ============================================================
# 7. MERCHANDISE TAB IMPLEMENTATION
# ============================================================

Merchandise tab must implement
category-group visibility.

It should load:

- category groups
- active item counts
- shortage risk indicators
- sales priority indicators
- unsupported category flags

Merchandise edits must be explicit.

Category reprioritization must not auto-save
without explicit save action
where editable forms are used.


# ============================================================
# 8. SHELF TAB IMPLEMENTATION
# ============================================================

Shelf tab must implement
display-section visibility and shelf assignment review.

It should expose:

- section name
- assigned category
- display priority
- stock health
- dead space visibility
- cleanliness visibility where supported

Shelf editor entry should preserve:

- selected shelf section
- source tab context

Shelf corrections should locally refresh:

- shelf section
- summary warning strip when relevant
- issue count when relevant


# ============================================================
# 9. ORDERING TAB IMPLEMENTATION
# ============================================================

Ordering tab must expose
supplier and replenishment posture.

It should load:

- supplier grouping
- reorder posture
- lead time visibility
- shortage risk
- emergency restock visibility

Emergency restock action must require
explicit confirmation.

Ordering actions that affect stock posture
should refresh:

- ordering section
- inventory section indicators where shared
- overview stock warning summary


# ============================================================
# 10. INVENTORY TAB IMPLEMENTATION
# ============================================================

Inventory tab is a high-priority operational surface.

It must expose:

- category group
- stock level
- freshness state where applicable
- overstock
- shortage
- spoilage risk where applicable

Inventory data should refresh quickly
after actions such as:

- emergency restock
- manual inventory correction
- category reprioritization
- supply issue resolution

Inventory issue visibility must remain explicit.


# ============================================================
# 11. PRICING TAB IMPLEMENTATION
# ============================================================

Pricing tab must expose
pricing posture and correction routes.

It should implement:

- category pricing posture
- discount posture
- margin pressure visibility
- temporary price correction entry

Price correction must not silently apply.

High-impact pricing changes should require:

- explicit save
- explicit confirm where policy requires


# ============================================================
# 12. STAFFING TAB IMPLEMENTATION
# ============================================================

Staffing tab must expose
store-local staffing sufficiency.

It should load:

- role groups
- current staff count
- coverage state
- rush pressure
- reassignment need

Staff reassignment should refresh:

- staffing section
- summary staffing posture
- issue indicators when shortage is resolved or worsened


# ============================================================
# 13. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Retail automation tab must remain visible.

It must expose:

- automation enabled state
- active policy profile
- automation confidence or visibility state
- drift warning
- intervention threshold summary

Pause and resume automation
must be explicit user actions.

Automation state changes should be reflected in:

- automation tab
- overview summary
- history visibility


# ============================================================
# 14. KPI TAB IMPLEMENTATION
# ============================================================

Retail KPI tab should expose
expanded operational indicators.

Recommended KPI visibility includes:

- sales posture
- stock turnover posture
- shortage frequency posture
- staffing sufficiency posture
- cleanliness posture where supported
- category balance posture

KPI refresh may be slower than
summary-critical warnings,
but must remain consistent enough
for operational review.


# ============================================================
# 15. ISSUE TAB IMPLEMENTATION
# ============================================================

Retail issue tab must centralize
store-local operational problems.

Typical issue groups include:

- stockout pressure
- cleanliness warning
- compliance warning where applicable
- service bottleneck
- supply disruption
- staffing shortage

Issue tab must support:

- issue detail entry
- intervention route
- escalation route where supported

Critical issue visibility must also appear on overview.


# ============================================================
# 16. ROLE APPLICATION RULE
# ============================================================

Retail role application should behave as follows.

manager:
- all tabs visible
- mutation allowed where permitted

operator:
- operation tabs visible
- permission tab read-only
- high-impact mutation may be reduced

staff:
- summary visibility
- inventory visibility
- issue visibility
- history visibility where allowed

customer_or_public:
- not part of this facility operation implementation

Restriction should prefer:

- read-only
- disabled with explanation
over silent disappearance
when operational understanding matters.


# ============================================================
# 17. SEARCH ENTRY RULE
# ============================================================

If retail UI is entered from search,
the user should land on:

- retail_overview_screen

Search-origin context may highlight:

- matched category
- matched issue
- matched store identity

But search must not force direct entry
into editing mode.


# ============================================================
# 18. NOTIFICATION ENTRY RULE
# ============================================================

If retail UI is entered from notification,
the implementation may route to:

- retail_overview_screen by default
- retail_issue_screen when the notification is issue-rooted

Notification entry should preserve:

- issue highlight
- affected section highlight
- back-safe return behavior


# ============================================================
# 19. LINKED FACILITY RULE
# ============================================================

Retail linked routes may include:

- linked logistics
- linked storage
- linked supplier-facing facility where surfaced
- linked company premises where applicable

Opening a linked facility must preserve
source store orientation.


# ============================================================
# 20. FINAL RULE
# ============================================================

Retail implementation must remain:

- stock-visible
- issue-visible
- staffing-visible
- automation-visible
- summary-first
- explicitly actionable
