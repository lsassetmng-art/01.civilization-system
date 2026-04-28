# AICompanyManager Phase YN-YQ legacy local robot selection guard roadmap

## Current state
- President payload: OK
- Leader payload: OK
- Worker payload: OK
- Manager payload: BLOCKED because legacy local robot Manager Alpha is selected.

## Problem
Manager select currently holds an old local UI robot option:
- Manager Alpha / Manager / 無制限割当

The final payload rules require:
- BusinessOS DB option
- canonical UUID robot_pool_id
- BusinessOS DB label in selected option

## This phase
- Add guard JS.
- Detect invalid selected robot option:
  - non UUID value
  - option text not containing BusinessOS DB
- Replace only invalid selection with first valid BusinessOS DB option for the same role.
- Do not overwrite already-valid BusinessOS DB selection.
- Trigger change so payload preview refreshes.
- No DB write.

## Not executed
- DB write
- DB DDL
- API write
- RLS apply
- persistent save
- quantity consumption
- main UI JS change
