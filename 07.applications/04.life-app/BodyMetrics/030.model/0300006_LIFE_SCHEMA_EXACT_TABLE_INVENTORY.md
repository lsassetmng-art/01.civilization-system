# ============================================================
# LIFE SCHEMA EXACT TABLE INVENTORY
# ============================================================

status: draft
runtime_schema:
  name: life

design_intent:
  - BodyMetrics runtime data を life schema に固定する
  - SQL 実装直前まで責務を明確化する
  - PK / UK / index / retention / audit の観点を先に揃える

tables:

  - table_name: life.biometric_record
    purpose:
      - 単一値健康指標の正本記録
    primary_key:
      - biometric_record_id
    required_columns:
      - biometric_record_id
      - user_id
      - metric_type
      - measured_value
      - unit_code
      - measured_at
      - local_date
      - timezone_code
      - source_type
      - is_manual
      - created_at
      - updated_at
    optional_columns:
      - source_device_id
      - note_id
      - confidence_level
      - status_code
    unique_candidates:
      - user_id + metric_type + measured_at + source_type + coalesce(source_device_id,'')
    index_candidates:
      - user_id + metric_type + measured_at desc
      - user_id + local_date
      - source_type + measured_at
    retention_policy:
      - delete ではなく soft invalidation 余地を持つ
    audit_need:
      - correction_record 参照

  - table_name: life.biometric_record_raw
    purpose:
      - provider 由来 raw payload の保持
    primary_key:
      - biometric_record_raw_id
    required_columns:
      - biometric_record_raw_id
      - user_id
      - metric_type
      - source_type
      - raw_payload_json
      - dedupe_key
      - imported_at
      - created_at
    optional_columns:
      - source_record_key
      - measured_at
      - source_device_id
      - import_job_id
    unique_candidates:
      - source_type + dedupe_key
    index_candidates:
      - user_id + metric_type + imported_at desc
      - source_type + imported_at desc
      - source_record_key
    retention_policy:
      - traceability のため一定期間以上保持する前提
    audit_need:
      - import trace 対象

  - table_name: life.biometric_record_normalized
    purpose:
      - 分析・表示用の正規化済み指標
    primary_key:
      - biometric_record_normalized_id
    required_columns:
      - biometric_record_normalized_id
      - user_id
      - metric_type
      - normalized_value
      - unit_code
      - measured_at
      - local_date
      - timezone_code
      - normalization_version
      - created_at
      - updated_at
    optional_columns:
      - biometric_record_raw_id
      - duplicate_resolved_flag
      - source_type
      - source_device_id
    unique_candidates:
      - user_id + metric_type + measured_at + normalization_version + coalesce(source_type,'')
    index_candidates:
      - user_id + metric_type + measured_at desc
      - user_id + local_date
      - biometric_record_raw_id
    retention_policy:
      - 最新正規化優先、旧版保持余地あり
    audit_need:
      - normalization_version 追跡

  - table_name: life.blood_pressure_record
    purpose:
      - 複合値としての血圧記録
    primary_key:
      - blood_pressure_record_id
    required_columns:
      - blood_pressure_record_id
      - user_id
      - systolic_value
      - diastolic_value
      - unit_code
      - measured_at
      - local_date
      - timezone_code
      - source_type
      - is_manual
      - created_at
      - updated_at
    optional_columns:
      - pulse_value
      - posture_code
      - timing_code
      - source_device_id
      - note_id
    unique_candidates:
      - user_id + measured_at + source_type + coalesce(source_device_id,'')
    index_candidates:
      - user_id + measured_at desc
      - user_id + local_date
      - user_id + timing_code + measured_at desc
    retention_policy:
      - correction 履歴前提
    audit_need:
      - medical-like sensitivity 高

  - table_name: life.sleep_record
    purpose:
      - 睡眠実績
    primary_key:
      - sleep_record_id
    required_columns:
      - sleep_record_id
      - user_id
      - sleep_start_at
      - sleep_end_at
      - duration_minutes
      - local_date_anchor
      - source_type
      - created_at
      - updated_at
    optional_columns:
      - sleep_score
      - source_device_id
      - sleep_stage_summary_json
      - note_id
    unique_candidates:
      - user_id + sleep_start_at + sleep_end_at + source_type
    index_candidates:
      - user_id + sleep_start_at desc
      - user_id + local_date_anchor
      - source_type + sleep_start_at desc
    retention_policy:
      - 長期トレンド対象
    audit_need:
      - low

  - table_name: life.activity_record
    purpose:
      - 歩数・活動量の記録
    primary_key:
      - activity_record_id
    required_columns:
      - activity_record_id
      - user_id
      - activity_type
      - measured_value
      - unit_code
      - local_date
      - source_type
      - aggregation_type
      - created_at
      - updated_at
    optional_columns:
      - measured_at
      - source_device_id
      - duration_minutes
      - note_id
    unique_candidates:
      - user_id + activity_type + local_date + aggregation_type + source_type
    index_candidates:
      - user_id + activity_type + local_date desc
      - user_id + local_date
      - source_type + local_date desc
    retention_policy:
      - 日次集計と raw event を分ける余地
    audit_need:
      - low

  - table_name: life.manual_note
    purpose:
      - 健康関連メモ
    primary_key:
      - manual_note_id
    required_columns:
      - manual_note_id
      - user_id
      - note_type
      - note_text
      - noted_at
      - visibility_scope
      - created_at
      - updated_at
    optional_columns:
      - linked_metric_type
      - linked_record_id
      - mood_score
      - fatigue_score
    unique_candidates: []
    index_candidates:
      - user_id + noted_at desc
      - linked_metric_type + linked_record_id
      - visibility_scope
    retention_policy:
      - ユーザー削除要求時ポリシー別途
    audit_need:
      - free text sensitivity 中

  - table_name: life.health_goal
    purpose:
      - 健康目標
    primary_key:
      - health_goal_id
    required_columns:
      - health_goal_id
      - user_id
      - goal_type
      - start_date
      - is_active
      - created_at
      - updated_at
    optional_columns:
      - target_value
      - target_range_min
      - target_range_max
      - unit_code
      - end_date
      - description_text
    unique_candidates:
      - user_id + goal_type + start_date
    index_candidates:
      - user_id + is_active + start_date desc
      - user_id + goal_type + is_active
    retention_policy:
      - 終了目標も保持
    audit_need:
      - medium

  - table_name: life.device_link
    purpose:
      - provider 連携設定
    primary_key:
      - device_link_id
    required_columns:
      - device_link_id
      - user_id
      - provider_type
      - provider_account_ref
      - sync_enabled_flag
      - link_status
      - created_at
      - updated_at
    optional_columns:
      - device_name
      - device_model
      - permission_scope_json
      - last_sync_at
      - token_ref
    unique_candidates:
      - user_id + provider_type + provider_account_ref
    index_candidates:
      - user_id + provider_type
      - link_status + updated_at desc
      - last_sync_at
    retention_policy:
      - disconnect 後も監査余地
    audit_need:
      - credential adjacency 高

  - table_name: life.health_score_snapshot
    purpose:
      - 健康スコア結果
    primary_key:
      - health_score_snapshot_id
    required_columns:
      - health_score_snapshot_id
      - user_id
      - score_date
      - total_score
      - score_version
      - created_at
    optional_columns:
      - score_summary_text
      - calculation_basis_json
    unique_candidates:
      - user_id + score_date + score_version
    index_candidates:
      - user_id + score_date desc
      - score_version + score_date desc
    retention_policy:
      - score version 差替時も履歴保持
    audit_need:
      - explanation trace 対象

  - table_name: life.health_score_component_snapshot
    purpose:
      - 健康スコア内訳
    primary_key:
      - health_score_component_snapshot_id
    required_columns:
      - health_score_component_snapshot_id
      - health_score_snapshot_id
      - component_code
      - component_score
      - component_weight
      - created_at
    optional_columns:
      - explanation_text
    unique_candidates:
      - health_score_snapshot_id + component_code
    index_candidates:
      - health_score_snapshot_id
      - component_code + created_at desc
    retention_policy:
      - parent snapshot に従う
    audit_need:
      - explanation trace 対象

  - table_name: life.average_comparison_snapshot
    purpose:
      - 7日平均/30日平均/参考範囲比較結果
    primary_key:
      - average_comparison_snapshot_id
    required_columns:
      - average_comparison_snapshot_id
      - user_id
      - metric_type
      - comparison_date
      - current_value
      - personal_7day_average
      - personal_30day_average
      - comparison_version
      - created_at
    optional_columns:
      - reference_range_min
      - reference_range_max
      - gap_value
      - gap_rate
      - note_text
    unique_candidates:
      - user_id + metric_type + comparison_date + comparison_version
    index_candidates:
      - user_id + metric_type + comparison_date desc
      - comparison_date desc
    retention_policy:
      - version 差替時も履歴保持余地
    audit_need:
      - medium

  - table_name: life.data_share_setting
    purpose:
      - Family Care 共有設定
    primary_key:
      - data_share_setting_id
    required_columns:
      - data_share_setting_id
      - owner_user_id
      - recipient_user_id
      - shared_metric_scope_json
      - note_share_flag
      - export_permission_flag
      - share_status
      - start_at
      - created_at
      - updated_at
    optional_columns:
      - end_at
      - relationship_type
      - summary_only_flag
    unique_candidates:
      - owner_user_id + recipient_user_id + start_at
    index_candidates:
      - owner_user_id + share_status + start_at desc
      - recipient_user_id + share_status + start_at desc
      - end_at
    retention_policy:
      - 終了設定も監査のため保持
    audit_need:
      - very high

  - table_name: life.export_job
    purpose:
      - PDF / CSV 出力ジョブ
    primary_key:
      - export_job_id
    required_columns:
      - export_job_id
      - user_id
      - format_type
      - export_scope_json
      - date_range_start
      - date_range_end
      - job_status
      - created_at
    optional_columns:
      - completed_at
      - file_ref
      - failure_reason
      - requested_by_share_recipient_flag
    unique_candidates: []
    index_candidates:
      - user_id + created_at desc
      - job_status + created_at desc
      - format_type + created_at desc
    retention_policy:
      - 監査のため一定期間保持
    audit_need:
      - high

  - table_name: life.correction_record
    purpose:
      - 修正履歴
    primary_key:
      - correction_record_id
    required_columns:
      - correction_record_id
      - user_id
      - target_table_name
      - target_record_id
      - correction_type
      - before_value_json
      - after_value_json
      - corrected_at
      - created_at
    optional_columns:
      - correction_reason
      - actor_type
    unique_candidates: []
    index_candidates:
      - user_id + corrected_at desc
      - target_table_name + target_record_id
    retention_policy:
      - 履歴保持を優先
    audit_need:
      - very high

cross_table_rules:
  - biometric_record と biometric_record_normalized は 1:1 固定にしなくてよい
  - health_score_component_snapshot は health_score_snapshot に従属する
  - data_share_setting は runtime data の閲覧境界正本とする
  - export_job は data_share_setting と別に permission check を通す
  - note_id を持つ表は manual_note 削除時の整合ポリシーが必要

exact_decisions_to_fix_next:
  - 各 ID を uuid にするか bigint にするか
  - soft delete 共通列を採用するか
  - created_by / updated_by をどこまで持つか
  - biometric_record と biometric_record_normalized を実装上分けるか簡略化するか
