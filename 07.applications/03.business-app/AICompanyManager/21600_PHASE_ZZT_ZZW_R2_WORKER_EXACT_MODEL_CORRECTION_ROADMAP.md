# AICompanyManager Phase ZZT-ZZW-R2 Worker exact model correction roadmap

## Previous failure
The previous exact Worker correction looked only at model_code and excluded rows too broadly, causing candidate count 0.

## Discovery
business.robot_pool stores the canonical robot model in aiworker_model_code.

## Current bad Worker row
- model_code = Worker
- aiworker_model_code = Worker
- robot_display_name = blank
- internal_nickname = LoVerS 06F Cool

## This phase
Correct the existing Worker placement to an exact Worker-capable model using aiworker_model_code.

## Preferred target
- BYD1-003 / ASIC Workers3

## Safety
- DB WRITE: EXECUTED
- API WRITE: NOT EXECUTED
- DELETE: NOT EXECUTED
- INSERT: NOT EXECUTED
- RLS APPLY: NOT EXECUTED
- FORCE RLS: NOT EXECUTED
- quantity_consumption: false
