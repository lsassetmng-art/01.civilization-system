# AIWorkerOS R85 Runtime Intake Unification Design — NO PATCH

- Generated from: `003_R85_R1_TARGETED_READ_ONLY_EVIDENCE.txt`
- Date: 2026-08-06 JST
- Scope: AIWorkerOS Runtime Execution HTTP API / AICM queue consumer / source material / Guardrail / KDB routing
- Mode: design only; no source patch, DB connection, API POST, git add, commit, or push

## 1. Executive decision

R84の直近HTTP 400の直接原因はinstruction欠落ではなく、`Idempotency-Key`欠落である。

```text
HTTP_STATUS=400
ERROR_CODE=BAD_REQUEST
MESSAGE=Idempotency-Key is required
PRIMARY_FAILURE_CLASSIFICATION=IDEMPOTENCY_KEY_REQUIRED
```

ただし、instruction処理にも独立した構造欠陥が残る。現在の`server.js`にはinstruction正規化が複数箇所へ重複挿入され、一部はinstruction本文と成果物本文を計算した後に実行されている。R85ではこれらを共通Runtime Intakeへ集約する。

R85のパッチ適用は、現時点では開始しない。理由は次の3点である。

1. `server.js`と`domain-classifier.mjs`に未コミット変更がある。
2. Guardrail本体およびKDB provider群が未追跡の本番ファイルである。
3. queue行のどの正本フィールドから`source_files`を取得するかが、今回の証拠だけでは確定していない。

## 2. Evidence-backed findings

### 2.1 Git baseline

```text
BRANCH=main
HEAD=3ffe319e6e524f968b83bf35ecc9b1626ae2b1db
ORIGIN_MAIN=3ffe319e6e524f968b83bf35ecc9b1626ae2b1db
AHEAD_BEHIND=0 0
APP_STATUS_COUNT=29
APP_UNSTAGED_COUNT=3
APP_STAGED_COUNT=0
```

Tracked changes:

- `server.js`
- `lib/knowledge-domain-brain/domain-classifier.mjs`
- one deleted `900.meta` inventory text file

Untracked production candidates:

- `guardrail/guardrail-runtime-preflight.cjs`
- `lib/knowledge-domain-brain/kdb-result-service.mjs`
- `lib/knowledge-domain-brain/providers/architecture-provider.mjs`
- `lib/knowledge-domain-brain/providers/media-analysis-provider.mjs`
- `docs/test/source/aiworker_context_sample.txt`

### 2.2 R84 primary failure

The recorded response body is explicit:

```json
{
  "result": "error",
  "error_code": "BAD_REQUEST",
  "message": "Idempotency-Key is required"
}
```

The previous label `INSTRUCTION_VALIDATION_REMAINING...` was a secondary analysis classification, not the actual HTTP rejection reason.

### 2.3 HTTP path bypasses source and Guardrail

Current HTTP route:

```text
POST /aiworker/v1/runtime-execution/request
  -> parse JSON
  -> read Idempotency-Key header
  -> createRuntimeRequest(payload, idempotencyKey)
  -> HTTP 201
```

Confirmed:

```text
POST_ROUTE_DIRECT_CREATE_COUNT=1
POST_ROUTE_SOURCE_ADAPTER_SIGNAL_COUNT=0
POST_ROUTE_GUARDRAIL_SIGNAL_COUNT=0
```

Therefore HTTP does not execute the same source-material/KDB path as queue.

### 2.4 Queue path has three separate defects

Current queue builder produces core task fields but no confirmed `source_files` field.

```text
QUEUE SOURCE_FILES REFERENCES in queue builder range = none
```

Current queue execution calls:

```js
const result = aiwR78CreateRuntimeRequestWithSourceMaterial(payload, idempotencyKey);
aiwB6R97R14RecordSuccess(row, result, payload);
```

But `aiwR78CreateRuntimeRequestWithSourceMaterial` is declared `async`. Therefore:

1. The queue passes a `Promise` to `RecordSuccess` because `await` is missing.
2. An asynchronous rejection is not caught by the surrounding synchronous `try/catch`.
3. The source adapter may return `{ok:false, statusCode:400, ...}` instead of throwing; even after adding `await`, the current consumer would record that result as success unless it branches on `ok`.

This is a runtime correctness defect independent of R84.

