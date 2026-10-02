# AIWorkerOS R85_R2 Dependency Contract and Queue Source Field Decision — NO PATCH

- Date: 2026-08-06 JST
- Scope: Runtime Execution HTTP API / AICM queue consumer / source-material intake / Guardrail preflight
- Basis:
  - `001_R85_R2_DEPENDENCY_CONTRACT_QUEUE_SOURCE_FIELD_SUMMARY.txt`
  - `000_R85_R2_DEPENDENCY_CONTRACT_QUEUE_SOURCE_FIELD_FULL_EVIDENCE.txt`
- Mode: READ ONLY; no source patch, DB connection, API POST, git add, commit, or push

## 1. Executive decision

R85_R2 completed the dependency and source-field classification required by the R85 design.

```text
FINAL_CLASSIFICATION=READY_FOR_R85_R3_EXACT_PATCH_PLAN_NO_APPLY_WITH_BLOCKERS
QUEUE_CANONICAL_SOURCE_FIELD=business.aicm_worker_work_unit.reference_files_text
QUEUE_SOURCE_FIELD_ENCODING=NEWLINE_JOINED_FILE_PATH_TEXT
QUEUE_RUNTIME_CANONICAL_FIELD=source_files
QUEUE_BUILD_SOURCE_FIELD_COUNT=0
QUEUE_AWAIT_COUNT=0
GUARDRAIL_RUNTIME_CALLER_COUNT=0
PATCH_APPLIED=NO
```

The next phase must be an exact patch plan only. Source patching remains blocked until the current `server.js` owner and dirty worktree are resolved.

## 2. Git and worktree state

Evidence baseline:

```text
HEAD_HASH=395671f9c414def92a93b11bdae32290914b3563
HEAD_SUBJECT=feat(portal): add Persona draft resume action
ORIGIN_MAIN_HASH=3ffe319e6e524f968b83bf35ecc9b1626ae2b1db
AHEAD_BEHIND=0 1
APP_STATUS_COUNT=29
STATUS_STABLE=YES
TARGET_HASHES_STABLE=YES
```

Tracked runtime changes remain in:

```text
server.js
lib/knowledge-domain-brain/domain-classifier.mjs
```

Untracked production dependencies remain in:

```text
guardrail/guardrail-runtime-preflight.cjs
lib/knowledge-domain-brain/kdb-result-service.mjs
lib/knowledge-domain-brain/providers/
```

Decision:

- The local ahead commit is Portal/Persona work and is outside R85 scope.
- `server.js` already contains R78/R83/R84 changes overlapping R85.
- R85 must not patch until the current `server.js` diff is preserved and its ownership is explicitly accepted.
- KDB provider and classifier files remain protected and out of the R85 patch set.

## 3. Canonical AICM source-file contract

The AICM runtime submission path writes source paths into:

```text
business.aicm_worker_work_unit.reference_files_text
```

Evidence supports the following producer behavior:

```text
uploaded files
-> saved_paths
-> join non-empty paths
-> effectiveReferenceFilesText
-> reference_files_text
-> business.aicm_worker_work_unit
```

Observed compatibility inputs include:

```text
reference_files_text
referenceFilesText
source_file_path
source_file_paths
```

The database/queue row canonical field is `reference_files_text`. It is text containing one or more file paths, normally newline-separated.

### R85 canonical transformation

The queue payload builder must transform:

```text
row.reference_files_text
```

into:

```js
source_files: [
  { path: "..." },
  { path: "..." }
]
```

Required parsing rules:

1. Accept a string only from the confirmed queue field.
2. Split on CRLF or LF.
3. Trim each entry.
4. Drop empty entries.
5. Preserve path order.
6. Deduplicate exact paths.
7. Do not parse arbitrary JSON from `reference_files_text` as executable structure.
8. Pass each path through the existing source-material validator.
9. Do not allow caller-provided allowed roots to expand server policy.

Compatibility aliases may be read only at the HTTP boundary. Queue canonical ownership remains `row.reference_files_text`.

