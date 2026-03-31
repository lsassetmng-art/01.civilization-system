# ============================================================
# LODGING AND STAY UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: lodging-and-stay-ui-implementation
component: lodging-and-stay-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for lodging and stay UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- LODGING_AND_STAY_UI_ARCHITECTURE
- LODGING_AND_STAY_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Lodging UI must implement:

- lodging_overview_screen
- lodging_manage_screen
- lodging_issue_screen
- lodging_history_screen
- lodging_permission_screen

Optional where supported:

- lodging_linked_screen
- lodging_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Lodging overview must prioritize
occupancy and turnover posture.

Initial priority:

1. lodging identity
2. lodging type
3. occupancy posture
4. turnover posture
5. booking warning summary
6. turnover warning summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Lodging manage must default to:

- summary_tab

Fallback order:

- booking_and_assignment_tab
- occupancy_and_utilization_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. booking_and_assignment_tab
3. occupancy_and_utilization_tab
4. room_and_unit_tab
5. cleaning_and_turnover_tab
6. guest_and_support_tab
7. issue_tab
8. money_visibility_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab

Booking, occupancy, and turnover posture
must become visible early.


# ============================================================
# 6. ROOM AND UNIT TAB IMPLEMENTATION
# ============================================================

Room and unit tab must expose
stay-unit structure posture.

It should load:

- room or unit groups
- room type
- allocation posture
- unavailable indicators
- underuse indicators
- reassignment need

Room changes should remain explicit
and should not silently mutate booking truth.


# ============================================================
# 7. BOOKING AND ASSIGNMENT TAB IMPLEMENTATION
# ============================================================

Booking and assignment tab is a high-priority surface.

It must expose:

- booking groups
- assignment posture
- blocked assignment indicators
- delayed assignment indicators
- turnover conflict indicators
- correction need

Booking corrections should refresh:

- booking section
- overview booking summary
- issue indicators


# ============================================================
# 8. GUEST AND SUPPORT TAB IMPLEMENTATION
# ============================================================

Guest and support tab must expose
guest-support posture.

It should load:

- guest groups
- support burden
- special-support visibility where applicable
- assignment mismatch indicators
- unresolved support indicators
- escalation need

Support routes should preserve
guest-context readability.


# ============================================================
# 9. CLEANING AND TURNOVER TAB IMPLEMENTATION
# ============================================================

Cleaning and turnover tab must expose
short-cycle stay continuity.

It should load:

- turnover groups
- cleaning posture
- turnover burden
- delayed turnover indicators
- room readiness posture
- correction urgency

Turnover corrections should refresh:

- turnover tab
- overview turnover summary
- issue indicators


# ============================================================
# 10. OCCUPANCY AND UTILIZATION TAB IMPLEMENTATION
# ============================================================

Occupancy and utilization tab must expose
actual-use posture.

It should load:

- occupancy posture
- utilization posture
- underuse indicators
- overload indicators
- intended-versus-actual-use mismatch
- correction need

Critical occupancy problems must appear
on overview as well.


# ============================================================
# 11. MONEY VISIBILITY TAB IMPLEMENTATION
# ============================================================

Money visibility tab must expose
stay-charge posture
without redefining pricing truth.

It should load:

- stay-charge visibility where applicable
- burden visibility
- underperforming-unit indicators
- correction need
- monetization note where applicable

Money corrections must remain explicit.


# ============================================================
# 12. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Lodging automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide booking conflict,
turnover stress,
or occupancy mismatch.


# ============================================================
# 13. ISSUE TAB IMPLEMENTATION
# ============================================================

Lodging issue tab must centralize
stay-operation problems.

Typical issue groups include:

- booking conflict
- occupancy instability
- cleaning delay
- turnover backlog
- staffing shortage
- guest support concern
- urgent intervention trigger

Issue handling must remain explicit
and severity-aware.


# ============================================================
# 14. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

booking_operator:
- booking visibility
- limited occupancy visibility
- issue visibility
- limited history visibility

cleaning_operator:
- turnover visibility
- limited room visibility
- issue visibility
- summary visibility

guest_support_operator:
- guest-support visibility
- issue visibility
- limited linked visibility
- summary visibility

authority:
- summary visibility
- issue visibility
- history visibility
- limited permission visibility

Restrictions should preserve operational readability.


# ============================================================
# 15. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- residence
- company premises
- community support
- market and transport support
- district or city service context

Linked routing must preserve
source lodging orientation.


# ============================================================
# 16. FINAL RULE
# ============================================================

Lodging implementation must remain:

- booking-visible
- occupancy-visible
- turnover-visible
- room-visible
- issue-visible
- summary-first
- clearly separable from residence or real-estate-only truth
