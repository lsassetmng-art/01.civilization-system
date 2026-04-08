# ============================================================
# SNAPSHOT
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona snapshots.

# 2. CORE ENTITIES

- persona_snapshot
- snapshot_version
- snapshot_content_ref
- snapshot_release_state

# 3. STATE MODEL

persona_snapshot:
- snapshot_id
- persona_id
- snapshot_type_code
- created_at
- snapshot_status

snapshot_version:
- version_id
- snapshot_id
- version_code
- hash_value
- version_status

snapshot_content_ref:
- content_ref_id
- snapshot_id
- content_type_code
- content_scope
- content_status

snapshot_release_state:
- release_state_id
- snapshot_id
- release_status
- released_at
- release_scope

# 4. INTEGRITY RULES

- snapshot version must be explicit
- content references must belong to one snapshot
- release state must belong to one snapshot
- released snapshot must preserve hash integrity