## 4. Existing source-material adapter contract

The existing R78 adapter accepts runtime aliases including:

```text
source_files
sourceFiles
source_file_refs
sourceFileRefs
attachments
attachment_refs
file_refs
fileRefs
```

It validates:

- missing path
- null byte
- path traversal
- file existence
- allowed roots
- regular file
- file size
- readability
- ownership metadata fields

Structured rejection contract:

```js
{
  ok: false,
  statusCode: 400,
  reason: "SOURCE_MATERIAL_VALIDATION_FAILED",
  message: "...",
  retryable: false,
  validation_errors: [],
  warnings: []
}
```

The adapter is already async through the R83 knowledge-routing wrapper. Therefore all callers must await it.

## 5. Queue defects confirmed

### 5.1 Source files are not forwarded

Current `aiwB6R97R14BuildPayload(row)` forwards task fields and selected metadata only.

```text
QUEUE_BUILD_SOURCE_FIELD_COUNT=0
```

It does not read `row.reference_files_text` and does not emit `source_files`.

### 5.2 Async call is not awaited

Current code:

```js
const result = aiwR78CreateRuntimeRequestWithSourceMaterial(payload, idempotencyKey);
aiwB6R97R14RecordSuccess(row, result, payload);
```

Confirmed:

```text
QUEUE_AWAIT_COUNT=0
```

Consequences:

- a Promise is passed to success persistence;
- asynchronous rejection bypasses the local synchronous `try/catch`;
- `processed` can be incremented before runtime completion;
- request/output/deliverable identifiers can be empty or invalid;
- failed intake can be misclassified as success.

### 5.3 Structured adapter rejection is not branched

Even after adding `await`, `{ok:false}` must not be passed to `aiwB6R97R14RecordSuccess`.

Required behavior:

```js
const intake = await ...;
if (!intake.ok) {
  aiwB6R97R14MarkFailed(row, normalizedError);
  continue;
}
aiwB6R97R14RecordSuccess(row, intake.result, intake.request);
```

## 6. Guardrail dependency contract

`guardrail-runtime-preflight.cjs` exports:

```text
inferGuardrailWorkType
buildGuardrailPreflightInput
runGuardrailPreflight
persistGuardrailRuntimeCheckResult
runAndPersistGuardrailPreflight
```

The current server wrapper calls:

```js
runAndPersistGuardrailPreflight(runtimeRequest)
```

### 6.1 Input contract

Guardrail derives:

```text
request_id
target_os_code
target_app_code
target_work_type_code
target_file_pattern
db_write_flag
ddl_apply_flag
seed_apply_flag
api_post_flag
ui_flag
git_flag
boss_go_flag
ai_review_status_code
request_summary_text
```

### 6.2 Output contract

```js
{
  ok,
  check_status_code,
  blocking_flag,
  review_required_flag,
  confirmation_required_flag,
  ui_test_required_flag,
  matched_rule_codes,
  matched_pattern_codes,
  check_summary_text,
  required_next_action_text,
  runtime_check_result_id?,
  persistence_error_message?
}
```

### 6.3 Persistence behavior

The helper uses `PERSONA_DATABASE_URL`, reads Guardrail views, and may insert into:

```text
aiworker.guardrail_runtime_check_result
```

If no database pool is available, query helpers return empty rows and persistence returns `null`. A persistence exception is captured into `persistence_error_message` and does not itself throw.

### 6.4 R85 integration decision

R85 common intake must call Guardrail before core runtime request creation.

However, `runAndPersistGuardrailPreflight` may persist with an empty `request_id` because the runtime request does not yet exist. Therefore R85 should use a two-step dependency contract:

```text
pre-create:
  runGuardrailPreflight(canonicalRequest)

post-create, only after successful runtime request creation:
  persistGuardrailRuntimeCheckResult(
    { ...canonicalRequest, request_id: createdRequestId },
    decision
  )
```

