# ============================================================
# LEGAL SUPPORT VOCABULARY CHANGE POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: policy
subdomain: boundaries
schema: life

purpose:
  - controlled vocabulary の変更ルールを固定する
  - enum / label / payload action の揺れ再発を防ぐ
  - 後から読む人が「どこまで変えてよいか」を明確にする

change_policy:
  - schema名、plan名、role名、action名は容易に変えない
  - action名変更は response envelope / audit / UI policy へ波及する前提で扱う
  - vocabulary 追加は allowed、意味重複による置換は慎重に行う
  - 削除や rename は canonical impact review を必須とする

change_categories:

  hard_locked:
    - schema_name
    - plan_terms
    - role_terms
    - action_names
    - response envelope keys
    - major visibility terms

  semi_locked:
    - document_subcategory registry
    - UI表示ラベル
    - summary profile names
    - export profile names

  flexible:
    - helper description text
    - warning examples
    - UI補助説明

review_questions_before_change:
  - payload名と矛盾しないか
  - audit action 名と矛盾しないか
  - masking / capability matrix と矛盾しないか
  - family 向け表示で誤認を増やさないか
  - 日本語表示で「法律判断」と誤認されないか

forbidden_change_patterns:
  - 同じ意味の新語を無計画に追加
  - internal name と UI label を混同して rename
  - plan名と share名を混同
  - preview と actual action の区別を消す
