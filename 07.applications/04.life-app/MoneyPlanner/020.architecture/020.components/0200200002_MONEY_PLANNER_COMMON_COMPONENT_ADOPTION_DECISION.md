# ============================================================
# MONEY PLANNER COMMON COMPONENT ADOPTION DECISION
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 020.architecture
subdomain: components

purpose:
  - 共通部品候補の採否を固定する
  - 実装開始時に迷わないようにする

adopt_now:
  - name: 資産負債台帳共通部品
    scope:
      - asset list
      - liability list
      - amount + currency display
      - ownership_scope
      - visibility_scope
    reason:
      - MoneyPlanner の中核
      - 他 life 系アプリにも再利用余地あり

  - name: カテゴリ別分析共通部品
    scope:
      - income / expense category summary
      - monthly / yearly breakdown
    reason:
      - dashboard / projection で再利用しやすい

  - name: 共同家計編集共通部品
    scope:
      - shared_member
      - role
      - member_visibility_scope
      - visible summary
    reason:
      - family sharing の核になる

  - name: 目標積立共通部品
    scope:
      - saving_goal
      - progress
      - target / current / remaining
    reason:
      - MoneyPlanner の主要価値

  - name: ライフイベント費用計画共通部品
    scope:
      - event_budget
      - priority
      - planned_date
      - related member
    reason:
      - LifePlanner 連携の中心

  - name: 受入候補レビュー共通部品
    scope:
      - receive candidate list
      - duplicate badge
      - status transition
      - confirm / reject / archive
    reason:
      - 複数 LifeOS アプリからの受入に共通

  - name: 手動共有共通部品
    scope:
      - linkage settings
      - share target
      - share scope
      - share execution log summary
    reason:
      - LifePlanner / EndOfLifePlanner / InheritanceSupport 連携で共通化できる

adopt_later:
  - name: 口座連携共通部品
    reason:
      - 現段階では手動入力中心で成立する
      - 外部依存が大きい

  - name: 税金概算支援共通部品
    reason:
      - 税務判断へ踏み込みやすい
      - 現時点では memo 中心で十分

  - name: 投資資産詳細分析共通部品
    reason:
      - 本アプリの主軸ではない
      - 投資助言境界を曖昧にしやすい

rejected_now:
  - name: 自動最適化提案エンジン
    reason:
      - 投資/税務/法務の境界を越えやすい
      - 現設計方針と不整合

decision_summary:
  - 採用対象は MoneyPlanner のコア価値と共有/連携に直結するものだけに限定する
