# ============================================================
# PROJECT FLOW TIMELINE GANTT DASHBOARD ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Defines architecture for timeline,
gantt,
and live dashboard capability.

major_capabilities:
- timeline view
- gantt-like schedule view
- dependency visibility
- live operational dashboard
- schedule proposal preview support

timeline_architecture:
Timeline focuses on:
- milestone sequence
- key task sequence
- dependency awareness
- delay visibility
- project-level schedule understanding

gantt_architecture:
Gantt focuses on:
- task bar visualization
- parent-child grouping
- dependency relation visibility
- planned vs actual awareness
- editable schedule review support

dashboard_architecture:
Dashboard focuses on:
- progress summary
- delay summary
- workload summary
- issue/risk summary
- sync failure summary
- export/report quick actions

boundary_rules:
- gantt and timeline are operational views,
  not separate sources of truth
- all dates must come from editable operational data or proposal data
- dependency rendering must not redefine dependency ownership
- dashboard values are aggregated views of underlying records
