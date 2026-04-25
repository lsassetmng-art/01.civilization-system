# ============================================================
# PUBLIC DATA CHANGE AUDIT MODEL
# ============================================================

status: canonical
system: business-os
layer: model
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

entity: public_data_change_audit
primary_key: public_data_change_audit_id

truth_boundary:
- append-only audit for governed mutations

write_authority:
- system and governed reviewers

major_states:
- recorded

relations:
- company_public_profile
- company_officer_profile
- public_data_review_queue
- company_batch_job

fields:
- actor_type enum system|reviewer|admin
- actor_id text
- action_type text
- target_type text
- target_id uuid
- reason_code text nullable
- before_ref text nullable
- after_ref text nullable
- created_at timestamptz

model_rules:
- audit is append-only
- destructive rewrite of audit history is forbidden
