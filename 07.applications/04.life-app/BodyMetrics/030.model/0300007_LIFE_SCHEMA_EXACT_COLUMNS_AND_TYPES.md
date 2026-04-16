# ============================================================
# LIFE SCHEMA EXACT COLUMNS AND TYPES
# ============================================================

status: draft
runtime_schema:
  name: life

type_policy:
  id_type:
    recommendation: uuid
    notes:
      - 分散生成しやすさを優先する
      - 外部連携や端末側生成余地と相性がよい
  timestamp_type:
    recommendation: timestamptz
    notes:
      - measured_at / created_at / updated_at は timestamptz を基本とする
  local_date_type:
    recommendation: date
  numeric_policy:
    recommendation: numeric
    notes:
      - 健康値は誤差管理のため float より numeric 優先
  json_policy:
    recommendation: jsonb
  text_policy:
    recommendation: text
  bool_policy:
    recommendation: boolean

tables:

  - table_name: life.biometric_record
    columns:
      - { name: biometric_record_id, type: uuid, nullable: false, default: gen_random_uuid(), role: pk }
      - { name: user_id, type: uuid, nullable: false }
      - { name: metric_type, type: text, nullable: false }
      - { name: measured_value, type: numeric(12,4), nullable: false }
      - { name: unit_code, type: text, nullable: false }
      - { name: measured_at, type: timestamptz, nullable: false }
      - { name: local_date, type: date, nullable: false }
      - { name: timezone_code, type: text, nullable: false }
      - { name: source_type, type: text, nullable: false }
      - { name: source_device_id, type: text, nullable: true }
      - { name: is_manual, type: boolean, nullable: false, default: false }
      - { name: note_id, type: uuid, nullable: true }
      - { name: confidence_level, type: numeric(5,2), nullable: true }
      - { name: status_code, type: text, nullable: false, default: "'active'" }
      - { name: created_at, type: timestamptz, nullable: false, default: now() }
      - { name: updated_at, type: timestamptz, nullable: false, default: now() }

  - table_name: life.biometric_record_raw
    columns:
      - { name: biometric_record_raw_id, type: uuid, nullable: false, default: gen_random_uuid(), role: pk }
      - { name: user_id, type: uuid, nullable: false }
      - { name: metric_type, type: text, nullable: false }
      - { name: source_type, type: text, nullable: false }
      - { name: raw_payload_json, type: jsonb, nullable: false }
      - { name: dedupe_key, type: text, nullable: false }
      - { name: imported_at, type: timestamptz, nullable: false, default: now() }
      - { name: source_record_key, type: text, nullable: true }
      - { name: measured_at, type: timestamptz, nullable: true }
      - { name: source_device_id, type: text, nullable: true }
      - { name: import_job_id, type: uuid, nullable: true }
      - { name: created_at, type: timestamptz, nullable: false, default: now() }

  - table_name: life.biometric_record_normalized
    columns:
      - { name: biometric_record_normalized_id, type: uuid, nullable: false, default: gen_random_uuid(), role: pk }
      - { name: user_id, type: uuid, nullable: false }
      - { name: biometric_record_raw_id, type: uuid, nullable: true }
      - { name: metric_type, type: text, nullable: false }
      - { name: normalized_value, type: numeric(12,4), nullable: false }
      - { name: unit_code, type: text, nullable: false }
      - { name: measured_at, type: timestamptz, nullable: false }
      - { name: local_date, type: date, nullable: false }
      - { name: timezone_code, type: text, nullable: false }
      - { name: normalization_version, type: text, nullable: false }
      - { name: duplicate_resolved_flag, type: boolean, nullable: false, default: false }
      - { name: source_type, type: text, nullable: true }
      - { name: source_device_id, type: text, nullable: true }
      - { name: created_at, type: timestamptz, nullable: false, default: now() }
      - { name: updated_at, type: timestamptz, nullable: false, default: now() }

  - table_name: life.blood_pressure_record
    columns:
      - { name: blood_pressure_record_id, type: uuid, nullable: false, default: gen_random_uuid(), role: pk }
      - { name: user_id, type: uuid, nullable: false }
      - { name: systolic_value, type: numeric(6,2), nullable: false }
      - { name: diastolic_value, type: numeric(6,2), nullable: false }
      - { name: pulse_value, type: numeric(6,2), nullable: true }
      - { name: unit_code, type: text, nullable: false, default: "'mmHg'" }
      - { name: measured_at, type: timestamptz, nullable: false }
      - { name: local_date, type: date, nullable: false }
      - { name: timezone_code, type: text, nullable: false }
      - { name: posture_code, type: text, nullable: true }
      - { name: timing_code, type: text, nullable: true }
      - { name: source_type, type: text, nullable: false }
      - { name: source_device_id, type: text, nullable: true }
      - { name: is_manual, type: boolean, nullable: false, default: false }
      - { name: note_id, type: uuid, nullable: true }
      - { name: created_at, type: timestamptz, nullable: false, default: now() }
      - { name: updated_at, type: timestamptz, nullable: false, default: now() }

  - table_name: life.sleep_record
    columns:
      - { name: sleep_record_id, type: uuid, nullable: false, default: gen_random_uuid(), role: pk }
      - { name: user_id, type: uuid, nullable: false }
      - { name: sleep_start_at, type: timestamptz, nullable: false }
      - { name: sleep_end_at, type: timestamptz, nullable: false }
      - { name: duration_minutes, type: integer, nullable: false }
      - { name: sleep_score, type: numeric(5,2), nullable: true }
      - { name: source_type, type: text, nullable: false }
      - { name: source_device_id, type: text, nullable: true }
      - { name: local_date_anchor, type: date, nullable: false }
      - { name: sleep_stage_summary_json, type: jsonb, nullable: true }
      - { name: note_id, type: uuid, nullable: true }
      - { name: created_at, type: timestamptz, nullable: false, default: now() }
      - { name: updated_at, type: timestamptz, nullable: false, default: now() }

  - table_name: life.activity_record
    columns:
      - { name: activity_record_id, type: uuid, nullable: false, default: gen_random_uuid(), role: pk }
      - { name: user_id, type: uuid, nullable: false }
      - { name: activity_type, type: text, nullable: false }
      - { name: measured_value, type: numeric(12,4), nullable: false }
      - { name: unit_code, type: text, nullable: false }
      - { name: measured_at, type: timestamptz, nullable: true }
      - { name: local_date, type: date, nullable: false }
      - { name: source_type, type: text, nullable: false }
      - { name: source_device_id, type: text, nullable: true }
      - { name: aggregation_type, type: text, nullable: false }
      - { name: duration_minutes, type: integer, nullable: true }
      - { name: note_id, type: uuid, nullable: true }
      - { name: created_at, type: timestamptz, nullable: false, default: now() }
      - { name: updated_at, type: timestamptz, nullable: false, default: now() }

  - table_name: life.manual_note
    columns:
      - { name: manual_note_id, type: uuid, nullable: false, default: gen_random_uuid(), role: pk }
      - { name: user_id, type: uuid, nullable: false }
      - { name: note_type, type: text, nullable: false }
      - { name: note_text, type: text, nullable: false }
      - { name: linked_metric_type, type: text, nullable: true }
      - { name: linked_record_id, type: uuid, nullable: true }
      - { name: mood_score, type: numeric(5,2), nullable: true }
      - { name: fatigue_score, type: numeric(5,2), nullable: true }
      - { name: noted_at, type: timestamptz, nullable: false }
      - { name: visibility_scope, type: text, nullable: false, default: "'owner_only'" }
      - { name: created_at, type: timestamptz, nullable: false, default: now() }
      - { name: updated_at, type: timestamptz, nullable: false, default: now() }

  - table_name: life.health_goal
    columns:
      - { name: health_goal_id, type: uuid, nullable: false, default: gen_random_uuid(), role: pk }
      - { name: user_id, type: uuid, nullable: false }
      - { name: goal_type, type: text, nullable: false }
      - { name: target_value, type: numeric(12,4), nullable: true }
      - { name: target_range_min, type: numeric(12,4), nullable: true }
      - { name: target_range_max, type: numeric(12,4), nullable: true }
      - { name: unit_code, type: text, nullable: true }
      - { name: start_date, type: date, nullable: false }
      - { name: end_date, type: date, nullable: true }
      - { name: is_active, type: boolean, nullable: false, default: true }
      - { name: description_text, type: text, nullable: true }
      - { name: created_at, type: timestamptz, nullable: false, default: now() }
      - { name: updated_at, type: timestamptz, nullable: false, default: now() }

  - table_name: life.device_link
    columns:
      - { name: device_link_id, type: uuid, nullable: false, default: gen_random_uuid(), role: pk }
      - { name: user_id, type: uuid, nullable: false }
      - { name: provider_type, type: text, nullable: false }
      - { name: provider_account_ref, type: text, nullable: false }
      - { name: device_name, type: text, nullable: true }
      - { name: device_model, type: text, nullable: true }
      - { name: sync_enabled_flag, type: boolean, nullable: false, default: true }
      - { name: permission_scope_json, type: jsonb, nullable: true }
      - { name: last_sync_at, type: timestamptz, nullable: true }
      - { name: link_status, type: text, nullable: false }
      - { name: token_ref, type: text, nullable: true }
      - { name: created_at, type: timestamptz, nullable: false, default: now() }
      - { name: updated_at, type: timestamptz, nullable: false, default: now() }

  - table_name: life.health_score_snapshot
    columns:
      - { name: health_score_snapshot_id, type: uuid, nullable: false, default: gen_random_uuid(), role: pk }
      - { name: user_id, type: uuid, nullable: false }
      - { name: score_date, type: date, nullable: false }
      - { name: total_score, type: numeric(5,2), nullable: false }
      - { name: score_version, type: text, nullable: false }
      - { name: score_summary_text, type: text, nullable: true }
      - { name: calculation_basis_json, type: jsonb, nullable: true }
      - { name: created_at, type: timestamptz, nullable: false, default: now() }

  - table_name: life.health_score_component_snapshot
    columns:
      - { name: health_score_component_snapshot_id, type: uuid, nullable: false, default: gen_random_uuid(), role: pk }
      - { name: health_score_snapshot_id, type: uuid, nullable: false }
      - { name: component_code, type: text, nullable: false }
      - { name: component_score, type: numeric(5,2), nullable: false }
      - { name: component_weight, type: numeric(6,4), nullable: false }
      - { name: explanation_text, type: text, nullable: true }
      - { name: created_at, type: timestamptz, nullable: false, default: now() }

  - table_name: life.average_comparison_snapshot
    columns:
      - { name: average_comparison_snapshot_id, type: uuid, nullable: false, default: gen_random_uuid(), role: pk }
      - { name: user_id, type: uuid, nullable: false }
      - { name: metric_type, type: text, nullable: false }
      - { name: comparison_date, type: date, nullable: false }
      - { name: current_value, type: numeric(12,4), nullable: false }
      - { name: personal_7day_average, type: numeric(12,4), nullable: false }
      - { name: personal_30day_average, type: numeric(12,4), nullable: false }
      - { name: reference_range_min, type: numeric(12,4), nullable: true }
      - { name: reference_range_max, type: numeric(12,4), nullable: true }
      - { name: gap_value, type: numeric(12,4), nullable: true }
      - { name: gap_rate, type: numeric(12,4), nullable: true }
      - { name: note_text, type: text, nullable: true }
      - { name: comparison_version, type: text, nullable: false }
      - { name: created_at, type: timestamptz, nullable: false, default: now() }

  - table_name: life.data_share_setting
    columns:
      - { name: data_share_setting_id, type: uuid, nullable: false, default: gen_random_uuid(), role: pk }
      - { name: owner_user_id, type: uuid, nullable: false }
      - { name: recipient_user_id, type: uuid, nullable: false }
      - { name: shared_metric_scope_json, type: jsonb, nullable: false }
      - { name: note_share_flag, type: boolean, nullable: false, default: false }
      - { name: export_permission_flag, type: boolean, nullable: false, default: false }
      - { name: share_status, type: text, nullable: false, default: "'active'" }
      - { name: start_at, type: timestamptz, nullable: false }
      - { name: end_at, type: timestamptz, nullable: true }
      - { name: relationship_type, type: text, nullable: true }
      - { name: summary_only_flag, type: boolean, nullable: false, default: false }
      - { name: created_at, type: timestamptz, nullable: false, default: now() }
      - { name: updated_at, type: timestamptz, nullable: false, default: now() }

  - table_name: life.export_job
    columns:
      - { name: export_job_id, type: uuid, nullable: false, default: gen_random_uuid(), role: pk }
      - { name: user_id, type: uuid, nullable: false }
      - { name: format_type, type: text, nullable: false }
      - { name: export_scope_json, type: jsonb, nullable: false }
      - { name: date_range_start, type: date, nullable: false }
      - { name: date_range_end, type: date, nullable: false }
      - { name: job_status, type: text, nullable: false }
      - { name: completed_at, type: timestamptz, nullable: true }
      - { name: file_ref, type: text, nullable: true }
      - { name: failure_reason, type: text, nullable: true }
      - { name: requested_by_share_recipient_flag, type: boolean, nullable: false, default: false }
      - { name: created_at, type: timestamptz, nullable: false, default: now() }

  - table_name: life.correction_record
    columns:
      - { name: correction_record_id, type: uuid, nullable: false, default: gen_random_uuid(), role: pk }
      - { name: user_id, type: uuid, nullable: false }
      - { name: target_table_name, type: text, nullable: false }
      - { name: target_record_id, type: uuid, nullable: false }
      - { name: correction_type, type: text, nullable: false }
      - { name: before_value_json, type: jsonb, nullable: false }
      - { name: after_value_json, type: jsonb, nullable: false }
      - { name: corrected_at, type: timestamptz, nullable: false }
      - { name: correction_reason, type: text, nullable: true }
      - { name: actor_type, type: text, nullable: true, default: "'owner'" }
      - { name: created_at, type: timestamptz, nullable: false, default: now() }

column_rules:
  - metric_type / goal_type / source_type / provider_type / status はまず text で持ち、後で enum / master 化を検討する
  - created_at / updated_at は主要 runtime table に共通採用する
  - score / average 系は version を明示保持する
  - scope 系は jsonb で持ち、API payload と揃えやすくする
  - reference knowledge の正本は life schema に置かない

exact_decisions_to_fix_next:
  - text code を enum にする対象の切り分け
  - FK をどこまで厳格に貼るか
  - updated_at 自動更新方式
  - soft delete 列の採否
