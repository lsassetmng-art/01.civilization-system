# AICompanyManager Phase XT-XW BusinessOS DB company binding roadmap

## Current position
- BusinessOS DB robot_pool connection: done
- existing robot assignment select sync: done
- strict payload validation: done
- President robot payload: OK
- remaining issue: company_id_source is single_db_company_fallback

## Problem
Fallback company selection is not safe before persistent save because the UI company id is local:
- company-mogt...

Persistent save should use an explicitly selected BusinessOS DB canonical company UUID.

## This phase
- Add BusinessOS DB company binding UI.
- Read companies from /api/aicm/structure-map.
- Add select id: aicm-db-company-binding-select.
- Patch preview companyId() to prefer DB company binding select.
- Keep original local UI company untouched.
- No DB write.

## Not executed
- DB write
- DB DDL
- API write
- RLS apply
- persistent placement save
- quantity consumption
- main UI JS change
