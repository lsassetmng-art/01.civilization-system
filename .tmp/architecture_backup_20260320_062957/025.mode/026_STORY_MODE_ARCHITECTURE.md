# ============================================================
# STORY MODE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Story mode is a scenario-based experience unlocked permanently
via access conditions.

entry_condition:
- feature_unlock exists for story_mode

unlock_source:
- aerial_access_token
- login_bonus
- future events if defined

rules:
- story mode must not depend on current item possession
- unlock must be permanent unless explicitly revoked by system rule
- story mode visibility depends only on feature_unlock state

event_flow:
- login_bonus_granted
- access_item_granted
- feature_unlock_created
- story_mode_unlocked
- story_mode_visible

final_rule:
Story mode must be permanently unlocked once access conditions are met.
