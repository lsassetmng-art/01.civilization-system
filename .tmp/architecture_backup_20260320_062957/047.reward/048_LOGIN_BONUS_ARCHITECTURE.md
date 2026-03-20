# ============================================================
# LOGIN BONUS ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Login bonus grants rewards based on consecutive login streak.

core_entities:
- login_streak
- reward_schedule

example_rule:
- day_7 → aerial_access_token

rules:
- streak must be calculated explicitly
- missed day resets streak unless configured otherwise
- reward must not be granted twice for same milestone

event_flow:
- player_logged_in
- login_streak_updated
- reward_condition_checked
- reward_granted

final_rule:
Login rewards must be deterministic and non-duplicative.
