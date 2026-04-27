# AICompanyManager Phase PT-PW strict tenant RLS shadow apply roadmap

## Phase
- PT-PW

## Current position
Completed:
- smoke-safe RLS apply
- strict tenant RLS exact design
- Sato DB review OK
- Boss OK

## This phase
Apply strict tenant RLS in shadow/additive mode.

## Meaning of shadow/additive
- Add helper functions.
- Add strict policies.
- Keep smoke-safe authenticated policy for now.
- Do not cut over yet.
- Do not drop existing policies.

## Completion condition
- helper functions exist.
- strict policies exist.
- RLS remains enabled on all target tables.
- smoke-safe policy remains present.
- service_role policy remains present.

## Not executed
- DROP POLICY
- FORCE ROW LEVEL SECURITY
- smoke-safe policy cutover
- DB data write
- API call
- curl
