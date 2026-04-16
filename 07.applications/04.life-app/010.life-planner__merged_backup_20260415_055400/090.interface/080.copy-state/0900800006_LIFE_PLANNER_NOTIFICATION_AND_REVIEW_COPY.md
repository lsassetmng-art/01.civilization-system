# ============================================================
# LIFE PLANNER NOTIFICATION AND REVIEW COPY
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 080.copy-state
owner: Boss
prepared_by: Zero
schema: life

notification_copy:

  important_event_30_days:
    title: "予定しているイベントが近づいています"
    body: "必要な準備や関連する目標を確認しておきましょう。"

  review_cycle_due:
    title: "そろそろ計画を見直す時期です"
    body: "最近の変化が、今の計画に合っているかを軽く確認できます。"

  reflection_candidate_arrived:
    title: "見直し候補が届きました"
    body: "他アプリの変化をもとに、確認しておきたい項目があります。"

  family_update_received:
    title: "共有中の計画に更新がありました"
    body: "必要なら内容を確認して、判断を進めてください。"

  stale_plan_warning:
    title: "しばらく更新されていません"
    body: "今の状況に合っているか、短時間で確認できます。"

review_prompt_copy:
  title: "どこを見直しますか？"
  body: "目標、イベント、費用、共有範囲の順で見ると整理しやすくなります。"

ai_help_entry_copy:
  title: "AIに整理を手伝ってもらう"
  body: "目標の言い換えや、見直し観点の整理をサポートできます。"
