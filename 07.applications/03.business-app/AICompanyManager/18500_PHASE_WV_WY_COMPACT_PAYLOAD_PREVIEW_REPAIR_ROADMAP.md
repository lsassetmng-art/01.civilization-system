# AICompanyManager Phase WV-WY compact payload preview repair roadmap

## Problem
The target_id canonicalization preview became too long because the preview card text was read back into target_display_hint. Re-rendering caused JSON to be nested inside JSON repeatedly.

## This phase
- Replace payload preview JS with compact preview V3.
- Remove previous preview nodes before reading card text.
- Do not use preview JSON text as target_display_hint.
- Display short summary rows.
- Put full JSON inside collapsed details.
- Keep preview-only safety.

## Not executed
- DB write
- DB DDL
- API write
- RLS apply
- persistent placement save
- quantity consumption
- main UI JS change
