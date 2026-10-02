# AIWorkerOS Guardrail Knowledge DB GKD-4E-R4B Wiring Decision Draft

PHASE=GKD-4E-R4B_EXACT_BOUNDARY_EXTRACTION
CODE_PATCH=NO
API_POST=NO
DB_WRITE=NO

## Counts

- FUNCTION_COUNT=157
- ROUTE_COUNT=12
- QUEUE_COUNT=339
- ARTIFACT_COUNT=365
- RESPONSE_COUNT=82

## Current installed GKD hook

- helper exists: /data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/guardrail/guardrail-runtime-preflight.cjs
- server wrapper expected:
  - gkd4eR3RunRuntimeGuardrailPreflight(runtimeRequest)

## Decision

R5 patch is not automatically approved by this script.

R5 can proceed only after the operator reviews:

- FUNCTION_INDEX=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052326_aiw_gkd4e_r4b_exact_boundary_extraction/030_function_index.tsv
- ROUTE_INDEX=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052326_aiw_gkd4e_r4b_exact_boundary_extraction/040_route_index.tsv
- QUEUE_INDEX=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052326_aiw_gkd4e_r4b_exact_boundary_extraction/050_queue_index.tsv
- ARTIFACT_INDEX=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052326_aiw_gkd4e_r4b_exact_boundary_extraction/060_artifact_index.tsv
- RESPONSE_INDEX=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052326_aiw_gkd4e_r4b_exact_boundary_extraction/070_response_index.tsv
- CANDIDATE_CONTEXT=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_052326_aiw_gkd4e_r4b_exact_boundary_extraction/080_candidate_context.md

## R5 allowed patch shape

R5 may wire guardrail only at one proven shared point:

1. runtime request or queue item already normalized
2. before artifact generation / worker execution / side effects
3. existing blocked/error response helper is known
4. no route stream parser rewrite
5. no broad refactor

## Stop condition

Stop R5 if:

- multiple independent execution paths exist
- no single shared start function exists
- response shape differs by route
- guardrail runtime input cannot be built from existing request object
- wiring requires API POST to verify basic syntax
