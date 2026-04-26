# AICompanyManager ApiRepository Adapter Design Canon

phase: Phase EU
status: api-repository-adapter-design-canon
real_api_connect: false

## 1. 目的

LocalRepository で動作確認済みの操作を、将来 ApiRepository に差し替えるための設計を固定する。

## 2. adapter方針

Current:
- LocalRepository is active.
- ApiRepositoryStub is disabled.

Future:
- ApiRepository implements the same method names as LocalRepository.
- UI action wiring should switch repository by mode.
- offline-first behavior remains.

## 3. Repository method compatibility

Required same interface:
- createCompany
- saveCompany
- deleteCompany
- saveCompanyRules
- createDepartment
- saveDepartment
- deleteDepartment
- createOrganization
- saveOrganization
- deleteOrganization
- saveLedgerRow
- deleteLedgerRow
- previewCsv
- importCsv
- applyReviewAction
- startWorkflow

## 4. Mode switch

Recommended mode values:
- local
- api_readonly
- api_write
- api_with_workflow_stub
- api_with_live_aiworkeros

v1 next mode:
- api_readonly or api_write only after Boss implementation OK

## 5. Error handling

Required:
- network error
- auth error
- forbidden by RLS
- validation error
- duplicate submit
- idempotency replay
- workflow queued but not executed

## 6. Offline policy

Maintain:
- local draft
- local queue
- sync retry
- conflict presentation

Do not:
- silently overwrite server state
- silently duplicate review approval
