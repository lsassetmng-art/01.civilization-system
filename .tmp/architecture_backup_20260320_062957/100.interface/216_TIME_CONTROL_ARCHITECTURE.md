# ============================================================
# TIME CONTROL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:

Time control governs global and personal time progression.

components:
- real_time_clock
- global_time_multiplier
- personal_acceleration

rules:
- default world progression is real-time
- global multiplier is server controlled
- personal acceleration affects only the triggering player
- growth bonuses are disabled during free acceleration

principle:
- world time and personal acceleration are separate systems
