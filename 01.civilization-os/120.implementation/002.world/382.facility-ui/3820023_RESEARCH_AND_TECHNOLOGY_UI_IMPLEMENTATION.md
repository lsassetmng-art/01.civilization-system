# ============================================================
# RESEARCH AND TECHNOLOGY UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: research-and-technology-ui-implementation
component: research-and-technology-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for research and technology UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- RESEARCH_AND_TECHNOLOGY_UI_ARCHITECTURE
- RESEARCH_AND_TECHNOLOGY_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Research UI must implement:

- research_overview_screen
- research_manage_screen
- research_issue_screen
- research_history_screen
- research_permission_screen

Optional where supported:

- research_linked_screen
- research_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Research overview must prioritize
program continuity and equipment posture.

Initial priority:

1. institution identity
2. research type
3. program posture
4. equipment posture
5. equipment warning summary
6. progress warning summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Research manage must default to:

- summary_tab

Fallback order:

- program_and_focus_tab
- laboratory_and_equipment_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. program_and_focus_tab
3. laboratory_and_equipment_tab
4. output_and_progress_tab
5. staff_and_allocation_tab
6. budget_and_support_tab
7. issue_tab
8. automation_tab
9. kpi_tab
10. history_tab
11. permission_tab
12. linked_tab

Program, equipment, and progress posture
must become visible early.


# ============================================================
# 6. PROGRAM AND FOCUS TAB IMPLEMENTATION
# ============================================================

Program and focus tab must expose
active research grouping.

It should load:

- program groups
- active program counts
- focus visibility
- unsupported area indicators
- priority posture
- reconfiguration pressure

Program reprioritization must be explicit
and should refresh summary posture when relevant.


# ============================================================
# 7. STAFF AND ALLOCATION TAB IMPLEMENTATION
# ============================================================

Staff and allocation tab must expose
research staffing sufficiency.

It should load:

- staff groups
- allocation posture
- coverage posture
- overload indicators
- specialization need
- reassignment need

Staffing changes should refresh:

- staffing tab
- program posture when relevant
- issue indicators


# ============================================================
# 8. LABORATORY AND EQUIPMENT TAB IMPLEMENTATION
# ============================================================

Laboratory and equipment tab is a high-priority surface.

It must expose:

- lab or equipment groups
- readiness posture
- degradation indicators
- bottleneck indicators
- correction need
- support burden

Equipment support actions must be explicit
and should result in history visibility.


# ============================================================
# 9. OUTPUT AND PROGRESS TAB IMPLEMENTATION
# ============================================================

Output and progress tab must expose
research outcome posture.

It should load:

- output posture
- progress visibility
- unstable progress indicators
- blocked output indicators
- milestone posture where applicable
- correction urgency

Critical progress blockage must appear
on overview as well.


# ============================================================
# 10. BUDGET AND SUPPORT TAB IMPLEMENTATION
# ============================================================

Budget and support tab must expose
support sufficiency
without redefining formula truth.

It should load:

- budget visibility where applicable
- support visibility
- burden concentration indicators
- under-supported area indicators
- correction need
- support note where applicable

Support corrections must remain explicit.


# ============================================================
# 11. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Research automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide blocked progress,
equipment instability,
or under-supported programs.


# ============================================================
# 12. ISSUE TAB IMPLEMENTATION
# ============================================================

Research issue tab must centralize
program and equipment instability.

Typical issue groups include:

- staffing shortage
- equipment instability
- blocked progress
- under-supported program
- output degradation
- lab bottleneck
- urgent intervention trigger

Issue handling must remain explicit
and severity-aware.


# ============================================================
# 13. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

program_operator:
- program visibility
- limited progress visibility
- issue visibility
- limited history visibility

lab_operator:
- equipment visibility
- issue visibility
- summary visibility
- limited linked visibility

support_or_budget_operator:
- support visibility
- issue visibility
- limited history visibility
- summary visibility

Restrictions should preserve operational readability.


# ============================================================
# 14. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- manufacturing
- infrastructure
- school or training support
- company premises
- district or city support context

Linked routing must preserve
source research orientation.


# ============================================================
# 15. FINAL RULE
# ============================================================

Research implementation must remain:

- program-visible
- equipment-visible
- progress-visible
- support-visible
- issue-visible
- summary-first
- clearly separable from education or manufacturing-only truth
