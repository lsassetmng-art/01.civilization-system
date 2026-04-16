# ============================================================
# LIFE SCHEMA TABLE INVENTORY
# ============================================================

status: draft
runtime_schema:
  name: life

intent:
  - BodyMetrics runtime data を life schema に置く前提で論理テーブル責務を固定する
  - 固定知識と個人実測値を分離する
  - API / DB / UI の責務ずれを減らす

table_inventory:

  - table_name: life.biometric_record
    purpose:
      - 単一指標の共通記録母体
    stores:
      - weight
      - heart_rate
      - blood_oxygen
      - body_temperature_optional
      - body_fat_percentage_optional
    key_columns:
      - biometric_record_id
      - user_id
      - metric_type
      - measured_value
      - unit_code
      - measured_at
      - local_date
      - timezone_code
      - source_type
      - source_device_id
      - is_manual
      - note_id_optional
      - created_at
      - updated_at
    notes:
      - 共通単一値指標はここへ寄せる
      - 血圧のような複合値は専用表で持つ

  - table_name: life.biometric_record_raw
    purpose:
      - 外部連携や手入力の元データを保持する
    key_columns:
      - biometric_record_raw_id
      - user_id
      - metric_type
      - source_type
      - raw_payload_json
      - source_record_key
      - imported_at
      - measured_at_optional
      - dedupe_key
    notes:
      - traceability 用
      - 表示は基本的に normalized 側を使う

  - table_name: life.biometric_record_normalized
    purpose:
      - 正規化済みの表示・分析用データを保持する
    key_columns:
      - biometric_record_normalized_id
      - user_id
      - biometric_record_raw_id_optional
      - metric_type
      - normalized_value
      - unit_code
      - measured_at
      - local_date
      - timezone_code
      - normalization_version
      - duplicate_resolved_flag
    notes:
      - graph / average / score の主参照元

  - table_name: life.blood_pressure_record
    purpose:
      - 血圧の複合値記録
    key_columns:
      - blood_pressure_record_id
      - user_id
      - systolic_value
      - diastolic_value
      - pulse_value_optional
      - unit_code
      - measured_at
      - local_date
      - timezone_code
      - posture_code_optional
      - timing_code_optional
      - source_type
      - source_device_id
      - is_manual
    notes:
      - 朝夜タグや測定条件拡張余地を持つ

  - table_name: life.sleep_record
    purpose:
      - 睡眠記録
    key_columns:
      - sleep_record_id
      - user_id
      - sleep_start_at
      - sleep_end_at
      - duration_minutes
      - sleep_score_optional
      - source_type
      - source_device_id
      - local_date_anchor
      - created_at
      - updated_at
    notes:
      - 起床日基準 / 開始日基準の両対応余地を持つ

  - table_name: life.activity_record
    purpose:
      - 歩数や活動量の集計記録
    key_columns:
      - activity_record_id
      - user_id
      - activity_type
      - measured_value
      - unit_code
      - measured_at_optional
      - local_date
      - source_type
      - source_device_id
      - aggregation_type
    notes:
      - steps を中心に開始し、将来拡張可能

  - table_name: life.manual_note
    purpose:
      - 体調メモ、補足メモ
    key_columns:
      - manual_note_id
      - user_id
      - note_type
      - note_text
      - linked_metric_type_optional
      - linked_record_id_optional
      - noted_at
      - visibility_scope
    notes:
      - Family Care 共有可否とは分離して扱う

  - table_name: life.health_goal
    purpose:
      - 健康目標管理
    key_columns:
      - health_goal_id
      - user_id
      - goal_type
      - target_value_optional
      - target_range_min_optional
      - target_range_max_optional
      - unit_code_optional
      - start_date
      - end_date_optional
      - is_active
      - created_at
    notes:
      - 体重、歩数、睡眠、血圧目標を扱う

  - table_name: life.device_link
    purpose:
      - 外部連携設定
    key_columns:
      - device_link_id
      - user_id
      - provider_type
      - provider_account_ref
      - device_name_optional
      - device_model_optional
      - sync_enabled_flag
      - permission_scope_json
      - last_sync_at_optional
      - link_status
      - created_at
      - updated_at
    notes:
      - credential 本体の扱いは実装時に別管理余地

  - table_name: life.health_score_snapshot
    purpose:
      - 健康スコアの時点結果
    key_columns:
      - health_score_snapshot_id
      - user_id
      - score_date
      - total_score
      - score_version
      - score_summary_text_optional
      - created_at
    notes:
      - 0-100 の lifestyle tendency score を前提とする

  - table_name: life.health_score_component_snapshot
    purpose:
      - 健康スコア内訳
    key_columns:
      - health_score_component_snapshot_id
      - health_score_snapshot_id
      - component_code
      - component_score
      - component_weight
      - explanation_text_optional
    notes:
      - total だけでなく内訳説明を保持する

  - table_name: life.average_comparison_snapshot
    purpose:
      - 平均比較の派生結果
    key_columns:
      - average_comparison_snapshot_id
      - user_id
      - metric_type
      - comparison_date
      - current_value
      - personal_7day_average
      - personal_30day_average
      - reference_range_min_optional
      - reference_range_max_optional
      - gap_value_optional
      - gap_rate_optional
      - comparison_version
    notes:
      - reference は表示用補助として保持してよい

  - table_name: life.data_share_setting
    purpose:
      - Family Care 等の共有設定
    key_columns:
      - data_share_setting_id
      - owner_user_id
      - recipient_user_id
      - shared_metric_scope_json
      - note_share_flag
      - export_permission_flag
      - start_at
      - end_at_optional
      - share_status
      - created_at
      - updated_at
    notes:
      - 初期値は非共有

  - table_name: life.export_job
    purpose:
      - PDF / CSV 出力ジョブ
    key_columns:
      - export_job_id
      - user_id
      - format_type
      - export_scope_json
      - date_range_start
      - date_range_end
      - job_status
      - created_at
      - completed_at_optional
      - file_ref_optional
    notes:
      - 監査対象

  - table_name: life.correction_record
    purpose:
      - 修正履歴
    key_columns:
      - correction_record_id
      - user_id
      - target_table_name
      - target_record_id
      - correction_type
      - before_value_json
      - after_value_json
      - corrected_at
      - correction_reason_optional
    notes:
      - 上書きより履歴保持優先

boundary_rules:
  - user runtime data は life schema に置く
  - fixed knowledge master は life schema に置かない
  - reference source / range の正本は別知識領域を参照する
  - BodyMetrics は知識領域を参照して比較表示に使う
