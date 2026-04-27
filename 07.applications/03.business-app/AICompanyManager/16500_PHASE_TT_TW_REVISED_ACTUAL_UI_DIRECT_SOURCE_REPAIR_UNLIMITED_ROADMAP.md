# AICompanyManager Phase TT-TW-REVISED actual UI direct source repair roadmap

## Phase
- TT-TW-REVISED

## Current correction
AICompanyManager is a system-use app.
Therefore robot assignment is unlimited allocation, not finite contracted quantity consumption.

## UI rule
- Robot selection is required.
- Quantity consumption is not performed.
- President is configured in AI企業設定.
- Company business policy is instructed to President from AI企業設定.
- Manager / Leader / Worker / Reviewer are placed from 部門詳細 / 組織詳細 / 組織カード.
- Candidate robots are selected from the Business-side robot pool/catalog.
- Arbitrary free-text robot creation is not used.

## This phase
- Directly replace existing renderDashboard.
- Directly replace existing renderSettings.
- Directly replace existing renderOrganizationDetail.
- Directly replace existing renderOrganizationAdd.
- Directly replace existing renderOrganizationEdit.
- Add helper functions inside existing UI source.
- Add action handlers for President setting and company policy instruction.
- Keep index.html script count 1.
- Run node --check.

## Not executed
- DB write
- psql
- API write
- RLS apply
- policy change
- quantity consumption
