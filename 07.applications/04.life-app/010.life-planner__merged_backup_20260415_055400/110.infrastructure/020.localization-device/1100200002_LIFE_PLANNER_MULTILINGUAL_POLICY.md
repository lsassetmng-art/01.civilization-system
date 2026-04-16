# ============================================================
# LIFE PLANNER MULTILINGUAL POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 110.infrastructure
subfolder: 020.localization-device
owner: Boss
prepared_by: Zero
schema: life

policy:
  - UI文言は多言語対応前提
  - 保存値そのものを無理に翻訳しない
  - カテゴリ候補とシステムラベルはローカライズ対象
  - ユーザー入力テキストは原文保持を基本とする

localize_targets:
  - navigation labels
  - dashboard titles
  - notification copy
  - plan template labels
  - goal status labels
  - priority labels

non_localize_targets:
  - user entered free text
  - raw currency code
  - internal ids
