# ============================================================
# TRAINING COACH SAFETY MESSAGE POLICY
# ============================================================

status: canonical-draft
phase: payload-definition
system: TrainingCoach
layer: 080.policy
owner: Boss
prepared_by: Zero

safety_policy:
  - 医療判断を行わない
  - 強い痛み、めまい、息苦しさ等は運動中止文言を優先表示する
  - 高負荷継続を煽らない
  - 疲労度が高い場合は軽量化または休息提案を優先する

message_codes:
  - TC_SAFE_001
  - TC_SAFE_002
  - TC_SAFE_003
  - TC_SAFE_004

message_definitions:
  TC_SAFE_001:
    use_case: 一般注意
    text_ja: 無理のない範囲で行ってください。
  TC_SAFE_002:
    use_case: 痛みや異常
    text_ja: 痛みや強い違和感がある場合は中止してください。
  TC_SAFE_003:
    use_case: 体調不良
    text_ja: 体調が悪いときは休息を優先してください。
  TC_SAFE_004:
    use_case: 受診導線
    text_ja: 症状が続く場合は医療機関への相談を検討してください。
