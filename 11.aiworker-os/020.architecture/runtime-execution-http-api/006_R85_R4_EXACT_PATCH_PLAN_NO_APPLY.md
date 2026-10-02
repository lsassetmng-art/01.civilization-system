# R85_R4 Exact Patch Plan — NO APPLY

## 1. Gate

This document is a patch plan only.

PATCH_APPLIED=NO

Expected implementation baseline:

- server.js SHA256: `5c9381d2fd5b65f1a25a83ef155cec9de8e659b5bc7a39e540de9dcc65175d98`
- guardrail-runtime-preflight.cjs SHA256: `42c725de9dc0946ca4c8fc7b3745aa361860f22d33ea19f2fb1a9b400e299475`
- runtime-intake-service.cjs existing before patch: `NO`
- runtime-intake-service.cjs SHA256 before patch: `NOT_FOUND`

Any mismatch before patch must STOP the patch.

---

## 2. Patch ownership

### PATCH TARGET A — NEW FILE

`runtime-execution-http-api/lib/runtime-intake/runtime-intake-service.cjs`

Responsibility:

1. HTTP and queue common intake ownership
2. instruction normalization
3. idempotency normalization / validation
4. required-field validation
5. canonical `source_files` preparation
6. source-material adapter invocation
7. source-material rejection handling
8. Guardrail preflight invocation
9. runtime core invocation
10. normalized success / validation error return contract

This service must not own:

- AICM queue claim SQL
- AICM human review row lifecycle
- CX registry canonical data
- KDB provider selection implementation
- deliverable ZIP storage implementation
- Helpdesk provider

---

## 3. PATCH TARGET B — server.js

Expected SHA256 before patch:

`5c9381d2fd5b65f1a25a83ef155cec9de8e659b5bc7a39e540de9dcc65175d98`

Allowed modifications only:

### B1. HTTP POST route

Replace direct:

`createRuntimeRequest(payload, idempotencyKey)`

with common runtime intake service invocation.

Required behavior:

- await common intake
- no direct runtime creation from HTTP route
- fixed validation error JSON
- preserve existing authentication boundary
- preserve HTTP-specific request parsing
- preserve HTTP status mapping

### B2. Queue payload builder

Convert canonical AICM field:

`reference_files_text`

to normalized runtime:

`source_files`

Transformation must occur before common intake.

No DB schema mutation.

### B3. Queue execution

Replace un-awaited async call with:

`await commonRuntimeIntake(...)`

Required branches:

- success
- validation rejection
- source-material rejection
- Guardrail rejection
- runtime failure

Promise objects must never be passed into success recording.

### B4. createRuntimeRequest

Existing function becomes runtime-core ownership only.

It must no longer be responsible for duplicated route-specific normalization.

Do not alter deliverable/ZIP/AICM review behavior except where required to consume already-normalized intake.

---

## 4. PATCH TARGET C — guardrail-runtime-preflight.cjs

Expected SHA256 before patch:

`42c725de9dc0946ca4c8fc7b3745aa361860f22d33ea19f2fb1a9b400e299475`

Default plan:

NO MODIFY unless exact static contract proves an adapter function is required.

Preferred integration:

- call existing preflight before runtime creation
- persist result after runtime request id exists

Avoid merging Guardrail ownership into Runtime Intake.

---

## 5. Existing source-material files

Expected hashes:


Default plan:

NO MODIFY.

Runtime Intake must adapt to the established source-material API rather than duplicate file validation.

---

## 6. Explicitly protected files

R85 must not modify:

- `lib/knowledge-domain-brain/domain-classifier.mjs`
- `lib/knowledge-domain-brain/helpdesk-provider.mjs`
- `lib/knowledge-domain-brain/providers/**`
- unrelated `guardrail/**`
- AICM schema / SQL
- CX registry data
- `900.meta` historical evidence

---

## 7. Required processing order

Canonical order:

1. caller metadata intake
2. instruction normalization
3. idempotency validation
4. required-field validation
5. source_files normalization
6. source-material validation/read
7. robot/role/contract/read-depth resolution
8. CX/KDB context preparation
9. Guardrail preflight
10. runtime core creation
11. Guardrail persistence with runtime request id
12. deliverable/output handling
13. caller-specific response handling

No deliverable generator may convert a validation error message into a task instruction.

---

## 8. Queue source mapping

Canonical source:

`business.aicm_worker_work_unit.reference_files_text`

Runtime normalized representation:

`source_files`

Required transform:

`reference_files_text -> source_files`

The transform must preserve source order and reject malformed entries through the established source-material contract.

---

## 9. Rollback contract

Before patch:

- verify exact SHA256 for every existing patch target
- save exact diff of dirty `server.js`
- do not reset unrelated local work
- do not use `git checkout -- .`
- do not use `git restore .`

If patch application fails:

1. restore only R85-owned modifications
2. remove only newly-created R85 file if it did not exist before
3. verify pre-patch hashes
4. verify pre-existing dirty changes remain byte-equivalent
5. stop

---

## 10. Test order after future PATCH GO

No test in this phase.

Future order:

1. syntax/static import check
2. unit-level intake normalization check
3. source_files mapping check
4. Guardrail rejection branch check
5. HTTP validation contract check
6. queue async/await check
7. controlled HTTP POST only after explicit API POST GO
8. controlled queue E2E only after explicit DB/API execution GO
9. AICM review return verification
10. git status/diff review
11. explicit stage GO
12. explicit commit GO
13. explicit push GO

---

## 11. GO gate

R85 implementation must not begin until:

- dual worktree baseline remains stable
- server.js expected SHA256 matches
- source-material expected hashes match
- concurrent ownership of current server.js dirty diff is classified
- exact new-file API surface is approved
- explicit PATCH GO is received

FINAL_STATUS=PASS_R85_R4_EXACT_PATCH_PLAN_CREATED_NO_APPLY
