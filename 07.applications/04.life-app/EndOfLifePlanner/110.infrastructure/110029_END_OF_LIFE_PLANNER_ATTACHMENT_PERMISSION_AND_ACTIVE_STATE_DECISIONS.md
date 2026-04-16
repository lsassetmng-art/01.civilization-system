# ============================================================
# END OF LIFE PLANNER ATTACHMENT PERMISSION AND ACTIVE STATE DECISIONS
# ============================================================

status: canonical-draft
phase: L9-open-points-closure
type: db-closure-decisions-without-sql

document_purpose:
  - 高優先の未確定DB論点を閉じる
  - 実装前に attachment / permission representation / active state 表現を固定する
  - SQL ではなく設計判断のみ記録する

closed_decisions:

  owner_profile_strategy:
    decision:
      - eol_owner_profile は独立テーブルとして保持する
    reason:
      - EndOfLifePlanner 固有の表示/整理責務を持つため
      - 他の life person 基礎情報に依存しすぎると画面責務が曖昧になるため
    implication:
      - owner 基本入力責務は eol_owner_profile に持たせる

  family_message_attachment_strategy:
    decision:
      - attachment metadata は family_message 本体から分離する
      - 新しい logical child entity を将来物理化候補とする
    child_entity_name_draft:
      - eol_family_message_attachment
    child_entity_responsibility:
      - attachment_id
      - family_message_id
      - attachment_type
      - file_name
      - mime_type
      - file_size_bytes
      - duration_seconds optional
      - storage_reference
      - created_at
    reason:
      - family_message 本体と添付管理の責務が異なるため
      - 音声/写真の属性が message 本文と異なるため
      - 監査と permission 連動を整理しやすいため

  checklist_strategy:
    decision:
      - 現段階は単表運用とする
      - seed master + user state の2層分離は将来拡張候補とする
    reason:
      - 初期設計の複雑化を避けるため
      - 実装前設計として十分な単純性を確保するため

  handoff_document_storage_strategy:
    decision:
      - handoff_document は metadata と snapshot scope を DB で保持
      - 実体ファイルは別ストレージ参照方針を採る
    reason:
      - 出力本体を DB 大容量保持前提にしないため
      - history / search と object storage 責務を分離するため
    implication:
      - storage_reference 相当の論理項目を後段で持てるようにする

  sharing_permission_representation:
    decision:
      - visible_categories / editable_categories は初期は JSON 構造で保持する
    reason:
      - category 数が限定的である
      - design-only 段階では柔軟性が高い
      - row 分解より初期設計の見通しが良い
    safeguard:
      - source of truth は eol_sharing_permission 1表に集約
      - JSON key 名は固定カテゴリ名のみ許可
      - category 任意追加はしない
    future_extension:
      - 高度検索が必要になれば row-split を再検討する

  current_active_representation:
    decision:
      - version entity には is_current_active を持たず、record_status + latest version rule で表現する
    applies_to:
      - eol_medical_preference
      - eol_care_preference
      - eol_funeral_preference
    reason:
      - current flag と status/version の二重管理を避けるため
      - design を単純に保つため
    operational_rule:
      - owner 単位で active current は1件前提
      - 過去版は archived または非current active 扱いへ寄せず、履歴ルールで管理する
    note:
      - 物理制約表現は後段で検討する

attachment_entity_logical_addition:
  entity_name: eol_family_message_attachment
  status: logical-added
  fields:
    - family_message_attachment_id
    - life_person_id
    - family_message_id
    - attachment_type
    - file_name
    - mime_type
    - file_size_bytes
    - duration_seconds optional
    - storage_reference
    - sensitivity_class
    - record_status
    - created_at
  visibility_rule:
    - family_message open_condition と sharing_permission.attachment_view_allowed の両方を満たす場合のみ参照可

closure_result:
  closed:
    - owner_profile strategy
    - family_message attachment separation
    - checklist single-table initial strategy
    - handoff_document object reference direction
    - sharing_permission JSON representation
    - current active representation rule
  remaining_minor_points:
    - attachment allowed file size / format final values
    - response shape polish
