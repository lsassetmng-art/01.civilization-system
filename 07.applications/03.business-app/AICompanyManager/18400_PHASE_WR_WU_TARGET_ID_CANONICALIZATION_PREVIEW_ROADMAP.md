# AICompanyManager Phase WR-WU target_id canonicalization preview roadmap

## Phase
- WR-WU

## Current position
- BusinessOS DB robot_pool connection: done
- role exact filter: done
- candidate label cleanup: done
- payload preview: done

## Problem
Payload preview currently uses local UI IDs for non-company targets:
- department target_id may be dep-...
- section target_id may be org-...

These are not safe for persistent BusinessOS DB save.

## This phase
- Add read-only structure-map API.
- Read business.aicm_company / business.aicm_department / business.aicm_organization.
- Canonicalize target_id in preview only.
- Add target_id_input / target_id / target_id_source / target_id_canonicalization_status.
- If target_id cannot be canonicalized, show save_blocked true.
- No persistent save.

## Not executed
- DB write
- DB DDL
- API write
- RLS apply
- persistent placement save
- quantity consumption
- main UI JS change
