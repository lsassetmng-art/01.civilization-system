# ============================================================
# KICKOFF PRE-SQL REVIEW CHECKLIST
# ============================================================

status: canonical-checklist
layer: implementation
domain: kickoff
system: StreamingOS
prepared_by: Zero
owner: Boss

purpose:
This checklist must be satisfied before SQL precision review starts.

reviewer_rule:
- Sato(DB reviewer) participation is required

checklist:

global_preconditions:
- K1 through K6 refinement packs are present
- K1 through K6 gate state is pass_with_wording_refinement_only
- no active semantic-gap hold remains
- canonical root structure is normalized
- active markdown tree is canonicalized

connection_rule_confirmation:
- Persona-side DB work uses PERSONA_DATABASE_URL
- ERP-side DB work or ERP send work uses DATABASE_URL

sql_scope_confirmation:
- SQL review is precision review only at first
- no execution occurs during checklist completion
- DDL drafting order follows kickoff SQL preparation entry map

domain_review_entry_order:
- K1 foundation
- K2 asset-publish
- K3 creator-viewer-essential
- K4 moderation-notification-essential
- K5 corporate-essential
- K6 monetization-reaction-ranking-ad

artifact_readiness:
- SQL precision decision pre-sheet exists for target domain
- DDL readiness memo exists for target domain
- payload to DDL mapping memo exists for target domain
- relevant decision pack exists for target domain

review_boundary_rules:
- do not reopen frozen domain meaning during SQL precision review unless a true contradiction is found
- treat wording-only items as non-blocking
- treat SQL type/index/policy precision as in-scope
- treat implementation coding as out-of-scope

completion_condition:
- SQL review can start only after this checklist is accepted as satisfied
