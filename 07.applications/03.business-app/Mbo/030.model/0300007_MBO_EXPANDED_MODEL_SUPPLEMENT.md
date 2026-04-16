# ============================================================
# MBO EXPANDED MODEL SUPPLEMENT
# PRIORITY A + B FIXED
# ============================================================

status: canonical
application: Mbo
layer: model
owner: Boss
prepared_by: Zero

additional_entities:

  manager_comment_template:
    fields:
      - manager_comment_template_id
      - company_id
      - department_id
      - template_name
      - template_body
      - language_code
      - active_flag

  objective_template:
    fields:
      - objective_template_id
      - company_id
      - department_id
      - template_scope
      - template_name
      - objective_category
      - objective_type
      - default_quantitative_target
      - default_qualitative_target
      - default_success_criteria
      - default_priority
      - default_weight
      - language_code
      - active_flag

  review_cadence_preset:
    fields:
      - review_cadence_preset_id
      - company_id
      - preset_name
      - cadence_type
      - interval_rule
      - language_code
      - active_flag

  interview_memo:
    fields:
      - interview_memo_id
      - objective_id
      - memo_type
      - memo_at
      - author_user_id
      - memo_body
      - language_code

  evidence_reference:
    fields:
      - evidence_reference_id
      - objective_id
      - progress_log_id
      - review_log_id
      - reference_type
      - reference_uri
      - reference_label
      - uploaded_at

  objective_task_link:
    fields:
      - objective_task_link_id
      - objective_id
      - linked_task_id
      - link_role
      - linked_at

  objective_project_link:
    fields:
      - objective_project_link_id
      - objective_id
      - linked_project_id
      - link_role
      - linked_at

  evaluation_calibration_record:
    fields:
      - evaluation_calibration_record_id
      - period_id
      - objective_id
      - evaluation_id
      - calibration_status
      - calibration_comment
      - calibrated_by_user_id
      - calibrated_at

  aggregation_export_job:
    fields:
      - aggregation_export_job_id
      - requested_by_user_id
      - export_scope
      - export_format
      - requested_at
      - completed_at
      - job_status
      - output_uri

  reminder_batch_job:
    fields:
      - reminder_batch_job_id
      - requested_by_user_id
      - reminder_type
      - target_scope
      - requested_at
      - completed_at
      - job_status

  ERP_resend_job:
    fields:
      - ERP_resend_job_id
      - transmission_history_id
      - requested_by_user_id
      - resend_reason
      - requested_at
      - completed_at
      - resend_status

