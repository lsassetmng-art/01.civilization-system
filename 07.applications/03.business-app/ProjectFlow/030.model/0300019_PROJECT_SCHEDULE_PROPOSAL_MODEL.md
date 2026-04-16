# ============================================================
# PROJECT SCHEDULE PROPOSAL MODEL
# ============================================================

status: canonical
layer: model
application: ProjectFlow
owner: Boss
prepared_by: Zero

fields:
- schedule_proposal_id
- company_id
- project_id
- project_template_id
- project_type
- project_start_date
- business_day_rule_key
- proposal_payload_json
- generated_by_user_id
- generated_at
- status

status_candidates:
- proposed
- adjusted
- confirmed
- discarded

notes:
Generated schedule remains proposal-only until confirmed by a human.
