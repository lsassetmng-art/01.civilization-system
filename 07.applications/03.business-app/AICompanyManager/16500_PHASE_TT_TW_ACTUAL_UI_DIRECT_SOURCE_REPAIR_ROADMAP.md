# AICompanyManager Phase TT-TW actual UI direct source repair roadmap

## Phase
- TT-TW

## Previous state
- White screen was recovered.
- Appended fallback patch blocks were removed.
- Current JS has PATCH_MARKER_COUNT=0 and node check PASS.

## Reported UI issues
- Dashboard should not show 操作入口 card.
- Dashboard should not show Phase AN explanation.
- AI企業設定 screen should not show 新規追加 card.
- President robot must be configured on AI企業設定.
- Company business policy must be instructable to President from AI企業設定.
- Organization robot placement must be selectable from Business registered robots.
- Organization robot placement belongs to 組織詳細 / 組織変更, not dashboard.

## This phase
- Directly replace existing renderDashboard.
- Directly replace existing renderSettings.
- Directly replace existing renderOrganizationDetail.
- Directly replace existing renderOrganizationAdd.
- Directly replace existing renderOrganizationEdit.
- Add small helper functions inside existing UI source.
- Add action handlers for President setting and company policy instruction.
- Keep index.html script count 1.
- Run node --check.

## Not executed
- DB write
- psql
- API write
- RLS apply
- policy change
