# ============================================================
# COMPANY PREMISES AND TENANT UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: company-premises-and-tenant-ui-implementation
component: company-premises-and-tenant-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for company premises and tenant UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- COMPANY_PREMISES_AND_TENANT_UI_ARCHITECTURE
- COMPANY_PREMISES_AND_TENANT_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Company premises UI must implement:

- company_premises_overview_screen
- company_premises_manage_screen
- company_premises_issue_screen
- company_premises_history_screen
- company_premises_permission_screen

Optional where supported:

- company_premises_linked_screen
- company_premises_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Company premises overview must prioritize
occupancy and usage posture.

Initial priority:

1. premises identity
2. organization context
3. occupancy posture
4. usage posture
5. tenant warning summary
6. access or shared-space summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Company premises manage must default to:

- summary_tab

Fallback order:

- tenant_allocation_tab
- structure_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. tenant_allocation_tab
3. structure_tab
4. shared_space_tab
5. access_and_movement_tab
6. usage_visibility_tab
7. issue_tab
8. staffing_tab
9. automation_tab
10. kpi_tab
11. history_tab
12. permission_tab
13. linked_tab

Occupancy, tenant posture, and access posture
must become visible early.


# ============================================================
# 6. STRUCTURE TAB IMPLEMENTATION
# ============================================================

Structure tab must expose
site, floor, and sectional structure posture.

It should load:

- site or floor grouping
- section count
- utilization posture
- underuse indicators
- overload indicators
- reallocation pressure

Structure changes should remain explicit
and should not silently mutate tenant truth.


# ============================================================
# 7. TENANT ALLOCATION TAB IMPLEMENTATION
# ============================================================

Tenant allocation tab is a high-priority surface.

It must expose:

- tenant or branch grouping
- occupied space counts
- stability posture
- mismatch indicators
- concentration indicators
- reassignment need

Tenant changes should refresh:

- tenant allocation section
- overview occupancy summary
- issue indicators


# ============================================================
# 8. SHARED SPACE TAB IMPLEMENTATION
# ============================================================

Shared space tab must expose
common-space contention and load posture.

It should load:

- shared-space groups
- load posture
- usage imbalance indicators
- contention indicators
- unsupported area indicators
- correction need

Shared-space corrections should refresh:

- shared-space tab
- overview burden summary
- issue indicators


# ============================================================
# 9. ACCESS AND MOVEMENT TAB IMPLEMENTATION
# ============================================================

Access and movement tab must expose
entry and internal movement posture.

It should load:

- access posture
- restricted-area visibility
- movement bottleneck indicators
- entry burden indicators
- unstable access indicators
- correction need

Access corrections should be explicit
and should result in history visibility.


# ============================================================
# 10. STAFFING TAB IMPLEMENTATION
# ============================================================

Staffing tab must expose
premises-support staffing sufficiency.

It should load:

- role groups
- assigned staff counts
- coverage posture
- facilities-support burden
- reception or support burden
- reassignment need

Staffing changes should refresh:

- staffing tab
- overview burden summary
- issue indicators


# ============================================================
# 11. USAGE VISIBILITY TAB IMPLEMENTATION
# ============================================================

Usage visibility tab must expose
actual-use versus intended-use posture.

It should load:

- occupancy posture
- utilization posture
- underuse indicators
- overuse indicators
- intended-versus-actual-use mismatch
- correction urgency

Critical usage problems must appear
on overview as well.


# ============================================================
# 12. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Company premises automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide
tenant instability,
access problems,
or usage mismatch.


# ============================================================
# 13. ISSUE TAB IMPLEMENTATION
# ============================================================

Company premises issue tab must centralize
occupancy and usage problems.

Typical issue groups include:

- occupancy mismatch
- tenant instability
- shared-space contention
- support-staff shortage
- access instability
- underuse or overload
- premises-usage inconsistency visibility

Issue handling must remain explicit
and severity-aware.


# ============================================================
# 14. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

tenant_operator:
- limited tenant allocation visibility
- limited shared-space visibility
- issue visibility
- summary visibility

facilities_operator:
- structure visibility
- access visibility
- limited staffing visibility
- issue visibility

owner_or_authority:
- all tabs visible
- permission-sensitive actions visible by role

Restrictions should preserve operational readability.


# ============================================================
# 15. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- real estate
- company facilities
- security
- infrastructure
- district or city support context

Linked routing must preserve
source premises orientation.


# ============================================================
# 16. FINAL RULE
# ============================================================

Company premises implementation must remain:

- tenant-visible
- occupancy-visible
- access-visible
- usage-visible
- issue-visible
- summary-first
- clearly separable from real-estate or retail-only truth
