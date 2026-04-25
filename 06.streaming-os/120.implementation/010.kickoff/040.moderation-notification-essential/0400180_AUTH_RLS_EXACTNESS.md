# ============================================================
# K4 AUTH RLS EXACTNESS
# ============================================================

status: exact-auth-rls
domain: moderation-notification
prepared_by: Zero
owner: Boss

review_pipeline_rules:
- review queue families are readable by assigned_reviewer, moderation_operator, platform_operator, runtime_worker
- human task mutation remains assignment-scoped or moderation-scoped
- affected requester sees only limited outcome subset, never raw workspace
- review alert and escalation alert are assignment/moderation scoped

moderation_rules:
- comment creation allowed for authenticated actor through canonical path
- comment moderation state update allowed only for moderation/review authority
- report creation allowed for authenticated reporting subject
- appeal creation allowed for affected requester
- restoration decision allowed only for review/moderation authority
- author cannot arbitrarily overwrite moderation state

notification_rules:
- notification list is recipient-scoped
- read_flag mutation is recipient-scoped only
- platform_event_records are not public read objects
- notification_delivery_states remain runtime/integration scope
- review alerts remain separate from general notification semantics

global_principles:
- moderation authority is distinct from ownership authority
- recipient visibility is distinct from runtime delivery visibility
- support-path access must remain explicit and auditable
- raw delivery logs must not become recipient-facing notification objects

deny_rules:
- no unrelated creator/viewer read of raw review queues
- no arbitrary viewer read of raw report/appeal internals
- no public read of platform_event_records
- no recipient-side mutation of delivery-state internals
- no end-user direct retry/fanout execution path

required_resolution_inputs:
- actor identity
- actor class
- assignment relation
- affected-requester relation
- recipient relation
- support path flag
- runtime/integration execution role

open_for_sql_precision_only:
- exact policy SQL
- exact limited-outcome projection naming
- exact support-path audit linkage
- exact runtime mutation column set
