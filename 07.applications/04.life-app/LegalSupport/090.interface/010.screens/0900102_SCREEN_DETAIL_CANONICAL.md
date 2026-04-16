# ============================================================

<!-- LIFE_COMMON_PERSONA_BACKGROUND_RULE -->
# ============================================================
# LIFE COMMON UI REQUIREMENT
# ============================================================

- 本アプリは Life 系共通要件として、画面上にペルソナおよび背景を表示する。
- 表示中のペルソナおよび背景はユーザーが変更可能とする。
- 仕様・振る舞い・変更導線・表示更新の考え方は PocketSecretary と同等とする。
- 本要件は Life 系全アプリ共通の必須要件として扱う。

# SCREEN DETAIL CANONICAL
# LegalSupport
# ============================================================

status: canonical-draft
phase: design-only
app_name:
  en: LegalSupport
  ja: 法律相談サポートアプリ

screen_detail:

  home_dashboard:
    purpose:
      - 全体状況の把握
      - 次にやることの明確化
    main_sections:
      - 進行中案件
      - 近日期限
      - 未完了タスク
      - 最近追加書類
      - 最近更新案件
    main_actions:
      - 新規案件作成
      - 案件を開く
      - 期限一覧へ
      - 書類一覧へ
    display_items:
      - case_title
      - case_status
      - next_action_summary
      - upcoming_deadline_count
      - open_task_count
    navigation:
      - case_list
      - case_detail
      - deadline_board
      - document_list

  case_list:
    purpose:
      - 案件一覧管理
    filters:
      - category
      - status
      - shared_only
      - keyword
      - updated_order
    display_items:
      - case_title
      - category
      - status
      - importance_level
      - next_action_summary
      - updated_at
    main_actions:
      - 新規案件作成
      - 案件詳細表示
      - 条件絞込
      - 並び替え
    navigation:
      - case_create
      - case_detail

  case_create:
    purpose:
      - 新規案件登録
    required_inputs:
      - title
      - category
      - summary
    optional_inputs:
      - importance_level
      - started_on
      - next_action_summary
    buttons:
      - 下書き保存
      - 作成
      - キャンセル
    rules:
      - 必須項目不足時は作成不可
      - 法的結論入力欄は置かない
    navigation:
      - case_detail
      - case_list

  case_detail:
    purpose:
      - 1案件の中心画面
    tabs:
      - overview
      - fact_timeline
      - stakeholders
      - documents
      - consultations
      - tasks
      - deadlines
      - sharing
    overview_display_items:
      - title
      - category
      - summary
      - status
      - importance_level
      - started_on
      - next_action_summary
      - confidentiality_level
    overview_actions:
      - 編集
      - アーカイブ
      - 共有設定
      - 共有パック出力
    navigation:
      - fact_timeline
      - stakeholder_list
      - document_list
      - consultation_log
      - task_board
      - deadline_board
      - share_setting

  fact_timeline:
    purpose:
      - 事実関係を時系列で整理
    display_items:
      - event_date
      - event_time_optional
      - title
      - detail
      - fact_confidence
      - source_type
      - related_stakeholders
    input_items:
      - event_date
      - event_time_optional
      - title
      - detail
      - fact_confidence
      - source_type
      - source_document_optional
      - related_stakeholders
    buttons:
      - 追加
      - 編集
      - 並び替え
    rules:
      - 事実と推測を区別表示する
      - 日付不明時は入力強制しない設計余地を残す

  stakeholder_list:
    purpose:
      - 関係者整理
    display_items:
      - name
      - stakeholder_type
      - relation_to_owner
      - role_note
      - importance_flag
    input_items:
      - name
      - stakeholder_type
      - relation_to_owner
      - contact_note
      - role_note
      - importance_flag
    buttons:
      - 追加
      - 編集
      - 並び替え
    rules:
      - 関係者は案件単位で閉じる
      - owner と他関係者を混同しない

  document_list:
    purpose:
      - 書類と証拠の整理
    display_items:
      - document_category
      - title
      - issuer
      - issued_on
      - reviewed_flag
      - confidentiality_level
    input_items:
      - document_category
      - title
      - issuer
      - issued_on
      - expiry_date_optional
      - storage_location_note
      - file_reference_placeholder
      - reviewed_flag
      - confidentiality_level
    buttons:
      - 書類追加
      - 編集
      - 確認済み化
      - 絞込
    rules:
      - 高秘匿書類は共有除外可能
      - metadata と添付本体は分けて考える

  consultation_log:
    purpose:
      - 面談記録保存
    display_items:
      - consulted_at
      - advisor_name
      - advisor_type
      - consultation_summary
      - unresolved_points
      - next_steps
    input_items:
      - consulted_at
      - advisor_name
      - advisor_type
      - consultation_summary
      - advice_memo
      - unresolved_points
      - next_steps
    buttons:
      - 追加
      - 編集
      - 次対応へ反映
    rules:
      - 相談記録は法的結論の正本ではない
      - 面談後タスク化につながる構造にする

  task_board:
    purpose:
      - やること管理
    display_items:
      - task_type
      - title
      - due_date
      - status
      - assigned_to_role
    input_items:
      - task_type
      - title
      - description
      - due_date
      - status
      - assigned_to_role
      - related_document_optional
    buttons:
      - 追加
      - 状態変更
      - 編集
    rules:
      - owner と delegated_editor の作業分担を表せる
      - viewer には編集権限を与えない前提

  deadline_board:
    purpose:
      - 期限把握
    display_items:
      - deadline_type
      - title
      - due_date
      - severity
      - completion_flag
    input_items:
      - deadline_type
      - title
      - due_date
      - severity
      - reminder_policy_note
      - completion_flag
    buttons:
      - 追加
      - 完了
      - 編集
      - 日付順表示
    rules:
      - 不確実な期限は将来拡張で仮期限対応余地を持つ

  share_setting:
    purpose:
      - 共有設定と共有パック出力
    display_items:
      - target_user
      - granted_role
      - included_sections
      - exclude_sensitive_items
      - redaction_level
      - is_active
    input_items:
      - target_user
      - granted_role
      - included_sections
      - exclude_sensitive_items
      - redaction_level
    buttons:
      - 共有付与
      - 共有解除
      - 共有パック出力
    rules:
      - 明示共有のみ
      - owner のみ共有設定変更可
      - 高秘匿項目は除外既定を持てる

screen_navigation_policy:
  - home_dashboard を入口にする
  - case_detail を中心導線とする
  - 書類、期限、相談記録、共有は case_detail から辿れるようにする
  - 1画面1目的を維持する
