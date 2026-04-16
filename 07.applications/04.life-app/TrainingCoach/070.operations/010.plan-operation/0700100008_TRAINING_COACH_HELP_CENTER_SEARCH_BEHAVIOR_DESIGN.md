# ============================================================
# TRAINING COACH HELP CENTER SEARCH BEHAVIOR DESIGN
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 070.operations
owner: Boss
prepared_by: Zero

purpose:
  - help center 内検索の挙動を固定する
  - FAQ / support / safety を混ぜすぎず見つけやすくする
  - AI support への導線を適切に分ける

search_policy:
  - まず FAQ / help article を優先表示する
  - safety intent が強い場合は safety answer を最上位にする
  - billing / sync / notification などの操作系 intent は product-help を優先する
  - free text の全文検索より category + keyword hybrid を優先する

query_intent_buckets:
  - getting_started
  - plan_creation
  - execution
  - streak_progress
  - notifications
  - premium
  - safety
  - privacy
  - troubleshooting
  - share_future

ranking_rules:
  rule_1:
    - exact category match を優先
  rule_2:
    - title / question key match を body match より優先
  rule_3:
    - safety bucket は elevated priority
  rule_4:
    - deprecated article は低順位
  rule_5:
    - 未実装 future share の記事は v1 help center では非表示候補

safety_override:
  trigger_terms_examples:
    - 痛い
    - つらい
    - めまい
    - 息苦しい
    - 具合が悪い
  behavior:
    - safety FAQ を最上位
    - AI support への誘導候補
    - streak / premium 記事は下げる

fallback_behavior:
  - 検索結果 0 件なら主要カテゴリを提示
  - 近いカテゴリ候補を返す
  - AIサポート導線を最下部に置く
  - safety語を含む no result は safety guidance を別枠表示

search_result_shape_candidate:
  fields:
    - result_type
    - category
    - title_key
    - snippet_key
    - priority_badge
    - action_type
    - action_target

future_candidates:
  - synonym dictionary
  - typo tolerant search
  - locale aware search index
