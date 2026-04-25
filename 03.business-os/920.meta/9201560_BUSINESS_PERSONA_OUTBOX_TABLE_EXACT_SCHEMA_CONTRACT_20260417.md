# ============================================================
# BUSINESS PERSONA OUTBOX TABLE EXACT SCHEMA CONTRACT
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the exact schema contract for the Business-origin persona commercial outbox table.

table_name:
- business_persona_event_outbox

primary_key:
- outbox_id

required_columns:
- outbox_id
  - type: uuid or canonical string id
  - nullable: no
- event_id
  - type: string
  - nullable: no
- event_type
  - type: string enum
  - nullable: no
- source_system
  - type: string
  - nullable: no
  - fixed_value: BusinessOS
- payload_version
  - type: string
  - nullable: no
- idempotency_key
  - type: string
  - nullable: no
- producer_trace_id
  - type: string
  - nullable: no
- subject_type
  - type: string
  - nullable: no
- subject_id
  - type: string
  - nullable: no
- tenant_scope
  - type: string
  - nullable: yes
- payload_json
  - type: json/jsonb
  - nullable: no
- enqueue_status
  - type: string enum
  - nullable: no
- retry_count
  - type: integer
  - nullable: no
- created_at
  - type: timestamp with timezone
  - nullable: no
- next_attempt_at
  - type: timestamp with timezone
  - nullable: yes
- last_attempt_at
  - type: timestamp with timezone
  - nullable: yes
- delivered_at
  - type: timestamp with timezone
  - nullable: yes
- dead_lettered_at
  - type: timestamp with timezone
  - nullable: yes

required_uniqueness:
- unique(event_id)
- unique(idempotency_key) when semantics are global
- at minimum, enforce uniqueness sufficient to prevent duplicate authoritative outbox identity

required_indexes:
- index(enqueue_status, next_attempt_at)
- index(subject_type, subject_id)
- index(created_at)
- index(event_type)

schema_rule:
- outbox stores authoritative transportable Business-origin event material
- payload_json must preserve the exact contract payload

result:
- Outbox table exact schema contract fixed as a canonical meta record.
