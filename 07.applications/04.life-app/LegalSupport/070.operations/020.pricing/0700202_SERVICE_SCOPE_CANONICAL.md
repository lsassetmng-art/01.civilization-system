# ============================================================
# SERVICE SCOPE CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only

service_scope:

  included_scope:
    - 相談前整理
    - 事実関係整理
    - 時系列整理
    - 関係者整理
    - 書類/証拠 metadata 整理
    - 面談記録整理
    - タスク/期限整理
    - 家族共有
    - 共有パック出力
    - LifeOS 他アプリの要約参照

  excluded_scope:
    - 法的最終判断
    - 税務最終判断
    - 訴訟戦略の決定
    - 提出書類内容の保証
    - 専門家としての代理行為
    - 行政/司法手続の正式代行

  share_scope_policy:
    - 共有は owner 明示操作のみ
    - role ベース共有を基本とする
    - 高秘匿項目は共有除外可能
    - export は共有と同一ではない

  output_scope_policy:
    - export は派生整理資料
    - 原資料の正本性は維持しない
    - 伏字レベルを持つ
    - included_sections を持つ

positioning_summary:
  - 「相談する前後を整えるアプリ」であり「判断するアプリ」ではない
