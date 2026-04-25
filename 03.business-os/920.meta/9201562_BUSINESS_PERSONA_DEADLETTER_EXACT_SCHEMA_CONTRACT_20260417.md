# ============================================================
# BUSINESS PERSONA DEADLETTER EXACT SCHEMA CONTRACT
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the exact schema contract for dead-lettered Business-origin persona commercial events.

table_name:
- business_persona_event_deadletter

primary_key:
- deadletter_id

required_columns:
- deadletter_id
  - type: uuid or canonical string id
  - nullable: no
- outbox_id
  - type: id reference
  - nullable: no
- event_id
  - type: string
  - nullable: no
- event_type
  - type: string enum
  - nullable: no
- idempotency_key
  - type: string
  - nullable: no
- payload_version
  - type: string
  - nullable: no
- payload_json
  - type: json/jsonb
  - nullable: no
- deadletter_reason_code
  - type: string
  - nullable: no
- deadletter_reason_detail
  - type: string
  - nullable: yes
- retry_count
  - type: integer
  - nullable: no
- dead_lettered_at
  - type: timestamp with timezone
  - nullable: no
- last_delivery_target
  - type: string
  - nullable: yes
- producer_trace_id
  - type: string
  - nullable: yes

required_indexes:
- index(dead_lettered_at)
- index(event_type)
- index(deadletter_reason_code)
- index(event_id)

schema_rule:
- dead-letter storage preserves authoritative event material for inspection and replay workflows
- dead-letter material must not be rewritten into a different business truth identity

result:
- Dead-letter exact schema contract fixed as a canonical meta record.
