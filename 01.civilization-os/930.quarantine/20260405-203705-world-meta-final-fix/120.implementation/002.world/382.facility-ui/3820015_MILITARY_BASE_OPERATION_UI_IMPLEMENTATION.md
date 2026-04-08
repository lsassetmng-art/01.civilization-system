# ============================================================
# MILITARY BASE OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: military-base-operation-ui-implementation
component: military-base-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for military base operation UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- MILITARY_BASE_OPERATION_UI_ARCHITECTURE
- MILITARY_BASE_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Military UI must implement:

- military_overview_screen
- military_manage_screen
- military_issue_screen
- military_history_screen
- military_permission_screen

Optional where supported:

- military_linked_screen
- military_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Military overview must prioritize
readiness and supply posture.

Initial priority:

1. base identity
2. defense role
3. readiness posture
4. supply posture
5. alert summary
6. equipment continuity summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Military manage must default to:

- summary_tab

Fallback order:

- readiness_and_alert_tab
- force_organization_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. readiness_and_alert_tab
3. force_organization_tab
4. supply_and_support_tab
5. equipment_tab
6. issue_tab
7. training_tab
8. deployment_support_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab

Readiness and supply posture
must become visible early.


# ============================================================
# 6. FORCE ORGANIZATION TAB IMPLEMENTATION
# ============================================================

Force organization tab must expose
force grouping and balance posture.

It should load:

- force groups
- role groups
- balance posture
- unsupported area indicators
- concentration indicators
- reallocation pressure

Force reassignment should be explicit
and should refresh summary posture when relevant.


# ============================================================
# 7. READINESS AND ALERT TAB IMPLEMENTATION
# ============================================================

Readiness and alert tab is a high-priority surface.

It must expose:

- readiness posture
- alert posture
- degraded readiness indicators
- instability indicators
- surge burden
- corrective need

Critical readiness or alert degradation
must appear on overview as well.


# ============================================================
# 8. EQUIPMENT TAB IMPLEMENTATION
# ============================================================

Equipment tab must expose
defense equipment continuity.

It should load:

- equipment groups
- readiness posture
- degradation indicators
- maintenance burden
- capability gap indicators
- downtime need

Equipment support actions must be explicit
and should result in history visibility.


# ============================================================
# 9. SUPPLY AND SUPPORT TAB IMPLEMENTATION
# ============================================================

Supply and support tab must expose
resource sufficiency clearly.

It should load:

- supply groups
- sufficiency posture
- shortage indicators
- critical resource indicators
- disruption risk
- escalation need

Supply corrections should refresh:

- supply section
- overview supply summary
- issue indicators


# ============================================================
# 10. TRAINING TAB IMPLEMENTATION
# ============================================================

Training tab must expose
preparedness improvement posture.

It should load:

- training groups
- preparedness posture
- unsupported area indicators
- imbalance indicators
- readiness improvement need
- correction urgency

Training reprioritization must remain explicit.


# ============================================================
# 11. DEPLOYMENT SUPPORT TAB IMPLEMENTATION
# ============================================================

Deployment support tab must expose
movement and staging support posture.

It should load:

- deployment support state
- movement readiness
- support burden
- staging visibility
- instability indicators
- logistics dependency visibility

Linked logistics routing must preserve
source military orientation.


# ============================================================
# 12. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Military automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide readiness,
supply, or alert posture.


# ============================================================
# 13. ISSUE TAB IMPLEMENTATION
# ============================================================

Military issue tab must centralize
defense-operation problems.

Typical issue groups include:

- degraded readiness
- supply shortage
- equipment degradation
- training shortfall
- alert instability
- support burden concern
- linked logistics concern

Issue handling must remain explicit
and severity-aware.


# ============================================================
# 14. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager_or_command:
- all tabs visible
- mutation allowed where permitted

operations_operator:
- readiness visibility
- limited deployment support visibility
- issue visibility
- limited history visibility

maintenance_operator:
- equipment visibility
- limited supply visibility
- issue visibility
- summary visibility

authority:
- all tabs visible
- permission-sensitive actions visible by role

public_user:
- not part of this operational implementation

Restrictions should preserve operational readability.


# ============================================================
# 15. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- logistics
- infrastructure
- security
- manufacturing support where applicable
- district or strategic support context

Linked routing must preserve
source military orientation.


# ============================================================
# 16. FINAL RULE
# ============================================================

Military implementation must remain:

- readiness-visible
- supply-visible
- equipment-visible
- alert-visible
- issue-visible
- summary-first
- clearly separable from security or logistics-only truth
