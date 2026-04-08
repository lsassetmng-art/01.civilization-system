# ============================================================
# HOSPITAL OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: hospital-operation-ui-implementation
component: hospital-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for hospital operation UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- HOSPITAL_OPERATION_UI_ARCHITECTURE
- HOSPITAL_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Hospital UI must implement:

- hospital_overview_screen
- hospital_manage_screen
- hospital_issue_screen
- hospital_history_screen
- hospital_permission_screen

Optional where supported:

- hospital_linked_screen
- hospital_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Hospital overview must prioritize
care load and emergency posture.

Initial priority:

1. institution identity
2. medical facility type
3. care load posture
4. staffing posture
5. capacity warning summary
6. supply warning summary
7. emergency readiness summary
8. KPI strip
9. recent issue summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Hospital manage must default to:

- summary_tab

Fallback order:

- patient_flow_tab
- capacity_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. patient_flow_tab
3. capacity_tab
4. staffing_tab
5. supply_tab
6. emergency_tab
7. issue_tab
8. sanitation_and_safety_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab

Care load, capacity, and emergency
must become visible early.


# ============================================================
# 6. PATIENT FLOW TAB IMPLEMENTATION
# ============================================================

Patient flow tab must expose
intake and processing posture.

It should load:

- intake groups
- patient-flow posture
- backlog indicators
- overload indicators
- bottleneck visibility
- support need visibility

Patient-flow corrections must refresh:

- patient flow section
- overview care-load summary
- issue indicators


# ============================================================
# 7. CAPACITY TAB IMPLEMENTATION
# ============================================================

Capacity tab is a high-priority surface.

It must expose:

- department or ward groups
- capacity values
- utilization posture
- overload
- underuse
- mismatch indicators

Capacity changes should refresh:

- capacity section
- overview warning summary
- issue indicators


# ============================================================
# 8. STAFFING TAB IMPLEMENTATION
# ============================================================

Staffing tab must expose
care-delivery staffing sufficiency.

It should load:

- role groups
- assigned staff counts
- coverage posture
- overload indicators
- emergency staffing stress
- reassignment need

Staffing changes should refresh:

- staffing tab
- overview staffing summary
- emergency posture when relevant
- issue indicators


# ============================================================
# 9. SUPPLY TAB IMPLEMENTATION
# ============================================================

Supply tab must expose
medical supply sufficiency.

It should load:

- supply groups
- sufficiency posture
- shortage indicators
- critical resource indicators
- disruption risks
- replenishment need

Critical supply actions must require
explicit confirmation where high impact.

Supply changes should refresh:

- supply tab
- overview supply warnings
- issue indicators


# ============================================================
# 10. EMERGENCY TAB IMPLEMENTATION
# ============================================================

Emergency tab must remain explicit.

It should expose:

- emergency readiness posture
- surge pressure
- emergency capacity
- emergency staffing state
- critical supply posture
- escalation need

Emergency posture must appear
on overview when severe.


# ============================================================
# 11. SANITATION AND SAFETY TAB IMPLEMENTATION
# ============================================================

Sanitation and safety tab must expose
hospital hygiene and incident posture.

It should load:

- sanitation posture
- hygiene posture
- contamination concern where supported
- safety incident indicators
- corrective burden
- escalation need

Critical safety conditions must not remain hidden
behind lower-priority tabs only.


# ============================================================
# 12. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Hospital automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide emergency posture
or care-capacity stress.


# ============================================================
# 13. ISSUE TAB IMPLEMENTATION
# ============================================================

Hospital issue tab must centralize
care-delivery problems.

Typical issue groups include:

- overload
- staff shortage
- critical supply shortage
- emergency readiness concern
- sanitation or safety concern
- intake bottleneck
- care capacity mismatch

Issue handling must remain explicit
and severity-aware.


# ============================================================
# 14. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

medical_staff:
- summary visibility
- limited patient flow visibility
- limited staffing visibility
- limited supply visibility
- issue visibility

emergency_operator:
- emergency visibility
- summary visibility
- issue visibility

authority:
- summary visibility
- sanitation and safety visibility
- issue visibility
- limited permission visibility

Restrictions should preserve readability
for operational awareness.


# ============================================================
# 15. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- linked residence
- linked school
- linked community support
- linked government service
- linked logistics / supply context

Linked routing must preserve
source hospital orientation.


# ============================================================
# 16. FINAL RULE
# ============================================================

Hospital implementation must remain:

- care-load-visible
- capacity-visible
- supply-visible
- emergency-visible
- issue-visible
- summary-first
- clearly separable from welfare-only or civic-only truth
