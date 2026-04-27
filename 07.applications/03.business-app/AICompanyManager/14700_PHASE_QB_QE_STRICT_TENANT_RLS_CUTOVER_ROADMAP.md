# AICompanyManager Phase QB-QE strict tenant RLS cutover roadmap

## Phase
- QB-QE

## Current position
Completed:
- smoke-safe RLS apply
- strict tenant RLS exact design
- Sato DB review OK
- Boss OK for shadow apply
- strict tenant RLS shadow apply
- helper functions verified
- strict policies verified
- smoke-safe policy still present before this phase
- service_role policy still present

## Boss approval
Boss explicitly said:
strict tenant RLS cutover OK

## This phase
Cut over from smoke-safe authenticated access to strict tenant RLS.

## Cutover action
Drop only:
- aicm_authenticated_all_smoke_safe

From AICompanyManager target tables.

## Must remain
- strict policies
- service_role policy
- RLS enabled
- helper functions

## Not executed
- FORCE ROW LEVEL SECURITY
- DROP strict policies
- DROP service_role policy
- table recreation
- data deletion
- API call
- curl
