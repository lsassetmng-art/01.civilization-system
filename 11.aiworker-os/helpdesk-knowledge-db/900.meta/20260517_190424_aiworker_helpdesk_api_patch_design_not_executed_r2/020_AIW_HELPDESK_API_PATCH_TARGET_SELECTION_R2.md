# AIWorkerOS Helpdesk API Patch Target Selection R2

## 1. Selected candidates

Route owner candidate:

- /data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/brain-context-bridge.js

Route owner selection:

- FALLBACK_FROM_INTERESTING_FILES

DB owner candidate:

- /data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/brain-context-bridge.js

DB owner selection:

- FALLBACK_TO_ROUTE_OWNER

Response owner candidate:

- /data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/brain-context-bridge.js

Response owner selection:

- FALLBACK_TO_ROUTE_OWNER

## 2. Why R2 was needed

The previous NOT_EXECUTED patch design failed because route match inventory did not identify a route owner file.

R2 uses fallback target selection:

1. route matches
2. interesting .mjs/.js/.ts source file
3. file inventory .mjs/.js/.ts source file

## 3. Evidence files

- FILE_INVENTORY_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/040_file_inventory.tsv
- INTERESTING_FILES_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/041_interesting_files.tsv
- ROUTE_MATCHES_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/042_route_matches.tsv
- DB_MATCHES_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/043_db_matches.tsv
- RESPONSE_MATCHES_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/044_response_matches.tsv
- HELPDESK_EXISTING_MATCHES_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/045_helpdesk_existing_matches.tsv
- DUMP_MAP_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_143007_aiworker_helpdesk_api_source_inventory_no_patch_r2/046_source_dump_map.tsv
- CANDIDATE_FILES_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_190424_aiworker_helpdesk_api_patch_design_not_executed_r2/063_patch_candidate_files_r2.tsv
- PATCH_TARGETS_TSV=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/helpdesk-knowledge-db/900.meta/20260517_190424_aiworker_helpdesk_api_patch_design_not_executed_r2/060_patch_targets_r2.tsv

## 4. Patch target decision

Primary patch target:

- /data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/brain-context-bridge.js

Next patch should still inspect the file immediately before patching.

## 5. Restrictions

The next code patch must not:

- change DB schema
- insert or update DB rows
- add POST Helpdesk routes
- add ticket/evidence write routes
- patch Portal UI
- patch CommonOS UI
- change CX22073JW execution behavior
- duplicate Guardrail Knowledge DB decision logic
- git push without explicit request
