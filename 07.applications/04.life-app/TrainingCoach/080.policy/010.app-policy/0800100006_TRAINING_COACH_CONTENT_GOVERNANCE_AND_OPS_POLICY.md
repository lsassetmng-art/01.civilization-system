# ============================================================
# TRAINING COACH CONTENT GOVERNANCE AND OPS POLICY
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 080.policy
owner: Boss
prepared_by: Zero

purpose:
  - guide_content / FAQ / premium copy / safety copy の運用ルールを固定する
  - コンテンツ変更で安全性や一貫性が崩れないようにする

content_domains:
  - exercise guidance content
  - safety notice content
  - faq content
  - premium marketing copy
  - onboarding explanatory copy

governance_policy:
  - safety content は最も厳格に扱う
  - premium copy は safety copy を上書きしない
  - FAQ は product behavior と一致していなければならない
  - locale 差分で意味が変わらないようにする

change_classes:
  class_a_safety_critical:
    examples:
      - safety notice text
      - rest recommendation wording
    review_requirement:
      - mandatory review
  class_b_behavior_explanatory:
    examples:
      - FAQ answer
      - onboarding explanation
    review_requirement:
      - consistency review
  class_c_marketing_copy:
    examples:
      - premium upsell
      - feature intro copy
    review_requirement:
      - tone and truthfulness review

content_lifecycle:
  - draft
  - review
  - approved
  - active
  - deprecated
  - retired

must_not_rules:
  - safety文言を marketing copy で弱めない
  - unsupported feature を実在するように書かない
  - medical authority のような表現をしない
  - guilt / shame を使って継続を煽らない

ops_rules:
  - guide_content は locale / version_no / is_active を管理する
  - FAQ は question_key / answer_key の整合を維持する
  - deprecated content は即消しではなく履歴管理候補
  - premium copy は free user に過剰頻度で表示しない

review_questions:
  - この文言は product behavior と一致しているか
  - safety を弱めていないか
  - premium value を誇張していないか
  - locale で意味ズレが起きないか
