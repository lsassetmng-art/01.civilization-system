# KDB_HELPDESK_EXISTING_DB_HELPER_CONTRACT_INVENTORY_NO_PATCH_NO_DB

## Decision

Do not add DB connection logic to helpdesk-provider.mjs.

## Reason

- Helpdesk provider boundary requires provider-local DB connection = forbidden.
- pg direct import failed in the DB-backed readonly harness.
- Inventory found existing DB/query signals.
- Next DB-backed test should reuse an existing runtime query dependency/helper rather than adding pg to Helpdesk provider.

## Candidate counts

HELPER_CANDIDATE_COUNT=33300
QUERY_DEP_CANDIDATE_COUNT=30272
PG_IMPORT_CONTEXT_COUNT=1
POOL_CONTEXT_COUNT=80
CANDIDATE_FILE_COUNT=397

## Required next action

Create a no-patch test harness that imports or calls the existing query helper if one is clearly identified.
If no stable helper is clearly identified, stop and create a NOT_EXECUTED patch design only.
