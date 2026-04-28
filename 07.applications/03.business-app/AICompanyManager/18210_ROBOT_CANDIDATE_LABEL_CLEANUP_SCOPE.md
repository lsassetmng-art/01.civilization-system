# AICompanyManager robot candidate label cleanup scope

## In scope
- Better candidate labels for President / Manager / Leader / Worker selects.
- Exact filter remains.
- Stable select behavior remains.
- BusinessOS DB read-only API remains.

## Label format
Example:
President配置: ASIC Leader3 / BYD2-003 / 対応: President・Manager・ExecutiveManager / BusinessOS DB

## Out of scope
- DB write
- RLS change
- API write
- Direct browser DB access
- Quantity consumption
- Main UI JS edit
