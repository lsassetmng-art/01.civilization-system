# ============================================================
# BUSINESS PERSONA CONSUMER CHECKPOINT EXACT SCHEMA CONTRACT
# ============================================================

status: canonical-meta
system: business-os
layer: meta
owner: Boss
prepared_by: Zero
date: 2026-04-17

purpose:
- Fix the exact schema contract for Persona downstream consumer checkpoint state.

table_name:
- business_persona_event_consumer_checkpoint

primary_key:
- checkpoint_id

required_columns:
- checkpoint_id
  - type: uuid or canonical string id
  - nullable: no
- consumer_system
  - type: string
  - nullable: no
  - expected_value: PersonaOS
- event_id
  - type: string
  - nullable: no
- idempotency_key
  - type: string
  - nullable: no
- ack_status
  - type: string enum
  - nullable: no
- processed_at
  - type: timestamp with timezone
  - nullable: yes
- consumer_trace_id
  - type: string
  - nullable: yes
- error_code
  - type: string
  - nullable: yes
- error_message
  - type: string
  - nullable: yes
- created_at
  - type: timestamp with timezone
  - nullable: no
- updated_at
  - type: timestamp with timezone
  - nullable: no

required_uniqueness:
- unique(consumer_system, event_id)
- unique(consumer_system, idempotency_key)

required_indexes:
- index(ack_status, updated_at)
- index(processed_at)

schema_rule:
- checkpoint state tracks downstream consumption identity and deduplication
- checkpoint table does not replace Business truth
- checkpoint table exists to preserve consumer idempotency and transport observability

result:
- Consumer checkpoint exact schema contract fixed as a canonical meta record.
