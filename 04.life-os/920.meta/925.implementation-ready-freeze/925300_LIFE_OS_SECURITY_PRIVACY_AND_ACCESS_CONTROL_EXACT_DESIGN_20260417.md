# ============================================================
# LIFE OS SECURITY PRIVACY AND ACCESS CONTROL EXACT DESIGN
# ============================================================

status: canonical-draft
system: life-os
layer: 080.policy / 100.security / 110.infrastructure
document_code: 925300
owner: Boss
prepared_by: Zero
prepared_at: 2026-04-17

purpose:
- Fix the exact security, privacy, access control, and traceability model for LifeOS.
- Define minimum protections required before any implementation can be allowed.
- Keep user-owned life data separated from operator and system data.

security principles:
- least privilege
- user-owned data boundary
- explicit role separation
- auditability by default
- idempotent write safety
- no silent data mutation
- secrets never stored in client code
- no cross-user reads without explicit authorization model

data classes:
- class_a_canonical_fact
- class_b_derived_projection
- class_c_operational_control
- class_d_review_and_audit
- class_e_integration_secret_reference

classification rules:
- canonical fact:
  - habit logs
  - health metric logs
  - goal events
  - check-in facts
- derived projection:
  - dashboard aggregates
  - trend windows
  - suggestion cards
- operational control:
  - outbox status
  - sync cursors
  - job registry
- review and audit:
  - review cases
  - correction resolutions
  - operator logs
- integration secret reference:
  - connector installation metadata
  - token reference handles
  - rotated secret pointer ids

access roles:
- anonymous
- authenticated_user
- reviewer
- operator
- admin
- audit_reader
- service_worker
- integration_worker

role boundaries:
- authenticated_user:
  - read and write own life records
  - read own analytics
  - submit correction requests
- reviewer:
  - read assigned review queues only
  - no bulk raw export of all life data
- operator:
  - replay and resolve operational incidents
  - no access to unrelated user content beyond case scope
- admin:
  - manage policy and access configuration
  - cannot bypass audit logging
- audit_reader:
  - read audit artifacts only
- service_worker:
  - internal processing for jobs and projections
- integration_worker:
  - ingest and sync scoped connector data

authentication exactness:
- user auth via platform identity layer
- service auth via signed internal credentials
- admin actions require elevated session assurance
- sensitive admin endpoints require step-up verification flag

authorization exactness:
- every endpoint maps to one required role
- every user data read filters by owner user_id
- every operator read requires case scope or operational scope
- review detail endpoint must verify assignment or permitted queue role
- export endpoints require explicit allowlist and audit logging

privacy exactness:
- no raw secret tokens in life schema
- only token reference handles and metadata pointers
- response payloads exclude internal audit-only notes
- log redaction for PII-like free text fields where copied into ops logs
- analytics explanation payloads include only minimal source references
- deleted or hidden suggestions do not remove source facts

idempotency and replay safety:
- every mutating API uses idempotency key
- repeated identical request returns same logical outcome
- repeated conflicting payload under same idempotency key must fail deterministically
- worker replay cannot create duplicate canonical facts

audit requirements:
- write operation audit
- review decision audit
- correction audit
- admin configuration change audit
- outbox replay audit
- failed authorization audit for sensitive endpoints

minimum audit fields:
- audit_event_id
- actor_type
- actor_id
- actor_role
- action_type
- target_type
- target_id
- request_id
- idempotency_key nullable
- result_code
- created_at
- sanitized_payload_json

secret handling:
- connector secrets stored in external secret manager or platform secret layer
- database stores secret_reference_id only
- secret rotation must not require canonical fact rewrite
- secret read access limited to integration_worker path

encryption and transport:
- tls required for all network transport
- at-rest encryption delegated to platform storage guarantees
- backups must inherit protected storage controls
- debug dumps with user payload are forbidden in shared locations

frontend security rules:
- no secrets in app bundle
- no admin screens in public route tree
- access denial handled before data fetch display
- client-side caches keyed by user id and tenant context
- clear cache on identity switch or logout

backend security rules:
- role guard before business logic
- ownership filter before record resolution
- audit write after every sensitive action
- sanitized error responses for auth failures
- internal exception detail only in server logs

integration security rules:
- inbound ingestion validates connector installation scope
- replay requires bounded window or specific batch id
- sync cursors are per user per connector
- dead-letter payloads redact external sensitive fragments when surfaced in operator UI

release gates:
- endpoint-to-role matrix complete
- audit coverage matrix complete
- secret-handling paths documented
- no endpoint bypasses ownership filter
- no debug-only route remains enabled in production configuration

not_allowed_before_implementation:
- shipping without audit trail
- storing raw connector tokens in life schema
- broad admin query without scoped guard
- cross-user dashboard query path
- mutable overwrite of canonical fact rows

