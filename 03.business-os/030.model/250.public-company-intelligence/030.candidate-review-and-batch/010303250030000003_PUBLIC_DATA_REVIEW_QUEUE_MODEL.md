# ============================================================
# PUBLIC DATA REVIEW QUEUE MODEL
# ============================================================

status: canonical
system: business-os
layer: model
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

entity: public_data_review_queue
primary_key: public_data_review_queue_id

truth_boundary:
- authoritative queue for human-governed review

write_authority:
- review workbench and governed reviewers

major_states:
- queued|in_review|approved|rejected|escalated

relations:
- company_normalization_candidate via company_candidate_id
- officer_normalization_candidate via officer_candidate_id
- public_data_change_audit via audit trail

fields:
- review_reason_code text
- priority enum high|normal|low
- queue_state enum queued|in_review|approved|rejected|escalated
- assignee text nullable
- requested_publish_mode enum active|hold
- reviewer_note text nullable
- created_at timestamptz
- updated_at timestamptz

model_rules:
- review queue items never disappear without audit
- escalation preserves full history