### 2.5 Guardrail is defined but not in the execution path

`server.js` imports:

```js
const guardrailRuntimePreflight = require("./guardrail/guardrail-runtime-preflight.cjs");
```

and defines:

```js
async function gkd4eR3RunRuntimeGuardrailPreflight(runtimeRequest) {
  return guardrailRuntimePreflight.runAndPersistGuardrailPreflight(runtimeRequest);
}
```

No HTTP or queue caller was found in the supplied execution evidence. The helper exists but is not wired into runtime intake.

### 2.6 Instruction normalization is duplicated and order-dependent

Current uncommitted `server.js` contains normalization in at least four locations:

1. `aiwB6R96R1G2LooksRuntimePayload`
2. `aiwB6R96R1G2BuildRequesterDeliveryPayload`
3. the entry of `createRuntimeRequest`
4. immediately before required-field validation in `createRuntimeRequest`

The normalization inside `aiwB6R96R1G2BuildRequesterDeliveryPayload` occurs after these values are already calculated:

```text
instruction
body
```

Therefore it cannot correct the already-built deliverable for that invocation. It also mutates a payload inside what should be an output-building helper.

## 3. Ownership classification

| File / change | Classification | R85 handling |
|---|---|---|
| `server.js` R84 instruction additions | Current R84 work, overlaps R85 | Preserve until R85 replacement patch is explicitly approved; do not independently discard |
| `domain-classifier.mjs` architecture/media additions | Separate KDB architecture/media work | Protected; R85 must not edit |
| `kdb-result-service.mjs` | Separate KDB result/provider work | Protected; dependency only |
| `providers/architecture-provider.mjs` | Separate KDB provider work | Protected |
| `providers/media-analysis-provider.mjs` | Separate KDB provider work | Protected |
| `guardrail/guardrail-runtime-preflight.cjs` | Separate Guardrail work, required dependency | Reuse through stable interface; do not rewrite before contract dump |
| `docs/test/source/aiworker_context_sample.txt` | Source-material test fixture | Protected |
| `900.meta` deletion/gzip replacement | Meta/storage maintenance | Out of R85 source scope |
| `helpdesk-provider.mjs` | Helpdesk protected target | Never modify in R85 |

## 4. Target architecture

### 4.1 New responsibility boundary

Create one common service:

```text
lib/runtime-intake/runtime-intake-service.cjs
```

This service is the only entry for new runtime execution requests from HTTP and queue.

It owns:

1. input shape validation
2. canonical instruction normalization
3. idempotency resolution and validation
4. canonical `source_files` normalization
5. source-material validation/read orchestration
6. robot/model/role/contract normalization
7. KDB/CX context routing orchestration
8. Guardrail preflight orchestration
9. call to the core request persistence function
10. fixed success/error result contract
11. intake audit metadata construction

It does not own:

- AICM claim SQL
- AICM review-row persistence
- source-file low-level filesystem policy implementation
- Guardrail policy implementation
- KDB provider implementations
- ZIP package creation internals
- Helpdesk provider

### 4.2 Dependency injection

The service must not import `server.js`. `server.js` supplies dependencies:

```text
normalize/validate source material callback
build KDB routing callback
run Guardrail callback
create runtime request core callback
logger/audit callback
```

This avoids circular imports and preserves responsibility boundaries.

### 4.3 Core persistence separation

Rename conceptually—not necessarily in the first patch—the existing DB-writing function:

```text
createRuntimeRequest
```

to the responsibility:

```text
createRuntimeRequestCore
```

`createRuntimeRequestCore` must receive an already normalized and approved canonical request. It must not repeat source validation, instruction alias discovery, or Guardrail execution.

## 5. Canonical intake contract

### 5.1 Input

```js
{
  channel: "http" | "queue",
  payload: Object,
  idempotencyKey: string,
  sourceContext: {
    sourceAppRef: string,
    sourceRequestRef: string,
    sourceRouteCode: string
  }
}
```

### 5.2 Canonical runtime request

Required canonical fields:

```text
app_surface_code
model_code
task_domain_code
task_title
task_instruction_ja
source_app_ref
source_request_ref
requested_by_ref
idempotency_key
source_route_code
```

Canonical optional fields:

