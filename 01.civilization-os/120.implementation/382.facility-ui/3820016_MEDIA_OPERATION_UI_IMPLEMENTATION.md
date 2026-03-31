# ============================================================
# MEDIA OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: media-operation-ui-implementation
component: media-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for media operation UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- MEDIA_OPERATION_UI_ARCHITECTURE
- MEDIA_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Media UI must implement:

- media_overview_screen
- media_manage_screen
- media_issue_screen
- media_history_screen
- media_permission_screen

Optional where supported:

- media_linked_screen
- media_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Media overview must prioritize
schedule continuity and exposure posture.

Initial priority:

1. facility identity
2. media type
3. content posture
4. schedule posture
5. exposure warning summary
6. reliability summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Media manage must default to:

- summary_tab

Fallback order:

- content_and_catalog_tab
- schedule_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. content_and_catalog_tab
3. schedule_tab
4. audience_and_reach_tab
5. issue_tab
6. staffing_and_production_tab
7. reliability_and_exposure_tab
8. advertising_and_sponsorship_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab

Content and schedule posture
must become visible early.


# ============================================================
# 6. CONTENT AND CATALOG TAB IMPLEMENTATION
# ============================================================

Content and catalog tab must expose
active content grouping.

It should load:

- content groups
- active content counts
- category balance posture
- unsupported area indicators
- priority posture
- reconfiguration pressure

Content reprioritization must be explicit
and should refresh summary posture when relevant.


# ============================================================
# 7. SCHEDULE TAB IMPLEMENTATION
# ============================================================

Schedule tab is a high-priority surface.

It must expose:

- schedule groups
- timing posture
- delay indicators
- overload indicators
- instability indicators
- bottleneck indicators

Schedule corrections should refresh:

- schedule section
- overview schedule summary
- issue indicators


# ============================================================
# 8. STAFFING AND PRODUCTION TAB IMPLEMENTATION
# ============================================================

Staffing and production tab must expose
production sufficiency.

It should load:

- role groups
- assigned staff counts
- coverage posture
- production burden
- editorial burden
- reassignment need

Staffing changes should refresh:

- staffing tab
- content or schedule posture when relevant
- issue indicators


# ============================================================
# 9. AUDIENCE AND REACH TAB IMPLEMENTATION
# ============================================================

Audience and reach tab must expose
visibility outcome posture.

It should load:

- audience posture
- reach posture
- unstable exposure indicators
- engagement signals where supported
- growth or decline indicators
- correction need

Audience shifts should remain visible
without implying hidden truth mutation.


# ============================================================
# 10. ADVERTISING AND SPONSORSHIP TAB IMPLEMENTATION
# ============================================================

Advertising and sponsorship tab must expose
monetization posture.

It should load:

- monetization groups
- advertising posture
- sponsorship posture
- underused space indicators
- concentration indicators
- correction need

Monetization actions must remain explicit.


# ============================================================
# 11. RELIABILITY AND EXPOSURE TAB IMPLEMENTATION
# ============================================================

Reliability and exposure tab must expose
operational continuity and interruption posture.

It should load:

- reliability posture
- interruption indicators
- degraded exposure
- delay concentration
- unstable service visibility
- correction urgency

Critical reliability issues must appear
on overview as well.


# ============================================================
# 12. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Media automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide schedule instability
or exposure degradation.


# ============================================================
# 13. ISSUE TAB IMPLEMENTATION
# ============================================================

Media issue tab must centralize
content and publication continuity problems.

Typical issue groups include:

- schedule disruption
- production backlog
- staffing shortage
- exposure instability
- audience decline concern
- advertising imbalance
- publication delay

Issue handling must remain explicit
and severity-aware.


# ============================================================
# 14. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

editorial_operator:
- content visibility
- limited schedule visibility
- issue visibility
- limited history visibility

schedule_operator:
- schedule visibility
- reliability visibility
- issue visibility
- summary visibility

advertising_operator:
- advertising visibility
- limited audience visibility
- issue visibility
- limited history visibility

Restrictions should preserve operational readability.


# ============================================================
# 15. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- streamer agency
- culture and leisure
- exhibition and event
- company premises
- marketplace-linked promotional context

Linked routing must preserve
source media orientation.


# ============================================================
# 16. FINAL RULE
# ============================================================

Media implementation must remain:

- content-visible
- schedule-visible
- exposure-visible
- reliability-visible
- issue-visible
- summary-first
- clearly separable from streamer or exhibition-only truth
