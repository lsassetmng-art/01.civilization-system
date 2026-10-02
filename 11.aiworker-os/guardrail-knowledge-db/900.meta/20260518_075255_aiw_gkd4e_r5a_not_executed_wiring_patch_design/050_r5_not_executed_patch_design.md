# AIWorkerOS Guardrail Knowledge DB GKD-4E-R5A NOT_EXECUTED Wiring Patch Design

PHASE=GKD-4E-R5A_NOT_EXECUTED_WIRING_PATCH_DESIGN
DOCUMENT_STATUS=NOT_EXECUTED
CODE_PATCH=NO
API_POST=NO
DB_WRITE=NO
GIT_PUSH=NO

## Decision

R5_DESIGN_STATUS=READY_FOR_R5B_APPLY_AFTER_BOSS_GO

## Target

- target_file=/data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/server.js
- helper_file=/data/data/com.termux/files/home/03.civilization-development/11.aiworker-os/runtime-execution-http-api/guardrail/guardrail-runtime-preflight.cjs
- runtime_caller_line=3784
- runtime_request_variable=result
- first_side_effect_line=3800

## Intended insertion

Insert immediately after:

```js
const result = createRuntimeRequest(...);
```

and before the first side-effect line:

```text
FIRST_SIDE_EFFECT_LINE=3800
```

## Intended code shape

```js
const guardrailDecision = await gkd4eR3RunRuntimeGuardrailPreflight({
  body: payload,
  runtimeRequest: result,
  sourceRouteCode,
  target_work_type_code: "runtime_request"
});

if (guardrailDecision && guardrailDecision.blocking_flag) {
  // Use existing response/error shape from this route.
  // Do not continue to DB/queue/artifact side effects.
}
```

## Required exact confirmations before R5B apply

- Confirm payload variable name in caller context.
- Confirm sourceRouteCode variable availability.
- Confirm existing response helper or error path.
- Confirm insertion line is after createRuntimeRequest and before FIRST_SIDE_EFFECT_LINE.
- Confirm helper wrapper gkd4eR3RunRuntimeGuardrailPreflight is in scope.
- Confirm server.js remains CommonJS.
- Keep API POST verification separate.

## Rollback

R5B apply must:
- backup only server.js
- patch only server.js
- on syntax/secret/scope failure, restore server.js from backup
- not use git checkout -- .
- not use git clean -fd

## Evidence

- RUNTIME_CALLER=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_075255_aiw_gkd4e_r5a_not_executed_wiring_patch_design/030_runtime_caller.tsv
- RUNTIME_CALLER_CONTEXT=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_075255_aiw_gkd4e_r5a_not_executed_wiring_patch_design/040_runtime_caller_context.md
- R4I_CALLER_CONTRACT=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_074019_aiw_gkd4e_r4i_create_runtime_request_caller_contract/050_caller_contract.tsv
- R4K_R5_DECISION=/data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/guardrail-knowledge-db/900.meta/20260518_074938_aiw_gkd4e_r4k_unknown_create_runtime_request_caller_review/070_r5_decision_after_unknown_review.md
