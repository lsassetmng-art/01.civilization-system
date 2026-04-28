# AICompanyManager Phase XH-XK payload preview strict validation roadmap

## Current position
- BusinessOS DB robot_pool connection: done
- role exact filter: done
- label cleanup: done
- compact payload preview: done
- company_id canonicalization preview: done

## Problem
Preview can still show PREVIEW_ONLY_CANONICAL_OK even when:
- robot_pool_id is empty
- model_code is empty
- robot_display_name is empty
- selected_option_text is placeholder

Also single_db_company_fallback can map a local UI company to an unrelated DB company without enough confidence.

## This phase
- Add strict payload validation.
- Block preview save readiness when robot is not selected.
- Add validation_errors array.
- Add robot_selection_status.
- Add company_mapping_warning.
- Allow PREVIEW_ONLY_CANONICAL_OK only when company, target, and robot are all valid.
- No persistent save.

## Not executed
- DB write
- DB DDL
- API write
- RLS apply
- persistent placement save
- quantity consumption
- main UI JS change
