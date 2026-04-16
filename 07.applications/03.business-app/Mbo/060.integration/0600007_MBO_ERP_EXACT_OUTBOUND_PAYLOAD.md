# ============================================================
# MBO ERP EXACT OUTBOUND PAYLOAD
# ============================================================

status: canonical
application: Mbo
layer: integration
owner: Boss
prepared_by: Zero

purpose:
Fixes the exact outbound payload shape
from Mbo to ERP for finalized evaluation transfer.

integration_position:
- Mbo is the preparation front
- ERP is the system of record for received business-side data
- only finalized and validated records may be sent

# ============================================================
# 1. ENVELOPE
# ============================================================

endpoint_direction:
- outbound from Mbo to ERP

payload_format:
  event_name: mbo.evaluation.finalized.v1
  sent_at: string
  request_id: string
  source_system: Mbo
  target_system: ERP
  payload: object

# ============================================================
# 2. EXACT PAYLOAD
# ============================================================

exact_payload:
  event_name: mbo.evaluation.finalized.v1
  sent_at: string
  request_id: string
  source_system: Mbo
  target_system: ERP
  payload:
    transmission_id: string
    transmission_version: number

    company_id: string
    period_id: string
    objective_id: string
    evaluation_id: string

    owner_user_id: string
    manager_user_id: string
    evaluator_user_id: string

    objective_snapshot:
      title: string
      objective_category: string
      objective_type: string
      quantitative_target: string
      qualitative_target: string
      success_criteria: string
      priority: string
      weight: number
      progress_percent: number
      start_date: string
      due_date: string
      language_code: string
      currency_code: string

    evaluation_snapshot:
      evaluation_score: number
      evaluation_comment: string
      confirmed_at: string
      final_lock_flag: boolean

    review_summary:
      latest_review_type: string
      latest_reviewed_at: string
      latest_review_result: string
      total_review_count: number

    linkage_summary:
      linked_task_count: number
      linked_project_count: number
      evidence_reference_count: number

    ERP_control:
      send_reason: finalized_evaluation_transfer
      resend_flag: boolean
      resend_of_transmission_id: string
      sender_user_id: string

# ============================================================
# 3. REQUIRED FIELDS
# ============================================================

required_fields:
- event_name
- sent_at
- request_id
- source_system
- target_system
- payload.transmission_id
- payload.transmission_version
- payload.company_id
- payload.period_id
- payload.objective_id
- payload.evaluation_id
- payload.owner_user_id
- payload.evaluator_user_id
- payload.objective_snapshot.title
- payload.objective_snapshot.objective_category
- payload.objective_snapshot.objective_type
- payload.objective_snapshot.success_criteria
- payload.objective_snapshot.priority
- payload.objective_snapshot.weight
- payload.objective_snapshot.progress_percent
- payload.objective_snapshot.language_code
- payload.objective_snapshot.currency_code
- payload.evaluation_snapshot.evaluation_score
- payload.evaluation_snapshot.evaluation_comment
- payload.evaluation_snapshot.confirmed_at
- payload.evaluation_snapshot.final_lock_flag
- payload.ERP_control.send_reason
- payload.ERP_control.resend_flag
- payload.ERP_control.sender_user_id

# ============================================================
# 4. OPTIONAL FIELDS
# ============================================================

optional_fields:
- payload.manager_user_id
- payload.objective_snapshot.quantitative_target
- payload.objective_snapshot.qualitative_target
- payload.objective_snapshot.start_date
- payload.objective_snapshot.due_date
- payload.review_summary.latest_review_type
- payload.review_summary.latest_reviewed_at
- payload.review_summary.latest_review_result
- payload.ERP_control.resend_of_transmission_id

# ============================================================
# 5. FIELD SEMANTICS
# ============================================================

field_semantics:

  transmission_id:
    meaning:
      Unique outbound transmission identity from Mbo.

  transmission_version:
    meaning:
      Payload schema version for downstream compatibility.

  company_id:
    meaning:
      Company scope for ERP-side business ownership.

  period_id:
    meaning:
      Evaluation period identity in Mbo.

  objective_id:
    meaning:
      Original Mbo objective identity.

  evaluation_id:
    meaning:
      Finalized evaluation identity in Mbo.

  objective_snapshot:
    meaning:
      Snapshot of the finalized objective-side record
      at the moment of outbound transmission.

  evaluation_snapshot:
    meaning:
      Snapshot of the finalized evaluation-side record
      at the moment of outbound transmission.

  review_summary:
    meaning:
      Lightweight summary of review history
      for ERP-side business visibility.

  linkage_summary:
    meaning:
      Count-only summary of linked execution evidence.

  ERP_control:
    meaning:
      Transfer-control fields for ERP processing and resend audit.

# ============================================================
# 6. EXAMPLE PAYLOAD
# ============================================================

example_payload:
  event_name: mbo.evaluation.finalized.v1
  sent_at: "2026-04-12T11:30:00+09:00"
  request_id: "req_mbo_0001"
  source_system: "Mbo"
  target_system: "ERP"
  payload:
    transmission_id: "tx_0001"
    transmission_version: 1
    company_id: "8f3c2e6a-9c1b-4c7a-a5d2-1c8c4b7f9e12"
    period_id: "prd_2026_h1"
    objective_id: "obj_0001"
    evaluation_id: "eval_0001"
    owner_user_id: "user_001"
    manager_user_id: "user_010"
    evaluator_user_id: "user_020"
    objective_snapshot:
      title: "Improve monthly team throughput"
      objective_category: "performance"
      objective_type: "MBO"
      quantitative_target: "120 cases per month"
      qualitative_target: "Improve operating consistency"
      success_criteria: "Monthly throughput and quality thresholds achieved"
      priority: "high"
      weight: 30
      progress_percent: 92
      start_date: "2026-01-01"
      due_date: "2026-06-30"
      language_code: "ja"
      currency_code: "JPY"
    evaluation_snapshot:
      evaluation_score: 4.2
      evaluation_comment: "Target substantially achieved with stable execution."
      confirmed_at: "2026-06-30T18:00:00+09:00"
      final_lock_flag: true
    review_summary:
      latest_review_type: "midterm"
      latest_reviewed_at: "2026-04-15T10:00:00+09:00"
      latest_review_result: "continue"
      total_review_count: 4
    linkage_summary:
      linked_task_count: 8
      linked_project_count: 2
      evidence_reference_count: 5
    ERP_control:
      send_reason: "finalized_evaluation_transfer"
      resend_flag: false
      resend_of_transmission_id: ""
      sender_user_id: "user_900"

# ============================================================
# 7. SEND ELIGIBILITY RULES
# ============================================================

send_eligibility_rules:
- objective state must be finalized
- evaluation must be confirmed
- final_lock_flag must be true
- actor must have ERP transmit permission
- required payload fields must be present
- language_code must be valid
- currency_code must be valid
- transmission must be auditable

# ============================================================
# 8. RESEND RULES
# ============================================================

resend_rules:
- resend is allowed only after ERP_failed state
- resend requires explicit resend_reason
- resend_flag must be true on resend payload
- resend_of_transmission_id must reference prior failed transmission
- resend must not overwrite prior history
