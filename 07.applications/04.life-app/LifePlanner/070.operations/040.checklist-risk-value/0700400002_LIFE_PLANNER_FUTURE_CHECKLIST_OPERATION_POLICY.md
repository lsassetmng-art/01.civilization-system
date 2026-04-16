# ============================================================
# LIFE PLANNER FUTURE CHECKLIST OPERATION POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 070.operations
subfolder: 040.checklist-risk-value
owner: Boss
prepared_by: Zero
schema: life

future_checklist_purpose:
  - 将来準備の抜け漏れを確認する
  - goal や timeline に落とし込む前の確認材料とする

checklist_domains:
  - family
  - housing
  - work
  - learning
  - health
  - finance
  - retirement
  - end_of_life
  - legal

operation_rules:
  - checklist item は完了/未完了/保留の軽量状態で扱う
  - checklist item 自体は必ずしも goal を作らなくてよい
  - 重要 item は goal または timeline への変換導線を持つ
  - annual review での見直し対象に含める

conversion_rules:
  - item -> goal
  - item -> event_timeline
  - item -> note_only
