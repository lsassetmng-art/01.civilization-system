# ============================================================
# END OF LIFE PLANNER DISCLAIMER AND SAFETY POLICY
# ============================================================

status: canonical-draft
phase: L1-spec-placement

boundary_policy:
  - 本アプリは終活整理支援アプリである
  - 医療・介護・法律・税務の最終判断を提供しない
  - 専門家確認を前提とする

safety_policy:
  - 緊急兆候検知時は安全行動案内を優先する
  - デジタル資産メモへの平文パスワード保存は禁止
  - S3_high 出力はマスキング前提
  - 家族共有前に共有範囲確認を必須化する

ai_support_boundary:
  included:
    - 項目説明
    - 入力順提案
    - 一般的な整理観点提示
  excluded:
    - 医療判断断定
    - 法律判断断定
    - 税額断定
    - 相続分断定
