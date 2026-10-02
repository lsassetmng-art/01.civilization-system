# AIWorkerOS Helpdesk API Patchpoint Inventory

## 1. Inventory target

APP_ROOT=/data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api

## 2. Inventory outputs

- FILE_INVENTORY_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/040_file_inventory.tsv
- INTERESTING_FILES_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/041_interesting_files.tsv
- ROUTE_MATCHES_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/042_route_matches.tsv
- DB_MATCHES_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/043_db_matches.tsv
- RESPONSE_MATCHES_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/044_response_matches.tsv
- HELPDESK_EXISTING_MATCHES_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/045_helpdesk_existing_matches.tsv
- DUMP_MAP_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/046_source_dump_map.tsv
- SOURCE_DUMP_DIR=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/source_dumps

## 3. Counters

- SOURCE_FILE_COUNT=2
- INTERESTING_FILE_COUNT=2
- ROUTE_MATCH_COUNT=0
- DB_MATCH_COUNT=0
- RESPONSE_MATCH_COUNT=0
- HELPDESK_EXISTING_MATCH_COUNT=0
- DUMP_COUNT=2

## 4. Patchpoint interpretation rule

Use existing server and DB helper structure.

Do not add a separate bridge layer unless the inventory proves no existing route/DB pattern can be reused.

Phase1 patch should add only read-only GET routes.

## 5. Preferred next patch scope

Allowed in next patch phase only after review:
- existing AIWorkerOS runtime HTTP server route dispatch
- existing DB helper or pool usage pattern
- small helper for safe JSON response only if already consistent with existing style
- route handlers for read-only Helpdesk endpoints

Not allowed in next patch phase:
- DB DDL/DML
- POST helpdesk ask/ticket/evidence
- Portal UI
- CommonOS UI
- CX22073JW execution logic
- Guardrail rule duplication
- git push without explicit request
