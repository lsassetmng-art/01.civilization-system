# ============================================================
# LIFE OS DEPLOYMENT CONFIG AND ENVIRONMENT EXACT DESIGN
# ============================================================

status: canonical-draft
system: life-os
layer: 110.infrastructure / 130.development
document_code: 925310
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix the exact deployment, configuration, environment, and release shape for LifeOS.
- Make implementation-ready infrastructure assumptions explicit without executing them.
- Align build and release preparation with Termux, canonical folder rules, and persona-side DB rules.

environment rules:
- persona-side database work uses PERSONA_DATABASE_URL
- erp-side database work uses DATABASE_URL
- this document is design-only
- no environment mutation is performed by this document

runtime environments:
- local_design_review
- local_dev
- shared_dev
- staging
- production

required environment variables:
- PERSONA_DATABASE_URL
- DATABASE_URL
- LIFE_API_BASE_URL
- LIFE_WEB_BASE_URL
- LIFE_JOB_RUNNER_MODE
- LIFE_OUTBOX_BATCH_SIZE
- LIFE_SYNC_MAX_RETRY
- LIFE_ALERT_EVALUATION_INTERVAL_SEC
- LIFE_IDEMPOTENCY_TTL_HOURS
- LIFE_TRACE_HEADER_NAME
- LIFE_SECRET_PROVIDER_MODE

environment ownership:
- frontend:
  - public-safe runtime config only
- backend api:
  - database urls
  - secret references
  - job settings
  - trace config
- workers:
  - outbox config
  - sync retry config
  - queue config
- operations:
  - release flags
  - maintenance mode
  - review queue overrides

config classes:
- immutable build config
- deploy-time environment config
- runtime operator config
- user-level preference config

forbidden config patterns:
- hard-coded secret in repository
- environment-specific constants duplicated across layers
- production-only behavior hidden behind undocumented flag
- frontend exposure of internal worker flags

service split:
- life-web
- life-api
- life-worker-outbox
- life-worker-sync
- life-worker-analytics
- life-ops-console

build outputs:
- web static bundle
- api service artifact
- worker artifacts
- ops console artifact
- migration package
- verify package

deployment units:
- frontend deployment
- api deployment
- worker deployment
- migration execution package
- verify execution package

startup checks:
- required env vars present
- database connectivity validated in non-production-safe mode only during controlled checks
- route registry load success
- queue client load success
- secret provider mode recognized
- schema version compatibility check

readiness checks:
- api:
  - route registry ready
  - db health reachable
  - worker backlog not blocking startup
- worker:
  - queue connectivity ready
  - lock acquisition path healthy
  - dead-letter store reachable
- frontend:
  - config bootstrap ready
  - api base url present

release sequence:
- review design freeze bundle
- prepare migration package
- prepare verify package
- deploy api and workers
- run verify package
- enable user-facing routes
- monitor alerts and rollback window

rollback sequence:
- disable write entrypoints if severe issue
- stop replay jobs
- revert service artifacts
- preserve audit history
- run post-rollback verification checklist

observability exactness:
- request_id required
- trace_id propagation required
- idempotency_key logged for mutating endpoints
- job_run_id required for workers
- alert_case_id attached in alert delivery logs
- replay_request_id attached in replay logs

log channels:
- api_access
- api_error
- worker_job
- sync_worker
- outbox_worker
- admin_action
- security_audit
- release_event

metrics:
- api_latency_p95
- write_success_rate
- idempotency_conflict_rate
- outbox_backlog_count
- sync_failure_rate
- alert_open_count
- review_queue_pending_count
- daily_snapshot_generation_duration

feature flags:
- life_dashboard_enabled
- life_daily_checkin_enabled
- life_integrations_enabled
- life_admin_review_enabled
- life_alert_delivery_enabled
- life_suggestion_cards_enabled

flag rules:
- flags must be documented
- flags must have owner
- expired flags must be removed
- flags must not replace access control

termux generation rules:
- use absolute paths
- use $HOME/.tmp for temp files
- prefer one-block scripts
- no cd-dependent path assumptions
- no destructive action without explicit confirmation from Boss

acceptance gates:
- env var matrix documented
- startup/readiness checks defined
- release and rollback sequences defined
- observability keys fixed
- feature flags documented with ownership

