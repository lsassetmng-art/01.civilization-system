# ============================================================
# MODEL DECISION ADJUSTMENT CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only
schema_name: life

decision_summary:
  - advisor_contact は owner 配下を基本とする
  - document と evidence は entity を分けたまま維持する
  - consultation から task / deadline は候補生成思想に留める
  - 仮期限表現は将来拡張候補として保持する
  - audio は初期正式対象にしない

decisions:

  advisor_contact_scope:
    decision:
      - advisor_contact は owner_user_id 配下の責務を基本とする
      - case からは参照利用する
    reason:
      - 同一相談先を複数案件から使う可能性がある
      - 案件専用データにしすぎない方が自然

  document_evidence_split:
    decision:
      - legal_document と evidence_item は model 上分離する
      - interface 上は同一整理画面で統合表示可能とする
    reason:
      - 表示上の簡便さと責務分離を両立する

  consultation_derivation_policy:
    decision:
      - consultation_note は task / deadline の候補元になれる
      - ただし自動生成の正本にはしない
    reason:
      - 面談メモと運用タスクを混同しない

  tentative_deadline_policy:
    decision:
      - deadline_event に仮期限表現の拡張余地を残す
      - 初期は completion_flag と note で凌ぎ、後で dedicated flag を検討する
    reason:
      - 今すぐ field を増やしすぎない
      - ただし要件は見失わない

  audio_policy:
    decision:
      - audio は future candidate に留める
      - 初期正式対象は image / pdf / text を基本にする
    reason:
      - 保管、検索、秘匿、書き起こし設計が重くなるため

model_implications:
  - owner 配下 entity と case 配下 entity の区別を維持する
  - UI 都合で entity 責務を崩さない
  - future candidate は明示的に deferred 扱いとする
