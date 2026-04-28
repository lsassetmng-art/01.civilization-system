# AICompanyManager Phase ZZH-ZZK-R3 company robot placement direct insert roadmap

## Previous failures
- R1 failed due to text[] scalar append.
- R2 fixed array append but failed because required columns were not mapped:
  - aiworker_model_code
  - target_level_code

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
