# AICompanyManager Phase ZZH-ZZK company robot placement direct insert roadmap

## Current state
- business.company_robot_placement exists.
- Existing row count is 0.
- Worker update rollback smoke cannot run because there is no existing Worker placement.

## This phase
Persist four initial placements directly into business.company_robot_placement.

## Target placements
- President: BYD2-003 / Triple / company scope
- Manager: HD-R5 / ナイト・ベイカー / department scope
- Leader: BYD2-002 / 佐藤太郎 / section scope
- Worker: BYD1-003 / ASIC Workers3 / section scope

## Policy
- DB WRITE: EXECUTED
- API WRITE: NOT EXECUTED
- DELETE: NOT EXECUTED
- UPDATE: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- FORCE RLS: NOT EXECUTED
- quantity_consumption: false
