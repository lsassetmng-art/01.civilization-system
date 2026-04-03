# ============================================================
# COMMUNITY AND LIFE SUPPORT UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: community-and-life-support-ui-implementation
component: community-and-life-support-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for community and life support UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- COMMUNITY_AND_LIFE_SUPPORT_UI_ARCHITECTURE
- COMMUNITY_AND_LIFE_SUPPORT_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Community support UI must implement:

- community_support_overview_screen
- community_support_manage_screen
- community_support_issue_screen
- community_support_history_screen
- community_support_permission_screen

Optional where supported:

- community_support_linked_screen
- community_support_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Community support overview must prioritize
access and continuity posture.

Initial priority:

1. institution identity
2. support type
3. service posture
4. continuity posture
5. access warning summary
6. case-load warning summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Community support manage must default to:

- summary_tab

Fallback order:

- access_and_eligibility_tab
- case_load_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. access_and_eligibility_tab
3. case_load_tab
4. continuity_tab
5. service_scope_tab
6. issue_tab
7. staffing_tab
8. linkage_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab

Access, case load, and continuity posture
must become visible early.


# ============================================================
# 6. SERVICE SCOPE TAB IMPLEMENTATION
# ============================================================

Service scope tab must expose
support-service grouping.

It should load:

- service groups
- active service counts
- priority posture
- unsupported area indicators
- overload indicators
- reconfiguration pressure

Service reprioritization must be explicit
and should refresh summary posture when relevant.


# ============================================================
# 7. ACCESS AND ELIGIBILITY TAB IMPLEMENTATION
# ============================================================

Access and eligibility tab is a high-priority surface.

It must expose:

- access groups
- eligibility visibility
- blocked-access indicators
- delayed-access indicators
- entry-bottleneck indicators
- unresolved access burden

Access corrections should refresh:

- access section
- overview access summary
- issue indicators


# ============================================================
# 8. CASE LOAD TAB IMPLEMENTATION
# ============================================================

Case load tab must expose
support-work burden posture.

It should load:

- case groups
- load posture
- backlog indicators
- support burden
- unmet need indicators
- escalation need

Case reprioritization must be explicit
and should refresh issue posture when relevant.


# ============================================================
# 9. STAFFING TAB IMPLEMENTATION
# ============================================================

Staffing tab must expose
support staffing sufficiency.

It should load:

- role groups
- assigned staff counts
- coverage posture
- support burden
- unsupported area indicators
- reassignment need

Staffing changes should refresh:

- staffing tab
- continuity posture when relevant
- issue indicators


# ============================================================
# 10. CONTINUITY TAB IMPLEMENTATION
# ============================================================

Continuity tab must expose
life-stability posture.

It should load:

- life-stability posture
- continuity visibility
- unresolved support pressure
- improvement or decline signals
- correction urgency
- local dependency visibility

Critical continuity concerns must appear
on overview as well.


# ============================================================
# 11. LINKAGE TAB IMPLEMENTATION
# ============================================================

Linkage tab must expose
cross-support dependency posture.

It should load:

- family-support posture
- childcare-support posture
- employment-support posture
- unstable linkage indicators
- handoff burden
- correction need

Linked routing should preserve
source support orientation.


# ============================================================
# 12. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Community support automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide access blockage,
case backlog,
or continuity concern.


# ============================================================
# 13. ISSUE TAB IMPLEMENTATION
# ============================================================

Community support issue tab must centralize
life-support and access problems.

Typical issue groups include:

- access blockage
- staffing shortage
- case backlog
- unmet support need
- continuity concern
- unstable linkage with other support systems
- support imbalance

Issue handling must remain explicit
and severity-aware.


# ============================================================
# 14. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

case_operator:
- case visibility
- limited access visibility
- issue visibility
- limited history visibility

support_operator:
- limited service visibility
- continuity visibility
- linkage visibility
- issue visibility

authority_or_support_admin:
- all tabs visible
- permission-sensitive actions visible by role

resident_or_public_user:
- limited access visibility
- limited summary visibility
- no operational mutation visibility

Restrictions should preserve operational readability.


# ============================================================
# 15. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- government and civic service
- residence
- school
- hospital
- city or district support context

Linked routing must preserve
source community-support orientation.


# ============================================================
# 16. FINAL RULE
# ============================================================

Community support implementation must remain:

- access-visible
- case-visible
- continuity-visible
- service-visible
- issue-visible
- summary-first
- clearly separable from government or medical-only truth
