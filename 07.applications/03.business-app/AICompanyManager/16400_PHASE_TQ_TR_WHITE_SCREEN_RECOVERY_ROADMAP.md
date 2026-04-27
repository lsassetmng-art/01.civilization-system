# AICompanyManager Phase TQ-TR white screen emergency recovery roadmap

## Phase
- TQ-TR

## Issue
Actual UI became blank after robot UI patch additions.

## Probable cause
Appended UI fallback patches caused browser-side JavaScript runtime or syntax failure.

## This phase
- Restore UI by removing appended patch blocks beginning with AICM_*_PATCH_BEGIN markers.
- Keep base UI JavaScript.
- Keep index.html script count as 1.
- Run syntax check.
- Do not apply further UI placement changes in this emergency recovery.
- Push recovery evidence.

## Not executed
- DB write
- psql
- API write
- RLS apply
- policy change
