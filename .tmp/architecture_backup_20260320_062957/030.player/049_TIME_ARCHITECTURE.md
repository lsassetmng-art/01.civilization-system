# ============================================================
# TIME ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Time for player life is bound to world time and optional player acceleration rules.

components:
- real_time_progression
- world_time_multiplier
- player_acceleration

rules:
- world time is authoritative
- player acceleration must not directly mutate world time
- acceleration side effects must be explicit

final_rule:
Time effects must be deterministic, bounded, and auditable.
