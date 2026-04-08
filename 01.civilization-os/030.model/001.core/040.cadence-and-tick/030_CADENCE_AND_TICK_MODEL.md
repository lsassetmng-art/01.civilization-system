# ============================================================
# CADENCE AND TICK
# MODEL
# ============================================================

status: draft
layer: model
domain: 001.core
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for cadence and tick behavior.

# 2. CORE ENTITIES

- cadence_profile
- tick_rule
- speed_family
- execution_window

# 3. STATE MODEL

cadence_profile:
- cadence_code
- cadence_class
- base_interval
- short_interval
- long_interval

tick_rule:
- tick_rule_code
- cadence_code
- actor_scope
- execution_order

speed_family:
- speed_code
- speed_multiplier
- authorization_level

execution_window:
- window_id
- cadence_code
- start_at
- end_at
- window_status

# 4. INTEGRITY RULES

- cadence profile must be explicit
- tick rule must bind to one cadence profile
- unauthorized speed family use is prohibited
- overlapping incompatible execution windows are prohibited