```text
source_files
metadata_jsonb
app_read_payload_jsonb
robot_role_code
contract_code
read_depth_code
owner_civilization_id
```

### 5.3 Instruction alias precedence

Use one deterministic precedence list only:

```text
task_instruction_ja
instruction_text
instructionText
task_instruction
instruction
prompt_ja
prompt
task_description
taskDescription
request.instruction
request.text
payload.instruction
payload.text
body.instruction
body.text
app_read_payload_jsonb.task_instruction_ja
app_read_payload_jsonb.instruction
```

Rules:

- trim strings
- reject non-string final values
- do not use error `message` as task instruction
- do not mutate the caller object
- return a new canonical object
- run exactly once before required-field validation

`message` must be removed from instruction candidates because validation errors currently risk being misrepresented as user instructions.

### 5.4 Idempotency

Resolution order:

```text
payload.idempotency_key
explicit channel idempotencyKey
```

HTTP:

- header remains accepted
- payload key remains compatibility input
- missing key returns fixed validation error

Queue:

- consumer generates a deterministic key from immutable work-unit identity
- the generated key is written into the canonical payload before core persistence

### 5.5 Source files

Canonical shape:

```js
source_files: [
  {
    path: "...",
    name: "...",
    mime_type: "...",
    owner_civilization_id: "...",
    source_ref: "..."
  }
]
```

The service must accept only the aliases confirmed by the next read-only contract dump. The exact AICM row/metadata source field is not established by the current evidence and must not be guessed.

The low-level source adapter retains ownership of:

- null-byte rejection
- traversal rejection
- allowed-root enforcement
- ownership/reference enforcement
- regular-file checks
- permissions
- file count
- per-file size
- total text size
- text extraction / metadata-only handling

### 5.6 Guardrail

Required logical order:

```text
canonicalize
-> validate static required fields
-> validate/read source files
-> resolve model/role/contract/read depth
-> build CX/KDB context
-> Guardrail preflight
-> createRuntimeRequestCore
```

The exact choice between `runGuardrailPreflight` and `runAndPersistGuardrailPreflight`, and whether persistence requires a runtime request ID, must be confirmed from the untracked Guardrail file before patching.

## 6. Result contract

### 6.1 Success

```js
{
  ok: true,
  statusCode: 201,
  request: { ... },
  result: { ...createRuntimeRequestCore result... },
  intake_audit: {
    channel: "http" | "queue",
    instruction_source: "instruction_text",
    source_file_count: 0,
    source_material_status: "not_provided" | "accepted",
    guardrail_status: "allowed",
    source_route_code: "..."
  }
}
```

### 6.2 Validation failure

```js
{
  ok: false,
  statusCode: 400,
  error: {
    code: "IDEMPOTENCY_KEY_REQUIRED",
    message: "Idempotency-Key is required",
    field: "idempotency_key",
    stage: "intake_validation",
    retryable: false,
    details: []
  },
  safety: {
    external_execution_performed_flag: false,
    pg_apply_performed_flag: false,
    destructive_action_performed_flag: false
  }
}
```

Validation errors must not contain:

- generated deliverable
- `requester_delivery_payload`
- `task_instruction_ja` derived from the error message
- minimum deliverable fallback

### 6.3 Source rejection

Use distinct codes, including:

```text
SOURCE_FILES_INVALID_SHAPE
SOURCE_FILE_OUTSIDE_ALLOWED_ROOT
SOURCE_FILE_OWNERSHIP_REJECTED
SOURCE_FILE_NOT_FOUND
SOURCE_FILE_TOO_LARGE
SOURCE_FILE_COUNT_EXCEEDED
SOURCE_FILE_TOTAL_TEXT_EXCEEDED
```

### 6.4 Guardrail rejection

```text
GUARDRAIL_REJECTED
GUARDRAIL_REVIEW_REQUIRED
GUARDRAIL_PREFLIGHT_FAILED
```

A Guardrail rejection must never call `createRuntimeRequestCore`.

## 7. Caller migration

### 7.1 HTTP

Target flow:

```js
const intake = await runtimeIntakeService.execute({
  channel: "http",
  payload,
  idempotencyKey: req.headers["idempotency-key"] || ""
});

return sendJson(res, intake.statusCode, intake.ok ? intake.result : intake);
```

The route must not call `createRuntimeRequest` directly.

