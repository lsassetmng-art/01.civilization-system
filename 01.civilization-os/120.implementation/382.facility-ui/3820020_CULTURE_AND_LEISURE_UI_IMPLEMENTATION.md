# ============================================================
# CULTURE AND LEISURE UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: culture-and-leisure-ui-implementation
component: culture-and-leisure-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for culture and leisure UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- CULTURE_AND_LEISURE_UI_ARCHITECTURE
- CULTURE_AND_LEISURE_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Culture and leisure UI must implement:

- culture_overview_screen
- culture_manage_screen
- culture_issue_screen
- culture_history_screen
- culture_permission_screen

Optional where supported:

- culture_linked_screen
- culture_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Culture overview must prioritize
visitor posture and attraction condition.

Initial priority:

1. attraction identity
2. attraction type
3. visitor posture
4. appeal posture
5. visitor warning summary
6. condition warning summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Culture manage must default to:

- summary_tab

Fallback order:

- visitor_and_flow_tab
- program_and_activity_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. visitor_and_flow_tab
3. program_and_activity_tab
4. atmosphere_and_condition_tab
5. appeal_and_visibility_tab
6. issue_tab
7. staffing_and_upkeep_tab
8. money_visibility_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab

Visitor, condition, and appeal posture
must become visible early.


# ============================================================
# 6. PROGRAM AND ACTIVITY TAB IMPLEMENTATION
# ============================================================

Program and activity tab must expose
active attraction programming.

It should load:

- program groups
- active program counts
- priority posture
- unsupported area indicators
- overload indicators
- reconfiguration pressure

Program reprioritization must be explicit
and should refresh summary posture when relevant.


# ============================================================
# 7. VISITOR AND FLOW TAB IMPLEMENTATION
# ============================================================

Visitor and flow tab is a high-priority surface.

It must expose:

- visitor groups
- visitor posture
- overcrowding indicators
- underuse indicators
- bottleneck indicators
- correction need

Visitor-flow corrections should refresh:

- visitor section
- overview visitor summary
- issue indicators


# ============================================================
# 8. ATMOSPHERE AND CONDITION TAB IMPLEMENTATION
# ============================================================

Atmosphere and condition tab must expose
site-quality posture.

It should load:

- atmosphere posture
- cleanliness posture where applicable
- visual condition posture
- degradation indicators
- attraction quality indicators
- urgent correction need

Condition changes should refresh:

- condition tab
- overview condition summary
- issue indicators


# ============================================================
# 9. STAFFING AND UPKEEP TAB IMPLEMENTATION
# ============================================================

Staffing and upkeep tab must expose
site-support sufficiency.

It should load:

- role groups
- assigned staff counts
- coverage posture
- upkeep burden
- unsupported area indicators
- reassignment need

Staffing changes should refresh:

- staffing tab
- condition posture when relevant
- issue indicators


# ============================================================
# 10. APPEAL AND VISIBILITY TAB IMPLEMENTATION
# ============================================================

Appeal and visibility tab must expose
public-attraction posture.

It should load:

- appeal posture
- visibility posture
- decline indicators
- growth signals where applicable
- underperforming-area indicators
- correction need

Critical appeal decline must appear
on overview as well.


# ============================================================
# 11. MONEY VISIBILITY TAB IMPLEMENTATION
# ============================================================

Money visibility tab must expose
attraction-side money posture
without redefining pricing truth.

It should load:

- admission posture where applicable
- pricing visibility
- burden visibility
- underperforming-program indicators
- correction need
- monetization note where applicable

Money corrections must remain explicit.


# ============================================================
# 12. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Culture automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide visitor stress,
appeal decline,
or site degradation.


# ============================================================
# 13. ISSUE TAB IMPLEMENTATION
# ============================================================

Culture issue tab must centralize
attraction-operation problems.

Typical issue groups include:

- visitor instability
- overcrowding or underuse
- site condition degradation
- staffing shortage
- appeal decline
- program imbalance
- readiness concern

Issue handling must remain explicit
and severity-aware.


# ============================================================
# 14. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

program_operator:
- program visibility
- limited visitor visibility
- issue visibility
- limited history visibility

site_operator:
- condition visibility
- staffing visibility
- issue visibility
- summary visibility

public_information_operator:
- appeal visibility
- limited money visibility
- issue visibility
- summary visibility

Restrictions should preserve operational readability.


# ============================================================
# 15. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- media
- exhibition and event
- company premises
- district or city support context
- marketplace where surfaced

Linked routing must preserve
source attraction orientation.


# ============================================================
# 16. FINAL RULE
# ============================================================

Culture and leisure implementation must remain:

- visitor-visible
- condition-visible
- appeal-visible
- program-visible
- issue-visible
- summary-first
- clearly separable from exhibition or media-only truth
