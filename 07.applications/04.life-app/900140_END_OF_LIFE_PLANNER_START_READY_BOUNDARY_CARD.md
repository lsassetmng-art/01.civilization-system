# ============================================================
# END OF LIFE PLANNER START READY BOUNDARY CARD
# under 04.life-app
# ============================================================

status: canonical-draft
phase: start-ready-boundary-card
app: EndOfLifePlanner

state_definition:
  design_ready:
    - true
  implementation_preparation_complete:
    - true
  implementation_started:
    - false

what_is_ready:
  - screen specification
  - api specification
  - db design without sql
  - policy and safety
  - review and handoff documents

what_is_not_started:
  - executable SQL
  - migration
  - runtime coding
  - build implementation
  - deployment preparation

safe_interpretation:
  - このアプリは「実装してよい状態」ではなく
  - 「実装に入るための準備が完了した状態」
  - ただし実際の開始指示はまだ出ていない

portfolio_note:
  - 04.life-app 配下の他アプリと比較する際は
    「design ready / prep complete / not started」を基準表現として扱える
