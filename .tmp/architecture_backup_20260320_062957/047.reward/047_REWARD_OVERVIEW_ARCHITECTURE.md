# ============================================================
# REWARD OVERVIEW ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: reward

definition:
Reward system distributes items or benefits based on player activity.

reward_types:
- login_bonus
- achievement_reward
- event_reward

rules:
- rewards must be explicitly granted
- reward conditions must be deterministic
- duplicate reward must be prevented unless allowed

final_rule:
Rewards must be event-driven and condition-bound.
