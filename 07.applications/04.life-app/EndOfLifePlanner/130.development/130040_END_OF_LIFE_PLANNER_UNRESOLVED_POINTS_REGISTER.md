# ============================================================
# END OF LIFE PLANNER UNRESOLVED POINTS REGISTER
# ============================================================

status: canonical-draft
phase: L9-open-points-closure
app: EndOfLifePlanner

document_purpose:
  - 未確定事項を一覧化する
  - 実装開始を止めている論点を明示する
  - 次のレビュー順序を整える

priority_scale:
  - high
  - medium
  - low

open_points:

  - point_id: EOL-OPEN-001
    title: owner_profile の基礎情報を独立保持するか、既存 life person 情報参照中心にするか
    priority: high
    current_direction:
      - closed_as_independent_table
    status: closed

  - point_id: EOL-OPEN-002
    title: family_message 添付 metadata を別テーブル分離するか
    priority: high
    current_direction:
      - closed_as_separate_attachment_entity
    status: closed

  - point_id: EOL-OPEN-003
    title: checklist_item を seed master + user state の2層にするか
    priority: medium
    current_direction:
      - closed_as_single_table_initial_strategy
    status: closed

  - point_id: EOL-OPEN-004
    title: handoff_document の本体をDB保持にするか、別ストレージ参照にするか
    priority: high
    current_direction:
      - closed_as_metadata_in_db_and_object_reference
    status: closed

  - point_id: EOL-OPEN-005
    title: visible_categories / editable_categories を JSON で持つか、行分解するか
    priority: high
    current_direction:
      - closed_as_json_initial_strategy
    status: closed

  - point_id: EOL-OPEN-006
    title: current active 判定を専用列で持つか、status/version規則で表現するか
    priority: high
    current_direction:
      - closed_as_status_plus_version_rule
    status: closed

  - point_id: EOL-OPEN-007
    title: formal API の endpoint naming をこのまま固定するか
    priority: medium
    current_direction:
      - closed_as_finalized
    status: closed

  - point_id: EOL-OPEN-008
    title: 高齢者向けUI詳細をどこまで formal screen spec に含めるか
    priority: medium
    current_direction:
      - closed_by_accessibility_ui_note
    status: closed

remaining_minor_points:
  - point_id: EOL-MINOR-001
    title: attachment file size / format final values
    priority: medium
    status: open
  - point_id: EOL-MINOR-002
    title: formal api response shape polish
    priority: medium
    status: open
