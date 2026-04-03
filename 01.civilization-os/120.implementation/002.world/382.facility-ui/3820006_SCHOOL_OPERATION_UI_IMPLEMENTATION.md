# ============================================================
# SCHOOL OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: school-operation-ui-implementation
component: school-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for school operation UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- SCHOOL_OPERATION_UI_ARCHITECTURE
- SCHOOL_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

School UI must implement:

- school_overview_screen
- school_manage_screen
- school_issue_screen
- school_history_screen
- school_permission_screen

Optional where supported:

- school_linked_screen
- school_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

School overview must prioritize
student continuity and capacity visibility.

Initial priority:

1. institution identity
2. school type
3. enrollment posture
4. staffing posture
5. capacity warning summary
6. student-life or welfare warning summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

School manage must default to:

- summary_tab

Fallback order:

- enrollment_tab
- capacity_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. enrollment_tab
3. capacity_tab
4. staffing_tab
5. issue_tab
6. program_tab
7. student_life_tab
8. safety_and_welfare_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab

Enrollment, capacity, and staffing
must become visible early.


# ============================================================
# 6. ENROLLMENT TAB IMPLEMENTATION
# ============================================================

Enrollment tab must expose
intake and student grouping posture.

It should load:

- intake groups
- student counts
- progression-stage grouping where applicable
- capacity fit posture
- overload indicators
- support need indicators

Enrollment changes should be explicit
and must refresh:

- enrollment section
- overview enrollment posture
- issue indicators when relevant


# ============================================================
# 7. PROGRAM TAB IMPLEMENTATION
# ============================================================

Program tab must expose
academic and curriculum posture.

It should load:

- program groups
- course counts
- specialization posture
- unsupported-area indicators
- overload indicators
- academic focus posture

Program reprioritization must be explicit
and should not silently mutate staffing truth.


# ============================================================
# 8. STAFFING TAB IMPLEMENTATION
# ============================================================

Staffing tab must expose
school-local staffing sufficiency.

It should load:

- role groups
- assigned staff counts
- coverage posture
- overload indicators
- support burden indicators
- reassignment need

Staffing changes should refresh:

- staffing tab
- overview staffing summary
- issue indicators


# ============================================================
# 9. CAPACITY TAB IMPLEMENTATION
# ============================================================

Capacity tab is a high-priority surface.

It must expose:

- campus or facility grouping
- capacity values
- utilization posture
- overcrowding
- underuse
- special-facility pressure

Capacity corrections should refresh:

- capacity section
- overview warnings
- issue indicators when relevant


# ============================================================
# 10. STUDENT LIFE TAB IMPLEMENTATION
# ============================================================

Student life tab must expose
non-academic continuity posture.

It should load:

- dormitory linkage where applicable
- student support burden
- life continuity posture
- linked residence support posture
- non-academic issue indicators
- escalation need

Student-life routes should preserve
linked support orientation.


# ============================================================
# 11. SAFETY AND WELFARE TAB IMPLEMENTATION
# ============================================================

Safety and welfare tab must centralize
student-facing safety and support posture.

It should load:

- safety posture
- discipline posture
- welfare support posture
- incident indicators
- support overload indicators
- escalation need

Critical student safety issues
must appear on overview as well.


# ============================================================
# 12. AUTOMATION TAB IMPLEMENTATION
# ============================================================

School automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide
human-readable enrollment, capacity,
or student-life posture.


# ============================================================
# 13. ISSUE TAB IMPLEMENTATION
# ============================================================

School issue tab must centralize
education-operation problems.

Typical issue groups include:

- overcapacity or undercapacity
- teacher shortage
- student-life support overload
- discipline issue
- safety concern
- dormitory-linked issue
- academic operation instability

Issue handling must remain explicit.


# ============================================================
# 14. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

teacher_or_staff:
- summary visibility
- limited program visibility
- limited staffing visibility
- issue visibility
- limited history visibility

student_support_operator:
- student life visibility
- safety and welfare visibility
- issue visibility

authority:
- summary visibility
- safety and welfare visibility
- issue visibility
- limited permission visibility

Restrictions should remain understandable
and should prefer readable limitation.


# ============================================================
# 15. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- residence or dormitory
- hospital
- community support
- district and city support facilities

Linked routing must preserve
source school orientation.


# ============================================================
# 16. FINAL RULE
# ============================================================

School implementation must remain:

- enrollment-visible
- capacity-visible
- staffing-visible
- student-life-visible
- issue-visible
- summary-first
- clearly separable from residence-only or training-only truth
