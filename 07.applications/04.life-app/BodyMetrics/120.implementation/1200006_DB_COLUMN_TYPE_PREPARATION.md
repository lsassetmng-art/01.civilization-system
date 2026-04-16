# ============================================================
# DB COLUMN TYPE PREPARATION
# ============================================================

status: draft

pre_sql_alignment:
  - uuid 前提で列設計をそろえる
  - timestamptz / date の使い分けを固定する
  - numeric 精度を先にそろえる
  - jsonb 採用箇所を固定する

recommended_next_step:
  - exact PK / FK / UK 一覧を固定する
  - index definitive list を固定する
  - psql 実装用 SQL ブロックへ進む前に API payload 名を揃える

high_risk_points:
  - biometric_record と biometric_record_normalized の役割重複
  - manual_note の linked_record_id FK を汎用で持つ点
  - data_share_setting の scope json 粒度
  - correction_record の対象表汎用化

api_preparation_hint:
  - quick record は biometric_record 中心
  - blood pressure save は blood_pressure_record 専用
  - sleep import は sleep_record と raw trace を分ける
  - dashboard response は snapshot 系を優先活用する
