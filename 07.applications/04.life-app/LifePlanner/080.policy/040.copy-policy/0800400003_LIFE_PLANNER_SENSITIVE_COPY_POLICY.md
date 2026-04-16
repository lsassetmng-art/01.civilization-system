# ============================================================
# LIFE PLANNER SENSITIVE COPY POLICY
# ============================================================

status: draft
system: LifePlanner
layer: 080.policy
subfolder: 040.copy-policy
owner: Boss
prepared_by: Zero
schema: life

sensitive_copy_rules:
  - health:
      rule:
        - 詳細症状や不必要な具体表現は通知文で出しすぎない

  - end_of_life:
      rule:
        - 強い不安を煽る言い回しを避ける
        - 準備や整理の文脈で表現する

  - legal:
      rule:
        - 法的判断確定のような表現を避ける
        - 手続きやメモ整理の文脈で表現する

  - finance:
      rule:
        - 資産総額や具体金額は共有範囲外へ通知しない

family_scope_note:
  - shared roles 向け copy は share_scope 内の情報だけで完結させる
  - hidden category の存在を過度に匂わせない
