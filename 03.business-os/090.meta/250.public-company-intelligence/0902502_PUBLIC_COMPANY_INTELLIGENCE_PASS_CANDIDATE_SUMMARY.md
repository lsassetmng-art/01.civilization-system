# ============================================================
# PUBLIC COMPANY INTELLIGENCE
# PASS CANDIDATE SUMMARY
# ============================================================

status: pass-ready
system: business-os
domain: public-company-intelligence
db_position: persona-db / business schema
layer: 090.meta
owner: Boss
prepared_by: Zero
note:
- summary for future review / restart
- non-execution

# ============================================================
# 0. PASS CANDIDATE SUMMARY
# ============================================================

Public Company Intelligence has been designed as:

- a Persona-side BusinessOS common foundation
- stored in the existing business schema
- consumed by NameCardManager and future Persona-side business apps
- source-backed
- review-aware
- batch-centered
- non-ERP-owned

# ============================================================
# 1. CORE DOMAIN ELEMENTS
# ============================================================

core_domain_elements:
- public source registry
- company/officer raw snapshots
- reusable public company profile
- reusable public officer profile
- evidence link tables
- normalization candidate tables
- review queue
- batch job and job log
- change audit

# ============================================================
# 2. FIXED CONSUMER SURFACE
# ============================================================

fixed_consumer_surface:
- company grouping support
- migration enrichment support
- publication preflight support
- public company view support
- officer candidate support
- lightweight refresh request
- review queue read/action
- batch job monitoring read

# ============================================================
# 3. STRATEGIC DECISION
# ============================================================

strategic_decision:
- all application-side work remains Persona-side
- therefore this domain belongs in Persona-side business schema
- ERP is not the owning side

# ============================================================
# 4. PASS CONDITION
# ============================================================

pass_condition:
- pass this design forward without reopening core placement or architecture
- move directly into execution-SQL review and API implementation review next

# ============================================================
# 5. DECISION PACKAGE NOW FIXED
# ============================================================

decision_package_now_fixed:
- primary key default: uuid + gen_random_uuid() default
- state columns: text + check constraints
- freshness policy: source-type dependent
- reviewer_id: uuid
- outbox first step: none
- view strategy first step: normal views
- review queue mutation first step: row update
- source priority: field-specific

# ============================================================
# 6. HANDOFF DIRECTION
# ============================================================

handoff_direction:
- use 1202523_PUBLIC_COMPANY_INTELLIGENCE_HANDOFF_FINAL.md as the main restart document
- use 1202524_PUBLIC_COMPANY_INTELLIGENCE_REVIEWED_EXECUTION_SQL_ARTIFACT_DRAFT.md as execution-SQL review base
- use 1202525_PUBLIC_COMPANY_INTELLIGENCE_REVIEWED_API_IMPLEMENTATION_ARTIFACT_DRAFT.md as API implementation review base
- next work should review execution SQL and API implementation artifacts before any real run
