# AIWorkerOS Helpdesk API AI Review Ready

## Review purpose

Review actual AIWorkerOS runtime/API source structure before any patch.

## App root

APP_ROOT=/data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api

## Evidence

- API_CONTRACT_DOC=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/010_AIW_HELPDESK_READONLY_API_CONTRACT_DRAFT.md
- PATCHPOINT_DOC=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/020_AIW_HELPDESK_API_PATCHPOINT_INVENTORY.md
- PROPOSED_ENDPOINTS_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/047_proposed_helpdesk_endpoints.tsv
- FILE_INVENTORY_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/040_file_inventory.tsv
- INTERESTING_FILES_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/041_interesting_files.tsv
- ROUTE_MATCHES_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/042_route_matches.tsv
- DB_MATCHES_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/043_db_matches.tsv
- RESPONSE_MATCHES_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/044_response_matches.tsv
- HELPDESK_EXISTING_MATCHES_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/045_helpdesk_existing_matches.tsv
- DUMP_MAP_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/046_source_dump_map.tsv
- SOURCE_DUMP_DIR=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/source_dumps

## Review questions

1. Which file owns HTTP route dispatch?
2. Which helper owns DB access?
3. Which response helper style should be reused?
4. Are there existing Helpdesk references?
5. Can Phase1 be implemented as read-only GET routes only?
6. Is a new helper necessary, or can existing structure be reused?
7. What exact file should be patched in the next phase?
8. What tests are required after patch?
