# ============================================================
# PUBLIC COMPANY INTELLIGENCE BUSINESS SCHEMA DDL DRAFT
# ============================================================

status: canonical
system: business-os
layer: implementation
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
db_reviewer_required:
- 佐藤（DB担当）
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

note:
- This file is a canonical design draft for later executable SQL authoring.
- It is intentionally non-executable here and exists to freeze table intent.

ddl_outline:
```sql
create table business.public_source_registry ( ... );
create table business.company_public_source_snapshot ( ... );
create table business.officer_public_source_snapshot ( ... );
create table business.company_public_profile ( ... );
create table business.company_officer_profile ( ... );
create table business.public_profile_source_link ( ... );
create table business.company_normalization_candidate ( ... );
create table business.officer_normalization_candidate ( ... );
create table business.public_data_review_queue ( ... );
create table business.company_batch_job ( ... );
create table business.company_batch_job_log ( ... );
create table business.public_data_change_audit ( ... );
```

design_rule:
- executable SQL must follow this structure unless a newer explicit canonical DDL file supersedes it
