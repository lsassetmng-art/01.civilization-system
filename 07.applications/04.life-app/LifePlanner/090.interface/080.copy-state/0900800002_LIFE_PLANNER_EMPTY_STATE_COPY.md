# ============================================================
# LIFE PLANNER EMPTY STATE COPY
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 080.copy-state
owner: Boss
prepared_by: Zero
schema: life

empty_states:

  home_no_plan:
    title: "まだ人生計画表がありません"
    body: "まずは5年後、10年後、20年後の見通しを、やさしく整理するところから始めましょう。"
    primary_cta: "計画を作成する"
    secondary_cta: "テンプレートを見る"

  plan_no_goals:
    title: "まだ目標がありません"
    body: "家族、住居、仕事、学び、健康など、気になる分野から1つ追加できます。"
    primary_cta: "目標を追加する"

  plan_no_events:
    title: "まだ年表イベントがありません"
    body: "予定している出来事を入れておくと、計画が時間軸で見やすくなります。"
    primary_cta: "イベントを追加する"

  no_review_logs:
    title: "まだ見直し履歴がありません"
    body: "計画を見直したときに理由を残すと、あとで変化を振り返りやすくなります。"
    primary_cta: "見直しを記録する"

  no_reflection_candidates:
    title: "今のところ見直し候補はありません"
    body: "他アプリから見直しが必要な変化が届くと、ここに表示されます。"
    primary_cta: "ホームへ戻る"

  no_shared_members:
    title: "まだ共有相手がいません"
    body: "Familyプランでは、家族と一緒に将来設計を整理できます。"
    primary_cta: "共有相手を招待する"
    secondary_cta: "Familyプランを見る"

  no_scenarios:
    title: "まだシナリオがありません"
    body: "複数の将来案を比べたいときは、シナリオを作って整理できます。"
    primary_cta: "シナリオを作成する"

  no_search_results:
    title: "条件に合う結果が見つかりませんでした"
    body: "検索語や絞り込み条件をゆるめると見つかる場合があります。"
    primary_cta: "条件を見直す"
