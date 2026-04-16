# ============================================================
# PROJECT FLOW EDITABILITY MATRIX NOTE
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps major fields to editability categories.

editability_matrix:

project_id:
- category: reference_only
- note: identifier only

erp_project_code:
- category: reference_only
- note: ERP-owned formal reference

project_name:
- category: locally_editable_or_reference_only_by_source
- note: locally created project may edit;
        ERP-origin reference may be locked by policy

project_status:
- category: locally_editable
- note: local operational status

customer_id:
- category: reference_only
- note: formal customer reference when ERP-linked

customer_name_snapshot:
- category: derived_read_only
- note: display snapshot convenience

project_manager_id:
- category: locally_editable_or_reference_bound
- note: local assignment within approved reference source

planned_start_date:
- category: locally_editable
- note: editable operational schedule field

planned_end_date:
- category: locally_editable
- note: editable operational schedule field

actual_start_date:
- category: locally_editable
- note: operational execution tracking

actual_end_date:
- category: locally_editable
- note: operational execution tracking

progress_percent:
- category: locally_editable_or_derived_read_only_by_policy
- note: may be directly updated or derived from tasks depending on local rule

delay_days:
- category: derived_read_only
- note: derived from schedule state

budget_amount_view:
- category: reference_only
- note: ERP-side view/reference

actual_cost_amount_view:
- category: reference_only
- note: ERP/accounting-side view/reference

task_title:
- category: locally_editable

task_description:
- category: locally_editable

assignee_id:
- category: locally_editable

task_status:
- category: locally_editable

milestone_name:
- category: locally_editable

milestone_status:
- category: locally_editable

issue_title:
- category: locally_editable

risk_title:
- category: locally_editable

work_date:
- category: locally_editable

hours:
- category: locally_editable

sync_request_id:
- category: mediated_status_only

sync_status:
- category: mediated_status_only

error_code:
- category: mediated_status_only_or_local_operation_error

report_draft_id:
- category: reference_only

quantitative_summary_json:
- category: derived_read_only
- note: generated summary base

qualitative_draft_text:
- category: locally_editable_after_generation

next_actions_text:
- category: locally_editable_after_generation

support_requests_text:
- category: locally_editable_after_generation

customer_confirmation_items_text:
- category: locally_editable_after_generation

memo_body_text:
- category: locally_editable

comment_text:
- category: locally_editable

project_template_id:
- category: reference_only

template_name:
- category: locally_editable

task_template_name:
- category: locally_editable

relative_start_offset_days:
- category: locally_editable

planned_duration_days:
- category: locally_editable

schedule_proposal_id:
- category: reference_only

proposal_payload_json:
- category: locally_editable_after_generation
- note: editable through proposal adjustment flow before confirmation

localized_label_key:
- category: localized_display_only
