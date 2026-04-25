# ============================================================
# PUBLIC COMPANY INTELLIGENCE SQL DRAFT BUSINESS SCHEMA NON EXECUTION
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
- This file freezes non-executable SQL intent only.
- Implementation SQL must be reviewed by 佐藤（DB担当） before execution.

sql_outline:
```sql
create table business.company_public_profile (
  company_public_profile_id uuid primary key,
  normalized_company_key text not null unique,
  canonical_company_name text not null,
  corporate_number text null,
  listed_status text not null,
  market_name text null,
  website_url text null,
  ir_url text null,
  phone_number text null,
  postal_address text null,
  representative_name text null,
  confidence_score numeric not null,
  freshness_at timestamptz not null,
  profile_state text not null,
  created_at timestamptz not null,
  updated_at timestamptz not null
);
```

rule:
- executable DDL may extend audit columns consistently but must not contradict the canonical contract
