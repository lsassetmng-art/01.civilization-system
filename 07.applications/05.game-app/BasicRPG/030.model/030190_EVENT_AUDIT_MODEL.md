# ============================================================
# EVENT AUDIT MODEL
# ============================================================

table_candidate: rpg_event_audit

key_fields:
- audit_id
- player_id
- event_type
- event_source
- reference_id
- payload_json
- actor_type
- occurred_at

priority_event_groups:
- quest_state_changed
- battle_resolved
- reward_granted
- purchase_recorded
- entitlement_changed
- save_slot_updated
- locale_changed
