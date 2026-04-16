# ============================================================
# TRAINING COACH OPEN ISSUES AND DECISION LEDGER
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 900.meta
owner: Boss
prepared_by: Zero

resolved_decisions:
  - schema は life
  - pricing は Free / Premium(500円)
  - implementation はまだ進めない
  - output は次以降まとめて出す
  - exact payload は固定済み
  - design 上 implementation-ready 到達済み

open_issues:
  - issue_id: TC-ISSUE-0001
    title: exercise_item の seed 範囲をどこまで持つか
    impact: 初期ガイド量と運用負荷に影響
    current_direction: 最小 seed で開始
  - issue_id: TC-ISSUE-0002
    title: guide_content の共通部品化タイミング
    impact: 他アプリとの再利用計画に影響
    current_direction: 初期は TrainingCoach 内保持
  - issue_id: TC-ISSUE-0003
    title: family/share を v1.0 に含めるか
    impact: 権限境界とUIに影響
    current_direction: 深い共有は later
  - issue_id: TC-ISSUE-0004
    title: premium の localized price 文言運用
    impact: 多通貨表示ポリシーに影響
    current_direction: JPY正本 + fallback 運用
  - issue_id: TC-ISSUE-0005
    title: wearable の realtime 連携をいつ入れるか
    impact: runtime complexity に影響
    current_direction: later

decision_style:
  - 未決事項は issue 化する
  - 既決事項は resolved_decisions へ昇格する
  - implementation 開始前に open_issues を再点検する
