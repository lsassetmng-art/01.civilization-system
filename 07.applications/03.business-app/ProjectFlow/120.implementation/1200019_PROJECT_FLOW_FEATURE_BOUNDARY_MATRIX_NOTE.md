# ============================================================
# PROJECT FLOW FEATURE BOUNDARY MATRIX NOTE
# ============================================================

status: canonical
layer: implementation
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Clarifies where each major feature belongs
to avoid overlap during later preparation.

feature_boundary_matrix:

project_task_milestone_core:
- owns operational schedule data after confirmation
- owns task and milestone update behavior

template_and_wbs_proposal:
- owns reusable template structure
- owns proposal generation before confirmation
- does not own confirmed operational schedule after confirmation

timeline_gantt_dashboard:
- owns aggregated and visual read models
- does not own source schedule truth

export_and_report:
- owns output generation
- owns draft report editing
- does not own underlying project/task truth

light_automation:
- owns trigger evaluation and visibility actions
- does not own hidden business mutation

form_intake:
- owns simplified input experience
- does not own independent business truth beyond created downstream entities

memo_and_comment:
- owns contextual record and lightweight communication
- does not replace full document suite or full chat platform

subscription_and_read_only:
- owns entitlement gating and action guards across all features

integration_boundary:
- owns shared BusinessOS request/response boundary
- does not own ERP business truth
