# ============================================================
# PUBLIC COMPANY INTELLIGENCE
# FINAL DECISION CHECKLIST
# ============================================================

status: canonical
system: business-os
domain: public-company-intelligence
db_position: persona-db / business schema
layer: 120.implementation
owner: Boss
prepared_by: Zero
note:
- design-only
- non-execution
- final decision checklist now resolved

# ============================================================
# 0. PURPOSE
# ============================================================

This checklist records the final resolved decisions before future
execution SQL or implementation artifact work.

# ============================================================
# 1. ALREADY FIXED / DO NOT REOPEN
# ============================================================

fixed_do_not_reopen:
- Persona-side placement
- BusinessOS common foundation ownership
- business schema placement
- ERP non-placement
- NameCardManager as consumer only
- public/internal/inferred boundary separation
- review-required design
- source-backed profile design
- table set
- view set
- support endpoint set
- domain-explicit primary key naming
- uuid id direction
- append-style snapshot/log/audit design
- selective updated_at policy

# ============================================================
# 2. FINAL RESOLVED DECISIONS
# ============================================================

D-01 primary key default strategy:
- resolved: uuid + gen_random_uuid() default as first standard
- result: DB-side generation first

D-02 enum vs text strategy:
- resolved: text + check constraints
- result: no DB enum in first implementation

D-03 freshness threshold:
- resolved: source-type dependent threshold
- registry: 180 days
- official-site: 90 days
- ir: 60 days
- press/news: 30 days
- unknown: 90 days

D-04 reviewer_id type:
- resolved: uuid

D-05 event outbox linkage:
- resolved: no outbox linkage in first implementation

D-06 normal vs materialized view:
- resolved: normal views first

D-07 review queue mutation style:
- resolved: update queue row in place first

D-08 field-specific source priority:
- resolved: field-specific rank
- corporate_number: registry > official-site > ir > others
- canonical_company_name: registry > official-site > ir > others
- website_url: official-site > registry > ir > others
- ir_url: official-site > ir > others
- representative_name: official-site > ir > registry > others
- officer_profile: official-site > ir > registry > others
- phone_number: official-site > registry > others
- postal_address: registry > official-site > others
- business_summary: official-site > ir > others
- listed_status/market_name/security_code: ir > registry > official-site > others

# ============================================================
# 3. RECOMMENDED DEFAULT PACKAGE
# ============================================================

recommended_default_package:
- primary key default: DB default with gen_random_uuid()
- status strategy: text + check constraints
- freshness: source-type dependent
- reviewer_id: uuid
- outbox linkage: no in first implementation
- views: normal views first
- review queue mutation: update in place first
- source priority: field-specific

# ============================================================
# 4. WHAT IS STILL NOT A REOPEN ITEM
# ============================================================

not_reopen:
- architecture
- schema placement
- consumer ownership
- table set
- view set
- endpoint set
- flow structure
- policy structure

# ============================================================
# 5. WHAT REMAINS AFTER THIS CHECKLIST
# ============================================================

remaining_after_checklist:
- exact SQL execution artifact generation
- exact check constraint body generation
- exact API implementation artifact generation

# ============================================================
# 6. SUMMARY
# ============================================================

The final decision surface is now closed.
Future work should move into reviewed execution artifacts,
not back into decision discovery.

<!-- AUTHORITATIVE SUPPLEMENT LINK BEGIN -->
authoritative_supplement:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

precedence_rule:
- On conflict, the supplement wins.

effective_status:
- implementation-ready-by-supplement

reflection_note:
- This file remains as local decomposition/reference content.
- Implementation must follow supplement-first authority until
  full back-port rewriting is completed.
<!-- AUTHORITATIVE SUPPLEMENT LINK END -->
