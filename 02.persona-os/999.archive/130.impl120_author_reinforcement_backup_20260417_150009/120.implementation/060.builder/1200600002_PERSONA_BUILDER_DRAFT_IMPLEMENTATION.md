# ============================================================
# PERSONA BUILDER DRAFT IMPLEMENTATION
# IMPLEMENTATION-READY REFLECTED VERSION
# ============================================================

status: implementation-ready-reflected
canonical: true
scope: PersonaOS / builder draft aggregate
prepared_by: Zero
prepared_for: Boss
date: 2026-04-16

## Draft aggregate

Canonical aggregate:
`builder_draft`

Fields:
- `builder_draft_id`
- `persona_root_id`
- `draft_code`
- `draft_version`
- `state`
- `current_change_set_id`
- `latest_validation_run_id`
- `latest_approval_request_id`
- `published_release_id`
- `created_by_actor_id`
- `updated_by_actor_id`
- `created_at`
- `updated_at`

Allowed draft states:
- `drafting`
- `validation-running`
- `validation-failed`
- `validation-passed`
- `approval-requested`
- `approved`
- `rejected`
- `publish-preparing`
- `published`
- `archived`

## Section set

Canonical section codes:
- `identity`
- `profile`
- `speech_style`
- `knowledge_scope`
- `behavior_rules`
- `capabilities`
- `guardrails`
- `memory_policy`
- `asset_binding`
- `visual_manifest`
- `release_notes`

## Draft rules

- one active mutable draft per `persona_root_id` and `draft_code`
- section save increments section revision
- change set snapshot captures all modified sections since previous baseline
- publish is allowed only from `approved`
- published draft becomes immutable
- archived draft cannot re-enter mutable states

## Concurrency

- optimistic concurrency required through `draft_version`
- stale version update returns `persona_builder_version_conflict`
- publish lock is exclusive per `persona_root_id`
