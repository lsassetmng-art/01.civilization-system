# ============================================================
# AI OPERATION DESK QUEUE BUCKET AND SLA EXACT
# ============================================================

status: exact-fixed
app: AIOperationDesk
layer: operations
owner: Boss
prepared_by: Zero

queue_buckets:
- waiting_trigger
- review_pending
- approval_pending
- ready
- running
- failed_retryable
- failed_manual_attention
- completed_recent
- summary_waiting

priority_levels:
- urgent
- high
- normal

priority_rules:
- urgent sorts before high
- high sorts before normal
- within same priority, earlier scheduled_at sorts first
- within unscheduled items, earlier created_at sorts first

sla_guidance:
- review_pending:
  - urgent:
      target: immediate same-shift review
  - high:
      target: same business day
  - normal:
      target: next standard review cycle
- approval_pending:
  - urgent:
      target: immediate same-shift approval
  - high:
      target: same business day
  - normal:
      target: next approval cycle
- failed_retryable:
  - urgent:
      target: immediate retry plan creation
  - high:
      target: same business day retry plan
  - normal:
      target: next retry cycle
- summary_waiting:
  - target:
      next batch window

rules:
- SLA here is operational guidance, not billing promise
- final operational target may be refined later by company policy
