# ============================================================
# MANUFACTURING OPERATION UI IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: manufacturing-operation-ui-implementation
component: manufacturing-operation-ui-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for manufacturing operation UI inside Civilization.

This document must align with:

- CIVILIZATION_FACILITY_UI_IMPLEMENTATION
- MANUFACTURING_OPERATION_UI_ARCHITECTURE
- MANUFACTURING_OPERATION_UI_INTERFACE


# ============================================================
# 2. CANONICAL SCREEN STACK
# ============================================================

Manufacturing UI must implement:

- manufacturing_overview_screen
- manufacturing_manage_screen
- manufacturing_issue_screen
- manufacturing_history_screen
- manufacturing_permission_screen

Optional where supported:

- manufacturing_linked_screen
- manufacturing_intervention_screen


# ============================================================
# 3. OVERVIEW INITIAL LOAD RULE
# ============================================================

Manufacturing overview must prioritize
line continuity and input sufficiency.

Initial priority:

1. facility identity
2. production type
3. line posture
4. input posture
5. quality warning summary
6. downtime or maintenance warning summary
7. KPI strip
8. recent issue summary
9. recent history summary


# ============================================================
# 4. MANAGE DEFAULT TAB RULE
# ============================================================

Manufacturing manage must default to:

- summary_tab

Fallback order:

- line_and_process_tab
- input_material_tab
- issue_tab


# ============================================================
# 5. TAB LOADING ORDER
# ============================================================

Recommended loading order:

1. summary_tab
2. line_and_process_tab
3. input_material_tab
4. machine_and_equipment_tab
5. quality_and_defect_tab
6. maintenance_and_downtime_tab
7. issue_tab
8. staffing_tab
9. output_and_linked_flow_tab
10. automation_tab
11. kpi_tab
12. history_tab
13. permission_tab
14. linked_tab

Line continuity and input posture
must become visible early.


# ============================================================
# 6. LINE AND PROCESS TAB IMPLEMENTATION
# ============================================================

Line and process tab must expose
production-flow posture.

It should load:

- line or process groups
- priority posture
- overload indicators
- underuse indicators
- instability indicators
- reconfiguration pressure

Line reprioritization must be explicit
and should refresh summary posture when relevant.


# ============================================================
# 7. INPUT MATERIAL TAB IMPLEMENTATION
# ============================================================

Input material tab must expose
input sufficiency clearly.

It should load:

- input groups
- sufficiency posture
- shortage indicators
- replenishment need
- dependency visibility
- interruption risk

Input corrections should refresh:

- input tab
- overview input warning summary
- issue indicators


# ============================================================
# 8. MACHINE AND EQUIPMENT TAB IMPLEMENTATION
# ============================================================

Machine and equipment tab must expose
technical readiness.

It should load:

- machine groups
- readiness posture
- degradation indicators
- operational strain
- breakdown risk
- reassignment or support need

Machine support actions must be explicit
and should result in history visibility.


# ============================================================
# 9. STAFFING TAB IMPLEMENTATION
# ============================================================

Staffing tab must expose
production staffing sufficiency.

It should load:

- role groups
- assigned staff counts
- coverage posture
- overload indicators
- skill mismatch where applicable
- reassignment need

Staffing changes should refresh:

- staffing tab
- line posture when relevant
- issue indicators


# ============================================================
# 10. QUALITY AND DEFECT TAB IMPLEMENTATION
# ============================================================

Quality and defect tab is a high-priority surface.

It must expose:

- quality posture
- defect risk
- unstable output indicators
- mismatch signals
- corrective urgency
- rework burden where supported

Critical quality problems must appear
on overview as well.


# ============================================================
# 11. MAINTENANCE AND DOWNTIME TAB IMPLEMENTATION
# ============================================================

Maintenance and downtime tab must expose
production interruption burden.

It should load:

- maintenance burden
- downtime posture
- repair backlog
- urgent maintenance visibility
- line interruption
- escalation need

Maintenance changes should refresh:

- maintenance tab
- overview downtime summary
- issue indicators


# ============================================================
# 12. OUTPUT AND LINKED FLOW TAB IMPLEMENTATION
# ============================================================

Output and linked flow tab must expose
handoff from production to downstream flow.

It should load:

- output groups
- completion posture
- backlog indicators
- shipment readiness
- storage pressure
- instability indicators

Output routing should preserve linkage clarity
with downstream logistics.


# ============================================================
# 13. AUTOMATION TAB IMPLEMENTATION
# ============================================================

Manufacturing automation must remain visible.

It should expose:

- automation enabled
- active policy profile
- automation visibility posture
- threshold summary
- recent automated changes

Automation must not hide
line instability, downtime,
or quality problems.


# ============================================================
# 14. ISSUE TAB IMPLEMENTATION
# ============================================================

Manufacturing issue tab must centralize
production interruptions and defects.

Typical issue groups include:

- input shortage
- line instability
- machine degradation
- breakdown concern
- staffing shortage
- quality degradation
- downtime concentration
- shipment linkage concern

Issue handling must remain explicit
and severity-aware.


# ============================================================
# 15. ROLE APPLICATION RULE
# ============================================================

Recommended role behavior:

manager:
- all tabs visible
- mutation allowed where permitted

line_operator:
- line visibility
- limited machine visibility
- issue visibility
- limited history visibility

maintenance_operator:
- machine visibility
- maintenance visibility
- issue visibility

quality_operator:
- quality visibility
- issue visibility
- limited output visibility
- limited history visibility

Restrictions should preserve operational readability.


# ============================================================
# 16. LINKED FACILITY RULE
# ============================================================

Linked routes may include:

- linked logistics
- linked storage
- linked infrastructure
- linked research and technology
- linked supplier-facing context where surfaced

Linked routing must preserve
source manufacturing orientation.


# ============================================================
# 17. FINAL RULE
# ============================================================

Manufacturing implementation must remain:

- line-visible
- input-visible
- quality-visible
- downtime-visible
- issue-visible
- summary-first
- clearly separable from logistics or research-only truth
