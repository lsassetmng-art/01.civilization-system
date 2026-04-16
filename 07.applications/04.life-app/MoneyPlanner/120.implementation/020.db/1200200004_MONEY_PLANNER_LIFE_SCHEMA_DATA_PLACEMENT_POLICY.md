# ============================================================
# MONEY PLANNER LIFE SCHEMA DATA PLACEMENT POLICY
# ============================================================

status: canonical-draft
system: MoneyPlanner
layer: 120.implementation
subdomain: db
schema_policy:
  schema_name: life
  decision: fixed
  reason:
    - MoneyPlanner は LifeOS 配下アプリである
    - 個人/家族向け life domain データとして扱う
    - app 専用 schema ではなく life schema 内で管理する

placement_principles:
  - MoneyPlanner 固有データは life schema に配置する
  - 他 LifeOS アプリと衝突しないよう接頭辞で分離する
  - physical SQL はまだ作らない
  - 現段階では logical table / logical view / logical audit 単位で定義する
  - 他アプリ共有は table 直結ではなく payload 境界を通す

logical_object_prefix_policy:
  table_prefix: mp_
  view_prefix: v_mp_
  audit_prefix: mp_audit_
  history_prefix: mp_history_
  note:
    - mp = MoneyPlanner
    - life schema 内で名前衝突を避ける

scope_in_life_schema:
  included:
    - plan
    - income
    - expense
    - asset
    - liability
    - saving_goal
    - event_budget
    - scenario
    - shared_member
    - memo
    - financial_snapshot
    - audit_log
    - change_log
  excluded:
    - 投資助言エンジン
    - 税務確定ロジック
    - 法務確定ロジック
    - 実行系バッチ詳細

design_constraints:
  - user 単位 / family 単位の境界を持つ
  - private/shared の visibility を保持する
  - deleted_at 前提の論理削除を基本とする
  - 金額は多通貨対応前提で currency_code を持つ
