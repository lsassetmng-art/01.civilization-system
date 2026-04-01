# ============================================================
# PARAMETER TABLE IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: parameter-table-implementation
component: parameter-table-implementation

owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Define representative parameter-table families
for Civilization.

# ============================================================
# 2. TICK FAMILY EXAMPLE
# ============================================================

Representative families:

- tick_family_micro
- tick_family_standard
- tick_family_background
- tick_family_long_cycle

# ============================================================
# 3. SPEED FAMILY EXAMPLE
# ============================================================

Representative families:

- speed_paused
- speed_normal
- speed_accelerated_low
- speed_accelerated_high
- speed_batch_catchup

# ============================================================
# 4. THRESHOLD FAMILY EXAMPLE
# ============================================================

Representative families:

- congestion_threshold_low
- congestion_threshold_medium
- congestion_threshold_high

- disaster_severity_minor
- disaster_severity_major
- disaster_severity_critical

- recovery_tier_basic
- recovery_tier_assisted
- recovery_tier_intensive

# ============================================================
# 5. FINAL RULE
# ============================================================

Parameter table implementation must remain:

- tiered
- threshold-aware
- comparable
- tunable
