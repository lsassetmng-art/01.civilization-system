# ============================================================
# HOUSING AND RESIDENCE UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: housing-and-residence-ui-implementation
component: housing-and-residence-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for housing and residence UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- HOUSING_AND_RESIDENCE_UI_ARCHITECTURE
- HOUSING_AND_RESIDENCE_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Residence UI must implement:

- residence_overview_screen
- residence_manage_screen
- residence_issue_screen
- residence_history_screen
- residence_permission_screen

Optional where supported:

- residence_linked_screen
- residence_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Residence overview must prioritize
daily living continuity visibility.

Initial priority:

1. facility identity
2. residence type
3. occupancy state
4. livability state
5. current alert level
6. occupancy warning summary
7. livability warning summary
8. KPI strip
9. recent issue summary

Residence overview should become usable early
once occupancy and livability posture are known.


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Residence manage must default to:

- summary_tab

Fallback order:

- occupancy_tab
- livability_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended residence tab loading order:

1. summary_tab
2. occupancy_tab
3. livability_tab
4. issue_tab
5. resident_tab
6. maintenance_tab
7. neighborhood_tab
8. structure_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab

Occupancy and livability are early priority,
because residence truth depends on them.


# ============================================================
# 6. RESIDENT TAB IMPLEMENTATION
# ============================================================

Resident tab must expose
resident and household grouping.

It should load:

- resident grouping
- household grouping where applicable
- resident count
- support need indicators
- assignment context visibility where applicable

Resident detail entry must preserve
safe return to the resident tab.

Support escalation must refresh:

- resident section
- issue summary where affected


# ============================================================
# 7. STRUCTURE TAB IMPLEMENTATION
# ============================================================

Structure tab must expose
units, rooms, and shared/private structure.

It should load:

- unit or room identity
- unit type
- shared/private state
- suitability state
- furnishing completeness where supported
- maintenance flags

Structure edits should be explicit
and must not silently alter occupancy truth.


# ============================================================
# 8. OCCUPANCY TAB IMPLEMENTATION
# ============================================================

Occupancy tab is one of the highest-priority surfaces.

It must expose:

- capacity
- current occupancy
- vacancy state
- crowding indicators
- turnover signals
- reallocation pressure

Occupancy intervention must explicitly confirm
if it affects assigned residents.

Occupancy-related actions should refresh:

- occupancy tab
- overview occupancy warning summary
- issue indicators


# ============================================================
# 9. LIVABILITY TAB IMPLEMENTATION
# ============================================================

Livability tab must expose
quality-of-life posture clearly.

It should load:

- comfort state
- cleanliness state where applicable
- privacy state where applicable
- daily life support access state
- environmental suitability state
- quality-of-life warnings

Livability corrections should refresh:

- livability tab
- overview summary
- issue summary where relevant


# ============================================================
# 10. MAINTENANCE TAB IMPLEMENTATION
# ============================================================

Maintenance tab must expose
habitability and repair burden.

It should load:

- utility availability
- maintenance burden
- repair backlog
- deterioration posture
- habitability risk
- urgent maintenance visibility

Maintenance actions that affect habitability
should update:

- maintenance section
- livability summary when relevant
- issue indicators


# ============================================================
# 11. NEIGHBORHOOD TAB IMPLEMENTATION
# ============================================================

Neighborhood tab must expose
local dependency visibility.

It should show at minimum:

- nearby school access posture
- nearby hospital access posture
- nearby market access posture
- transport access posture
- community support access posture
- safety context

Neighborhood routes are mainly navigational and informative.

They should support linked facility jumps
without losing return orientation.


# ============================================================
# 12. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Residence automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- escalation threshold summary
- recent automated change summary

Automation actions should not directly bypass
resident-impacting confirmations
when human review is required.


# ============================================================
# 13. ISSUE TAB IMPLEMENTATION
# ============================================================

Residence issue tab must centralize
living-condition problems.

Typical issue groups include:

- overcrowding
- under-maintenance
- livability degradation
- safety concern
- utility disruption
- resident support concern

Issue entry must support:

- issue detail
- intervention route
- escalation route where supported


# ============================================================
# 14. ROLE APPLICATION RULE
# ============================================================

Residence role behavior should follow:

manager:
- all tabs visible
- mutation allowed where permitted

owner:
- all tabs visible
- selected actions may be limited by governance context

resident:
- summary visibility
- limited resident visibility
- neighborhood visibility
- limited issue visibility

authority_or_support_operator:
- issue visibility
- neighborhood visibility
- role-limited resident visibility
- maintenance visibility where applicable

Read-only visibility should be preserved
where user understanding matters.


# ============================================================
# 15. NOTIFICATION ENTRY RULE
# ============================================================

If residence UI is entered from notification,
default route should be:

- residence_overview_screen

Issue-rooted notifications may open:

- residence_issue_screen

The relevant issue or affected section
should be highlighted when possible.


# ============================================================
# 16. LINKED FACILITY RULE
# ============================================================

Residence linked routes may include:

- linked school
- linked hospital
- linked market
- linked transport
- linked community support
- linked district services

Linked routing must remain safe and returnable.


# ============================================================
# 17. FINAL RULE
# ============================================================

Residence implementation must remain:

- livability-visible
- occupancy-visible
- maintenance-visible
- issue-visible
- summary-first
- explicitly separable from asset-only real-estate truth
