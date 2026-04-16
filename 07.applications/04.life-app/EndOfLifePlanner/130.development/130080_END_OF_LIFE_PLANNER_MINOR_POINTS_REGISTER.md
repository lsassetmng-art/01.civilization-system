# ============================================================
# END OF LIFE PLANNER MINOR POINTS REGISTER
# ============================================================

status: canonical-draft
phase: L12-minor-values-closure
app: EndOfLifePlanner

document_purpose:
  - 高優先未確定ではなく、微調整だけ残る論点を記録する
  - HOLD 理由と minor polishing を区別する

minor_points:

  - minor_id: EOL-MINOR-001
    title: attachment file size final values
    status: closed
    note:
      - fixed in 120050_END_OF_LIFE_PLANNER_ATTACHMENT_AND_RESPONSE_MINOR_VALUES.md

  - minor_id: EOL-MINOR-002
    title: attachment allowed mime type final values
    status: closed
    note:
      - fixed in 120050_END_OF_LIFE_PLANNER_ATTACHMENT_AND_RESPONSE_MINOR_VALUES.md

  - minor_id: EOL-MINOR-003
    title: formal api response shape polish
    status: closed
    note:
      - fixed in 120050_END_OF_LIFE_PLANNER_ATTACHMENT_AND_RESPONSE_MINOR_VALUES.md

  - minor_id: EOL-MINOR-004
    title: ui wording polish
    status: closed
    note:
      - fixed in 090050_END_OF_LIFE_PLANNER_UI_WORDING_POLISH_NOTE.md

minor_point_policy:
  - minor points は設計骨格を崩さない
  - major architecture / permission / db responsibility には影響しない
  - 実装未開始方針とは分離して扱う

current_minor_state:
  - no_open_minor_points