This avoids pre-create insertion with a null request ID and prevents Guardrail persistence from owning runtime-request creation order.

Guardrail decisions must block core persistence when:

```text
blocking_flag=true
check_status_code=blocked
```

Review-required or confirmation-required statuses must be represented explicitly by the intake result contract; they must not be silently treated as success.

## 7. Required R85 common intake dependency interface

```js
createRuntimeIntakeService({
  normalizeSourceFiles,
  runGuardrailPreflight,
  persistGuardrailResult,
  buildKnowledgeContext,
  createRuntimeRequestCore,
  logger
})
```

Execution order:

```text
1. clone input
2. canonicalize instruction
3. resolve and validate idempotency key
4. validate static required fields
5. canonicalize queue reference_files_text to source_files
6. validate/read source files
7. normalize robot/model/role/contract/read depth
8. build CX/KDB context
9. run Guardrail preflight without persistence
10. reject blocked/review-required states according to fixed contract
11. createRuntimeRequestCore
12. persist Guardrail result with created request_id
13. return fixed success contract
```

## 8. Exact patch scope for the next design phase

### New file

```text
lib/runtime-intake/runtime-intake-service.cjs
```

### Modify

```text
server.js
```

Planned `server.js` changes only:

1. import and instantiate common intake service;
2. expose existing R78 source validation as an injected dependency;
3. inject R83 KDB routing dependency;
4. inject split Guardrail preflight/persistence functions;
5. wrap existing core request creation;
6. migrate HTTP POST to `await` common intake;
7. add queue `reference_files_text -> source_files` transformation;
8. migrate queue to awaited common intake;
9. branch on structured intake failure;
10. remove/bypass duplicate instruction normalization only where replaced by common intake.

### Protected

```text
lib/knowledge-domain-brain/domain-classifier.mjs
lib/knowledge-domain-brain/helpdesk-provider.mjs
lib/knowledge-domain-brain/kdb-result-service.mjs
lib/knowledge-domain-brain/providers/*
guardrail/guardrail-runtime-preflight.cjs
900.meta historical content
```

## 9. Remaining patch blockers

```text
BLOCKER_1=SERVER_JS_DIRTY_AND_OVERLAPPING_R78_R83_R84_WORK
BLOCKER_2=LOCAL_BRANCH_AHEAD_BY_PORTAL_PERSONA_COMMIT
BLOCKER_3=GUARDRAIL_FILE_UNTRACKED_PRODUCTION_DEPENDENCY
BLOCKER_4=KDB_PROVIDER_FILES_UNTRACKED_AND_PROTECTED
BLOCKER_5=EXACT_SERVER_DIFF_HUNKS_NOT_YET_APPROVED
```

The untracked Guardrail file does not need modification for the first R85 patch, but the patch must not be committed in a way that assumes an unavailable dependency. Commit ownership/order must be decided before implementation.

## 10. Final status

```text
FINAL_STATUS=PASS_AIWORKEROS_R85_R2_DEPENDENCY_CONTRACT_AND_QUEUE_SOURCE_FIELD_CLASSIFIED_NO_PATCH
QUEUE_CANONICAL_SOURCE_FIELD=reference_files_text
QUEUE_SOURCE_TO_RUNTIME_TRANSFORM=reference_files_text_TO_source_files
QUEUE_SOURCE_FILES_FORWARDED=NO
QUEUE_ASYNC_AWAIT_CORRECT=NO
QUEUE_ADAPTER_REJECTION_BRANCH=NO
GUARDRAIL_PRECREATE_FUNCTION=runGuardrailPreflight
GUARDRAIL_POSTCREATE_PERSIST_FUNCTION=persistGuardrailRuntimeCheckResult
HTTP_INTAKE_UNIFIED=NO
PATCH_APPLIED=NO
DB_CONNECTION=NO
API_POST=NO
GIT_WRITE=NO
NEXT_RECOMMENDATION=R85_R3_EXACT_PATCH_PLAN_WITH_EXPECTED_HASHES_NO_APPLY
```
