# ============================================================
# PROJECT FLOW SCREEN NAVIGATION FLOW
# ============================================================

status: canonical
layer: flow
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines major screen transitions and operational navigation.

navigation_principles:
- daily actions must be reachable within short navigation paths
- project and task views must be mutually reachable
- sync and error visibility must not be buried
- export and report actions must be reachable from both list and detail contexts
- smartphone and PC must keep the same action capability

# ============================================================
# 1. MAIN ENTRY FLOW
# ============================================================

main_entry_flow:
- dashboard -> project_list
- dashboard -> task_list
- dashboard -> issue_risk
- dashboard -> sync_status
- dashboard -> report_editor
- dashboard -> settings

# ============================================================
# 2. PROJECT CENTERED FLOW
# ============================================================

project_centered_flow:
- project_list -> project_detail
- project_list -> task_list
- project_list -> export
- project_list -> report_editor

project_detail_flow:
- project_detail -> task_list
- project_detail -> milestone
- project_detail -> issue_risk
- project_detail -> time_entry
- project_detail -> sync_status
- project_detail -> export
- project_detail -> report_editor

# ============================================================
# 3. TASK CENTERED FLOW
# ============================================================

task_centered_flow:
- task_list -> task_detail
- task_list -> export
- task_detail -> project_detail
- task_detail -> time_entry
- task_detail -> issue_risk

# ============================================================
# 4. MILESTONE / ISSUE / RISK FLOW
# ============================================================

milestone_issue_risk_flow:
- milestone -> project_detail
- milestone -> export
- issue_risk -> project_detail
- issue_risk -> task_detail
- issue_risk -> export

# ============================================================
# 5. TIME / WORKLOAD FLOW
# ============================================================

time_workload_flow:
- time_entry -> project_detail
- time_entry -> task_detail
- time_entry -> export
- workload -> task_list
- workload -> export

# ============================================================
# 6. SYNC / EXPORT / REPORT FLOW
# ============================================================

sync_export_report_flow:
- sync_status -> project_detail
- sync_status -> export
- export -> project_detail
- export -> project_list
- export -> task_list
- report_editor -> project_detail
- report_editor -> export

# ============================================================
# 7. SETTINGS FLOW
# ============================================================

settings_flow:
- settings -> dashboard
- settings -> export
- settings -> report_editor

