# ============================================================
# PROJECT FLOW DATA OWNERSHIP MATRIX NOTE
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Maps major ProjectFlow data fields to ownership categories.

ownership_matrix:

project_id:
- owner_type: projectflow_local_truth
- note: local application identifier

erp_project_code:
- owner_type: erp_formal_truth
- note: ERP-origin formal reference when present

project_name:
- owner_type: mixed_by_source
- note: local projectflow-created project may own locally;
        ERP-imported reference may be ERP-origin display-aligned

project_status:
- owner_type: projectflow_local_truth
- note: local operational execution status

customer_id:
- owner_type: erp_formal_truth_or_external_reference
- note: formal customer reference when ERP-linked

customer_name_snapshot:
- owner_type: display_snapshot
- note: local display convenience,
        not formal truth owner

project_manager_id:
- owner_type: local_or_enterprise_reference
- note: depends on approved reference source

planned_start_date:
- owner_type: projectflow_local_truth
- note: operational planning field after local confirmation

planned_end_date:
- owner_type: projectflow_local_truth
- note: operational planning field after local confirmation

actual_start_date:
- owner_type: projectflow_local_truth
- note: operational execution tracking

actual_end_date:
- owner_type: projectflow_local_truth
- note: operational execution tracking

progress_percent:
- owner_type: projectflow_local_truth
- note: local operational progress measure

delay_days:
- owner_type: derived_local_truth
- note: derived from local schedule state

budget_amount_view:
- owner_type: erp_formal_truth_view
- note: view/reference value only when ERP-linked

actual_cost_amount_view:
- owner_type: erp_formal_truth_view
- note: accounting-side reference value only when ERP-linked

task_title:
- owner_type: projectflow_local_truth
- note: local execution task naming

task_description:
- owner_type: projectflow_local_truth
- note: local execution detail

assignee_id:
- owner_type: local_or_reference_bound
- note: local assignment referencing approved identity source

task_status:
- owner_type: projectflow_local_truth
- note: local execution state

milestone_name:
- owner_type: projectflow_local_truth
- note: local milestone operation

milestone_status:
- owner_type: projectflow_local_truth
- note: local milestone execution state

issue_title:
- owner_type: projectflow_local_truth
- note: local issue tracking

risk_title:
- owner_type: projectflow_local_truth
- note: local risk tracking

work_date:
- owner_type: projectflow_local_truth
- note: local work log truth

hours:
- owner_type: projectflow_local_truth
- note: local time-entry truth

sync_request_id:
- owner_type: mediated_status_context
- note: boundary-tracking identifier for mediated sync flow

sync_status:
- owner_type: mediated_status_context
- note: boundary-derived status shown locally

error_code:
- owner_type: mediated_status_context_or_local_operation_error
- note: depends on context

report_draft_id:
- owner_type: projectflow_local_truth
- note: local draft identifier

quantitative_summary_json:
- owner_type: projectflow_local_truth_derived
- note: locally aggregated output data

qualitative_draft_text:
- owner_type: projectflow_local_truth
- note: local editable draft content

memo_body_text:
- owner_type: projectflow_local_truth
- note: local contextual note content

comment_text:
- owner_type: projectflow_local_truth
- note: local lightweight communication content

project_template_id:
- owner_type: projectflow_local_truth
- note: local reusable template identity

schedule_proposal_id:
- owner_type: projectflow_local_truth
- note: local proposal identity

proposal_payload_json:
- owner_type: projectflow_local_truth
- note: local generated proposal content

localized_label_key:
- owner_type: localized_display_only
- note: display-layer artifact,
        not business truth
