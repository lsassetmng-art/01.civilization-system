# ============================================================
# TRAINING COACH SYNC CONFLICT POLICY
# ============================================================

status: canonical-draft
phase: payload-definition
system: TrainingCoach
layer: 070.operations
owner: Boss
prepared_by: Zero

sync_policy:
  - プラン正本は TrainingCoach 側とする
  - 体重 / 歩数 / 睡眠 / 心拍傾向は受信元正本を優先する
  - 同期不能時もローカル記録は継続可能とする

conflict_rules:
  training_plan:
    rule: latest_trainingcoach_update_wins
    note: 他アプリから直接更新しない
  training_session:
    rule: append_and_merge
    note: completed_at があるレコードを優先
  completion_log:
    rule: immutable_after_finalize
    note: 確定後は訂正イベントで扱う
  inbound_bodymetrics_summary:
    rule: source_of_truth_bodymetrics
    note: 受信値の改変禁止

offline_policy:
  - オフライン中の session_start / session_complete を許容する
  - 復帰時は timestamp 順で再送する
  - 重複送信判定には session_id を用いる
