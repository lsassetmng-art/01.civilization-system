# AICompanyManager Phase UB-UE UI terminology section repair roadmap

## Phase
- UB-UE

## Purpose
Change user-facing terminology from 組織 to 課 where it refers to department sub-units.

## Rule
- UI labels: use 課 / 課設定 / 課詳細 / 課変更 / 課追加
- Internal DB/API/code identifiers: keep organization for compatibility
- No DB/RLS/API changes

## This phase
- Directly repair visible Japanese labels in the UI JavaScript.
- Keep index.html script count 1.
- Run node --check.
- Push design and implementation evidence.

## Not executed
- DB write
- psql
- API write
- RLS apply
- policy change
