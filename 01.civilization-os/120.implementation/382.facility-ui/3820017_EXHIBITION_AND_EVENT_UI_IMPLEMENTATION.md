# ============================================================
# EXHIBITION AND EVENT UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: exhibition-and-event-ui-implementation
component: exhibition-and-event-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for exhibition and event UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- EXHIBITION_AND_EVENT_UI_ARCHITECTURE
- EXHIBITION_AND_EVENT_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Exhibition UI must implement:

- exhibition_overview_screen
- exhibition_manage_screen
- exhibition_issue_screen
- exhibition_history_screen
- exhibition_permission_screen

Optional where supported:

- exhibition_linked_screen
- exhibition_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Exhibition overview must prioritize
event continuity and readiness posture.

Initial priority:

1. venue identity
2. venue type
3. event posture
4. readiness posture
5. layout warning summary
6. admission or visitor-flow summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Exhibition manage must default to:

- summary_tab

Fallback order:

- event_and_program_tab
- layout_and_space_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. event_and_program_tab
3. layout_and_space_tab
4. readiness_and_reliability_tab
5. issue_tab
6. exhibitor_and_participant_tab
7. admission_and_visitor_flow_tab
8. staffing_and_turnover_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab

Event and layout posture
must become visible early.


# ============================================================
# 6. EVENT AND PROGRAM TAB IMPLEMENTATION
# ============================================================

Event and program tab must expose
event grouping and continuity posture.

It should load:

- event groups
- program counts
- timing posture
- overload indicators
- unsupported area indicators
- reconfiguration pressure

Event reprioritization must be explicit
and should refresh summary posture when relevant.


# ============================================================
# 7. LAYOUT AND SPACE TAB IMPLEMENTATION
# ============================================================

Layout and space tab is a high-priority surface.

It must expose:

- zone or layout groups
- allocation posture
- overcrowding indicators
- underuse indicators
- setup readiness
- mismatch indicators

Layout corrections should refresh:

- layout section
- readiness summary
- issue indicators


# ============================================================
# 8. EXHIBITOR AND PARTICIPANT TAB IMPLEMENTATION
# ============================================================

Exhibitor and participant tab must expose
coordination posture.

It should load:

- exhibitor or participant groups
- onboarding posture
- readiness posture
- coordination burden
- instability indicators
- correction need

Participant support actions must remain explicit.


# ============================================================
# 9. ADMISSION AND VISITOR FLOW TAB IMPLEMENTATION
# ============================================================

Admission and visitor flow tab must expose
entry and flow burden.

It should load:

- admission groups
- entry posture
- queue posture
- visitor-flow posture
- bottleneck indicators
- correction need

Admission corrections should refresh:

- admission section
- overview visitor-flow summary
- issue indicators


# ============================================================
# 10. STAFFING AND TURNOVER TAB IMPLEMENTATION
# ============================================================

Staffing and turnover tab must expose
event-local staffing sufficiency.

It should load:

- role groups
- assigned staff counts
- coverage posture
- turnover burden
- setup/teardown burden
- reassignment need

Staffing changes should refresh:

- staffing tab
- readiness posture when relevant
- issue indicators


# ============================================================
# 11. READINESS AND RELIABILITY TAB IMPLEMENTATION
# ============================================================

Readiness and reliability tab must expose
setup completion and continuity posture.

It should load:

- readiness posture
- setup completion posture
- instability indicators
- delay concentration
- service reliability posture
- correction urgency

Critical readiness issues must appear
on overview as well.


# ============================================================
# 12. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Exhibition automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide readiness,
layout instability,
or admission bottlenecks.


# ============================================================
# 13. ISSUE TAB IMPLEMENTATION
# ============================================================

Exhibition issue tab must centralize
venue-operation and event-operation problems.

Typical issue groups include:

- layout instability
- staffing shortage
- participant coordination burden
- admission bottleneck
- schedule delay
- readiness concern
- visitor-flow instability

Issue handling must remain explicit
and severity-aware.


# ============================================================
# 14. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

venue_operator:
- layout visibility
- limited admission visibility
- issue visibility
- limited history visibility

participant_coordinator:
- participant visibility
- limited event visibility
- issue visibility
- summary visibility

admission_operator:
- admission visibility
- limited readiness visibility
- issue visibility
- summary visibility

Restrictions should preserve operational readability.


# ============================================================
# 15. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- media
- culture and leisure
- logistics
- company premises
- city or district support context

Linked routing must preserve
source exhibition orientation.


# ============================================================
# 16. FINAL RULE
# ============================================================

Exhibition implementation must remain:

- event-visible
- layout-visible
- readiness-visible
- admission-visible
- issue-visible
- summary-first
- clearly separable from media or culture-only truth
