# ============================================================
# CORPORATE PAYLOAD TO DDL MAPPING MEMO
# ============================================================

status: canonical-mapping-memo
layer: implementation
domain: corporate-essential
system: StreamingOS
prepared_by: Zero
owner: Boss

mapping:
- channel_record -> channel_records
- channel profile fields -> channel_profile_states
- corporate_channel_oversight_record -> corporate_channel_oversight_records
- affiliated_streamer_reference -> affiliated_streamer_references

memo_notes:
- corporate dashboard projection is not a single base table
- oversight summary fields may map to stored summaries or later computed projections
