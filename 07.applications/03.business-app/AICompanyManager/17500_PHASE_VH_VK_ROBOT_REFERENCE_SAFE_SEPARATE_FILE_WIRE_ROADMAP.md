# AICompanyManager Phase VH-VK robot reference safe separate file wire roadmap

## Phase
- VH-VK

## Cause fixed
- pg_class.relkind is "char"; concatenate using relkind::text.
- index.html script count is already multi-script; do not require SCRIPT_COUNT=1.

## This phase
- DB read-only robot reference cache generation.
- Create separate safe DOM wire JS file.
- Add script tag to index.html if missing.
- Do not edit main UI JavaScript.
- Run node --check on the separate wire JS.
- Restore index/wire backup on failure.

## Safety
- DB WRITE: not executed
- DB DDL: not executed
- RLS APPLY: not executed
- API WRITE: not executed
- MAIN UI JS CHANGE: not executed
- QUANTITY_CONSUMPTION: not executed
