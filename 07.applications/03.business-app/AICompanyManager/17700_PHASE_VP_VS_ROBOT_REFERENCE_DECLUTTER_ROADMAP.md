# AICompanyManager Phase VP-VS robot reference declutter roadmap

## Phase
- VP-VS

## User feedback
Robot reference cards are appearing in too many places.
This is not appropriate for normal operation screens.

## Corrected UI rule
- Do not show robot reference cards inside President / Manager / Leader / Worker setting forms.
- Do not show a global-dashboard reference card on the dashboard.
- Keep normal operation screens focused on selection, nickname, placement, and edit.
- If reference state is shown, show it only as compact status in the BusinessOS AIWorker robot setting / connection guide area.

## This phase
- Replace persistent reference wire JS with decluttered compact wire.
- Remove global-dashboard injection.
- Remove target form card injection.
- Keep only compact reference status near:
  - BusinessOS AIWorker ロボット設定
  - AICompanyManager ロボット設定導線
  - 画面別ロボット配置フィルタ
  - 保存済みロボット配置
- Main UI JS remains unchanged.

## Not executed
- DB write
- psql
- API write
- RLS apply
- main UI JS change
