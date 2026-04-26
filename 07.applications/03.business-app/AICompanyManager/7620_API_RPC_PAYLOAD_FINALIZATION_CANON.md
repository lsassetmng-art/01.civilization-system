# AICompanyManager API/RPC Payload Finalization Canon

phase: Phase ET
status: api-rpc-payload-finalization-canon
real_api_connect: false

## 1. API方針

real API connect はまだ行わない。

まず、LocalRepository と同じ意味を持つ ApiRepository payload を固定する。

## 2. API対象

Company:
- createCompany
- saveCompany
- deleteCompany or archiveCompany
- saveCompanyRules

Department:
- createDepartment
- saveDepartment
- deleteDepartment or archiveDepartment

Organization:
- createOrganization
- saveOrganization
- deleteOrganization or archiveOrganization
- saveRobotAssignments

Ledger:
- saveLedgerRow
- deleteLedgerRow
- csvPreview
- csvImport

Review:
- applyReviewAction
- approveReview
- rejectReview
- requestReviewRevision

Workflow:
- startWorkflowLocalStub
- future live AIWorkerOS startWorkflow

## 3. RPC推奨

Use RPC:
- create company with owner
- apply review action with idempotency
- start workflow local stub

Reason:
- 初回Owner作成
- review二重実行防止
- workflow監査作成

## 4. Client禁止

Client must not:
- directly create Owner membership without controlled route
- directly impersonate reviewer
- directly set live_aiworkeros_call true
- directly bypass company membership
- directly write final approval without review RPC

## 5. Idempotency

Required:
- review action idempotency key
- csv import batch idempotency or duplicate prevention
- workflow start duplicate prevention before real AIWorkerOS

## 6. Current decision

real API connect:
- STOP

reason:
- payload finalization only
- adapter not yet wired