### 7.2 Queue

Target flow:

```js
const intake = await runtimeIntakeService.execute({
  channel: "queue",
  payload,
  idempotencyKey
});

if (!intake.ok) {
  aiwB6R97R14MarkFailed(row, intake.error);
  continue;
}

aiwB6R97R14RecordSuccess(row, intake.result, intake.request);
```

Required corrections:

- `await` the intake call
- branch on `ok`
- never pass a Promise to success persistence
- never record adapter rejection as success
- preserve existing claim and retry semantics

## 8. Proposed file plan

### New file

```text
lib/runtime-intake/runtime-intake-service.cjs
```

### Modify

```text
server.js
```

Only these server responsibilities should change:

- import/wire common intake service
- separate core persistence callback
- migrate HTTP caller
- migrate queue caller
- add canonical queue `source_files` forwarding after source field confirmation
- remove or bypass duplicate R84 normalization sites once equivalent behavior is covered

### Protected / no modification

```text
lib/knowledge-domain-brain/domain-classifier.mjs
lib/knowledge-domain-brain/helpdesk-provider.mjs
lib/knowledge-domain-brain/kdb-result-service.mjs
lib/knowledge-domain-brain/providers/*
guardrail/guardrail-runtime-preflight.cjs
900.meta historical directories
```

The Guardrail file can be modified only in a separate, explicit contract repair phase if the next dump proves its current API cannot support pre-create intake.

## 9. Test design

### 9.1 Pure service tests

Create tests for:

1. every instruction alias
2. nested alias resolution
3. caller object immutability
4. error `message` not treated as instruction
5. header idempotency
6. payload idempotency
7. missing idempotency
8. missing required fields
9. source adapter accepted result
10. source adapter rejected result
11. Guardrail allowed
12. Guardrail rejected
13. core persistence not called on any rejection
14. fixed error JSON shape

### 9.2 HTTP acceptance

Without DB write in design phase. In later explicit POST phase:

- invalid JSON -> `INVALID_JSON`
- missing idempotency -> `IDEMPOTENCY_KEY_REQUIRED`
- instruction alias accepted
- source rejection returns source-specific code
- Guardrail rejection returns guardrail-specific code
- success returns 201
- validation error contains no deliverable payload

### 9.3 Queue acceptance

In controlled test phase:

- async intake is awaited
- Promise is never persisted
- source files reach canonical intake
- adapter rejection marks failed/retryable according to contract
- success records request/output/review exactly once
- duplicate work unit does not create duplicate runtime request

### 9.4 Regression

- GET endpoints unchanged
- ZIP contract unchanged
- AICM review fields unchanged
- Helpdesk provider untouched
- KDB architecture/media files untouched
- source reader limits unchanged

## 10. Patch preconditions

Before any patch:

1. dump the full export/API contract of `guardrail-runtime-preflight.cjs`
2. dump the source-material adapter import/export and error contract
3. identify exact queue row/metadata fields containing source file references
4. classify whether the untracked Guardrail file is intended for the same commit or must be committed separately
5. preserve the current `server.js` diff in a rollback artifact
6. confirm no concurrent work owns `server.js`
7. create an exact patch plan with expected hashes

## 11. Final status

```text
FINAL_STATUS=PASS_AIWORKEROS_R85_RUNTIME_INTAKE_UNIFICATION_DESIGN_NO_PATCH_COMPLETE_WITH_PREPATCH_BLOCKERS
PRIMARY_R84_FAILURE=IDEMPOTENCY_KEY_REQUIRED
SEPARATE_INSTRUCTION_DEFECT=DUPLICATED_AND_ORDER_DEPENDENT_NORMALIZATION
HTTP_INTAKE_UNIFIED=NO
QUEUE_SOURCE_FILES_FORWARDED=NO
QUEUE_ASYNC_AWAIT_CORRECT=NO
QUEUE_ADAPTER_REJECTION_BRANCH=NO
GUARDRAIL_RUNTIME_WIRED=NO
PATCH_APPLIED=NO
DB_CONNECTION=NO
API_POST=NO
GIT_WRITE=NO
NEXT_RECOMMENDATION=R85_R2_DEPENDENCY_CONTRACT_AND_QUEUE_SOURCE_FIELD_DUMP_NO_PATCH
```
