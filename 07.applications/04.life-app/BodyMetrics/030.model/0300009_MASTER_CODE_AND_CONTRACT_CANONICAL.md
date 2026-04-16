# ============================================================
# MASTER CODE AND CONTRACT CANONICAL
# ============================================================

status: fixed-canonical
runtime_schema:
  name: life

purpose:
  - DB / API / UI で使う主要 code 値を固定する
  - DB enum を使わず、text + contract 方式で統一する
  - 実装時の命名ゆれを防ぐ

code_contracts:

  metric_type:
    allowed_values:
      - weight
      - heart_rate
      - blood_oxygen
      - body_temperature
      - body_fat_percentage
      - blood_pressure
      - sleep_duration
      - steps

  source_type:
    allowed_values:
      - manual
      - apple_health
      - health_connect
      - smartwatch_vendor

  provider_type:
    allowed_values:
      - apple_health
      - health_connect
      - fitbit
      - garmin
      - samsung

  goal_type:
    allowed_values:
      - target_weight
      - step_target
      - sleep_target
      - blood_pressure_range

  activity_type:
    allowed_values:
      - steps
      - distance
      - active_minutes

  aggregation_type:
    allowed_values:
      - daily_total
      - session

  posture_code:
    allowed_values:
      - sitting
      - standing
      - supine

  timing_code:
    allowed_values:
      - morning
      - night
      - other

  link_status:
    allowed_values:
      - connected
      - pending
      - failed
      - disconnected

  share_status:
    allowed_values:
      - active
      - ended

  format_type:
    allowed_values:
      - pdf
      - csv

  trend_direction:
    allowed_values:
      - up
      - flat
      - down

  component_code:
    allowed_values:
      - sleep_balance
      - activity_balance
      - weight_trend_balance
      - blood_pressure_stability
      - record_continuity

  note_type:
    allowed_values:
      - general
      - condition_note
      - measurement_context
      - weekly_reflection

  visibility_scope:
    allowed_values:
      - owner_only
      - shareable_if_allowed

  relationship_type:
    allowed_values:
      - parent
      - child
      - spouse
      - family
      - other

naming_policy:
  - metric_type は API / DB / UI で同一 code を使う
  - code 値は snake_case で固定する
  - human label は多言語辞書で別管理する
