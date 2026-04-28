# AICompanyManager Phase XD-XG company_id canonicalization preview roadmap

## Current position
- BusinessOS DB robot_pool connection: done
- role exact filter: done
- label cleanup: done
- payload preview: done
- details JSON toggle: repaired

## Problem
Preview payload still uses local UI company id:
- company-mogt...

Persistent save requires canonical DB UUID company_id.

## This phase
- Add company_id canonicalization in preview.
- Preserve company_id_input.
- Set company_id to DB canonical UUID when resolvable.
- Add company_id_source / company_id_canonicalization_status.
- If company_id remains local-only, save_blocked true.
- No save is executed.

## Not executed
- DB write
- DB DDL
- API write
- RLS apply
- persistent placement save
- quantity consumption
- main UI JS change
