# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# LEGAL SUPPORT DASHBOARD AUDIENCE SPLIT UI POLICY
# ============================================================

status: draft-formal
system: LegalSupport
layer: interface
subdomain: screens

audience_split:
  owner_dashboard:
    characteristics:
      - 管理中心
      - 横断俯瞰
      - recent export や checklist 進捗を含む
  family_dashboard:
    characteristics:
      - 閲覧中心
      - 共有範囲のみ
      - 次に必要な準備をわかりやすくする

ui_rules:
  - dashboard 初期表示は role で分岐する
  - family 側では「共有された内容のみ表示中」を明示する
  - owner 側では family 向けに見えている範囲との差を意識できる補助表示を置いてよい
  - family dashboard に destructive action を置かない
