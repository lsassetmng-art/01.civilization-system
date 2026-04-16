# ============================================================
# LIFE PLANNER SUCCESS STATE COPY
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 080.copy-state
owner: Boss
prepared_by: Zero
schema: life

success_states:

  plan_created:
    title: "計画を作成しました"
    body: "これから目標や年表を追加して、少しずつ整理できます。"

  plan_updated:
    title: "計画を更新しました"
    body: "最新の内容を保存しました。"

  goal_created:
    title: "目標を追加しました"
    body: "必要に応じて予定時期や概算費用も整理できます。"

  goal_updated:
    title: "目標を更新しました"
    body: "計画に反映しました。"

  event_created:
    title: "イベントを追加しました"
    body: "年表で確認しやすくなりました。"

  review_logged:
    title: "見直しを記録しました"
    body: "あとで変化を振り返りやすくなります。"

  reflection_applied:
    title: "見直し候補を反映しました"
    body: "関連する計画内容と見直し履歴を更新しました。"

  reflection_dismissed:
    title: "見直し候補を却下しました"
    body: "候補一覧に状態を記録しました。"

  share_invited:
    title: "招待を送信しました"
    body: "相手が承認すると共有が有効になります。"

  share_scope_updated:
    title: "共有範囲を更新しました"
    body: "新しい設定が反映されます。"

  scenario_saved:
    title: "シナリオを保存しました"
    body: "あとで比較や見直しに使えます。"

  scenario_decision_saved:
    title: "比較判断を保存しました"
    body: "判断メモとあわせて記録しました。"
