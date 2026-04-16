# ============================================================
# MBO ERP OUTBOUND PAYLOAD PREVIEW
# ============================================================

status: canonical
application: Mbo
layer: integration
owner: Boss
prepared_by: Zero

purpose:
Preview of outbound payload shape from Mbo to ERP.
Final ERP mapping fixation is handled in a later step.

outbound_payload_preview:
  transmission_id: string
  objective_id: string
  evaluation_id: string
  period_id: string
  owner_user_id: string
  manager_user_id: string
  evaluator_user_id: string
  title: string
  objective_category: string
  objective_type: string
  progress_percent: number
  evaluation_score: number
  evaluation_comment: string
  confirmed_at: string
  language_code: string
  currency_code: string
