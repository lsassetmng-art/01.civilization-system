# ============================================================
# PROJECT FLOW EXPORT AND REPORT ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines spreadsheet export and progress report generation architecture.

architecture_position:
ProjectFlow must support spreadsheet-exportable operational views
for customer explanation and offline sharing.

ProjectFlow must also support human-editable progress report generation
with both quantitative and qualitative sections.

major_components:
- export request UI
- export formatter
- export file generator
- report draft generator
- report editor UI
- report template selector
- export history
- report history

export_formats:
- xlsx
- csv

export_targets:
- project list
- task list
- milestone list
- issue list
- risk list
- time entry list
- workload list
- progress summary
- sync result list

report_targets:
- weekly report
- monthly report
- customer report
- internal report

design_rules:
- export output is a snapshot
- export columns must be permission-aware
- protected fields may be masked or excluded
- auto-generated report is draft only
- human review and editing are mandatory before external use
