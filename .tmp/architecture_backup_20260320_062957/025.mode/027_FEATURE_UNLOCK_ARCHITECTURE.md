# ============================================================
# FEATURE UNLOCK ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Feature unlock represents permanent access state for features.

examples:
- story_mode
- special UI
- advanced systems

core_entities:
- feature_unlock

feature_unlock:
- player_id
- feature_id
- unlocked_at
- source_type

source_type:
- LOGIN_BONUS
- PURCHASE
- EVENT
- ADMIN

rules:
- unlock must be explicitly created
- unlock must persist independently of items
- duplicate unlock must be prevented
- unlock must be auditable

event_flow:
- unlock_condition_met
- feature_unlock_requested
- feature_unlock_created

final_rule:
Feature access must be controlled by explicit, persistent unlock records.
