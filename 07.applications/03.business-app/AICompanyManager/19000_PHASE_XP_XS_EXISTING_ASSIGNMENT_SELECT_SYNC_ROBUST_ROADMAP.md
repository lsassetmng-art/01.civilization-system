# AICompanyManager Phase XP-XS existing assignment select sync robust roadmap

## Current position
- BusinessOS DB robot_pool connection: done
- role exact filter: done
- label cleanup: done
- compact payload preview: done
- company_id canonicalization preview: done
- strict validation: done

## Problem
Existing assignment is visible:
- Triple @President
- Business側ロボットプール: <uuid>

But the select remains placeholder:
- BusinessOS DB候補を選択

Therefore preview sees:
- robot_pool_id empty
- model_code empty
- robot_display_name empty
- robot_not_selected

## This phase
- Replace existing assignment sync with robust V2.
- Prefer the card containing each select.
- Retry until BusinessOS DB options are populated.
- Extract robot_pool_id from visible assignment text.
- Set select only when it is still placeholder.
- Never overwrite user-selected value.
- Trigger change event so payload preview refreshes.

## Not executed
- DB write
- DB DDL
- API write
- RLS apply
- persistent placement save
- quantity consumption
- main UI JS change
