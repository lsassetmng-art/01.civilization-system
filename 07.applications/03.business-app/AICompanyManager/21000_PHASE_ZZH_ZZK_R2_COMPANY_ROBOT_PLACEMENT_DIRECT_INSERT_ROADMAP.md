# AICompanyManager Phase ZZH-ZZK-R2 company robot placement direct insert roadmap

## Previous failure
Direct insert failed before commit because text[] was appended with scalar text using `||`.

## Fix
Use `array_append(v_cols, ...)` and `array_append(v_exprs, ...)` for dynamic insert column/expression arrays.

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
