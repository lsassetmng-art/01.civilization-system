# ============================================================
# LIFE PLANNER TEMPLATE CATALOG DRAFT
# ============================================================

status: draft
system: LifePlanner
layer: 090.interface
subfolder: 050.onboarding-template
owner: Boss
prepared_by: Zero
schema: life

templates:
  - template_code: blank
    label_ja: 白紙から始める
    use_case:
      - 自分で一から整理したい人

  - template_code: family_focus
    label_ja: 家族中心テンプレート
    use_case:
      - 結婚、子育て、家族の将来設計を優先したい人
    suggested_categories:
      - family
      - housing
      - finance
      - education

  - template_code: work_and_learning_focus
    label_ja: 仕事と学びテンプレート
    use_case:
      - 働き方や学び直しを重視したい人
    suggested_categories:
      - work
      - learning
      - finance

  - template_code: retirement_focus
    label_ja: 老後準備テンプレート
    use_case:
      - 老後と終活の備えを先に整理したい人
    suggested_categories:
      - retirement
      - end_of_life
      - finance
      - legal

  - template_code: balance_focus
    label_ja: バランス型テンプレート
    use_case:
      - 主要分野を広く整理したい人
    suggested_categories:
      - family
      - work
      - health
      - finance
      - retirement

template_policy:
  - template は初期値を入れるだけで固定しない
  - ユーザーは後から自由にカテゴリや目標を変更できる
  - template は recommendation であり制約ではない
