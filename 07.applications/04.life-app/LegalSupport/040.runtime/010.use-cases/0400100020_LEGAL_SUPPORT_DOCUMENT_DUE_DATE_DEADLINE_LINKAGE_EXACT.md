# ============================================================
# LEGAL SUPPORT DOCUMENT DUE DATE DEADLINE LINKAGE EXACT
# ============================================================

status: draft-formal
system: LegalSupport
layer: runtime
subdomain: use-cases
schema: life

purpose:
  - document_item の取得期限 / 提出期限と deadline_item の正式期限管理を接続する
  - 書類メタ情報上の補助期限と、通知・運用上の正式期限を分離しつつ整合を取る
  - 二重管理による混乱を減らす

principles:
  - document_item.acquisition_due_date / submission_due_date は書類側の補助期限
  - deadline_item は通知・一覧・ダッシュボードで使う正式期限エンティティ
  - 書類期限を入力しても自動で deadline_item を必須生成しない
  - ただし owner が明示したとき、または UI 導線で選んだときは deadline_item へ反映できる

linkage_patterns:

  pattern_a_reference_only:
    description:
      - document_item 側に only due date を保持
      - deadline_item は作らない
    use_when:
      - 軽いメモ用途
      - 通知不要
      - 一時的な整理段階

  pattern_b_promote_to_deadline:
    description:
      - document_item 側の期限を deadline_item に昇格させる
    use_when:
      - 通知したい
      - ダッシュボードに出したい
      - 期限漏れ防止対象にしたい

  pattern_c_link_existing_deadline:
    description:
      - 既存 deadline_item と document_item を関連づける
    use_when:
      - 既に案件全体の期限がある
      - 書類と期限を紐づけたい

recommended_rule:
  - 初期は pattern_a と pattern_b を優先
  - pattern_c は将来拡張でもよい

exact_actions:

  promote_document_due_to_deadline:
    request:
      action: promote_document_due_to_deadline
      payload:
        document_item_id: uuid
        due_source: enum[acquisition_due_date, submission_due_date]
        deadline_type: enum[submission, reminder, other]
        urgency_level: enum[low, medium, high, urgent]
        notification_enabled: boolean
        note: string|null
    response:
      deadline_item:
        deadline_item_id: uuid
        legal_case_id: uuid
        deadline_type: string
        deadline_date: date
        urgency_level: string
        notification_enabled: boolean
        note: string|null
        created_at: timestamptz
        updated_at: timestamptz

  link_document_to_existing_deadline_future:
    request:
      action: link_document_to_existing_deadline_future
      payload:
        document_item_id: uuid
        deadline_item_id: uuid
    response:
      linkage:
        document_item_id: uuid
        deadline_item_id: uuid
        status: linked
    status:
      - future_only

linkage_rules:
  - acquisition_due_date が null の場合、due_source=acquisition_due_date は不可
  - submission_due_date が null の場合、due_source=submission_due_date は不可
  - promoted deadline は legal_case_id を document_item 親案件から継承する
  - archived case では promote 不可
  - private document でも owner は promote 可能
  - family dashboard に出るのは linked deadline 側の可視条件に従う

ui_guidance:
  - document detail で「正式期限に追加」導線を置ける
  - unresolved document widget から promote 導線を置いてよい
  - promote 後は「書類期限から正式期限を作成しました」と表示する
