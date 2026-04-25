# ============================================================
# PUBLIC COMPANY INTELLIGENCE BUSINESS SCHEMA STYLE ALIGNMENT
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

style_rules:
- schema name is business
- table names use lowercase snake_case
- primary key columns use <table_name>_id only when singular table intent is clear
- timestamps use timestamptz and *_at naming
- enum-like status columns use *_state or *_status
- foreign keys use target table singular id naming
- projection objects use v_ prefix for views
- non-executable design SQL must state its execution posture explicitly

alignment_result:
- earlier style variants are superseded by this file
