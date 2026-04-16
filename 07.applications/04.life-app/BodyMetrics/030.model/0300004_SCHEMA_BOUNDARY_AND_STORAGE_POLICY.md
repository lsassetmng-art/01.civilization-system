# ============================================================
# SCHEMA BOUNDARY AND STORAGE POLICY
# ============================================================

status: fixed

runtime_schema:
  name: life

policy:
  - BodyMetrics の runtime data は life schema に配置する
  - 個人実測値は life schema に配置する
  - 外部連携取込結果は life schema に配置する
  - 共有設定は life schema に配置する
  - 健康スコア snapshot は life schema に配置する
  - 平均比較 snapshot は life schema に配置する

life_schema_scope:
  - biometric_record
  - biometric_record_raw
  - biometric_record_normalized
  - blood_pressure_record
  - oxygen_record
  - sleep_record
  - activity_record
  - manual_note
  - health_goal
  - device_link
  - data_share_setting
  - export_job
  - correction_record
  - health_score_snapshot
  - health_score_component_snapshot
  - average_comparison_snapshot

not_in_life_schema:
  - 固定知識マスタの一次正本
  - 参考範囲の知識正本
  - 測定条件知識正本
  - 指標意味知識正本
  - 出典知識正本

knowledge_boundary:
  - 固定知識は CX22073 系の知識領域で保持する
  - BodyMetrics は固定知識を参照して表示・比較に使う
  - BodyMetrics は個人実測値を知識領域へ保存しない
