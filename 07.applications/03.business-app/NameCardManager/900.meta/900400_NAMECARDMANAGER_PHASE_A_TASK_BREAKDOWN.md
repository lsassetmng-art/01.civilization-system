# ============================================================
# NAMECARDMANAGER PHASE A TASK BREAKDOWN
# ============================================================

status: canonical
layer: meta
system: applications
application: NameCardManager
owner: Boss
prepared_by: Zero

purpose:
Breaks Phase A into executable implementation task units.

# ============================================================
# 0. PHASE A SCOPE
# ============================================================

phase_a_scope:
- auth entry
- local CRUD
- sync core
- share core
- publication preflight / request
- front / back image basic handling
- CSV import minimum entry
- import preview minimum

not_in_scope:
- advanced migration support
- rule-based enrichment advanced
- semantic search
- OCR
- advanced public company enrichment

# ============================================================
# 1. TASK ORDER
# ============================================================

phase_a_task_order:
- A-01 project shell / module skeleton
- A-02 UI string key skeleton
- A-03 local DB skeleton
- A-04 DTO / API contract binding skeleton
- A-05 screen skeleton
- A-06 basic CRUD local-first path
- A-07 sync queue skeleton
- A-08 auth inheritance entry
- A-09 authorization gate
- A-10 share apply / revoke core
- A-11 publication preflight / request core
- A-12 front / back image basic flow
- A-13 CSV import minimum entry / preview
- A-14 audit / history basic surface
- A-15 Phase A integration test pass

# ============================================================
# 2. TASK DETAILS
# ============================================================

## A-01
name:
- project shell / module skeleton

contents:
- package/module skeleton
- screen/model/local-data/sync/share/publication layer shell
- feature-based directory layout
- platform-aware structure shell

done_when:
- list/detail/settings/share target implementation can start

## A-02
name:
- UI string key skeleton

contents:
- UI label keys
- validation keys
- error keys
- badge keys
- no hardcoded user-facing strings rule reflected in skeleton

done_when:
- main screens can be built with key-managed strings

## A-03
name:
- local DB skeleton

contents:
- namecard_record
- detail_profile
- share_link
- pending_operation
- publication_request_state
- publication_result_state
- audit/history minimum
- image metadata minimum

done_when:
- local CRUD persistence target is fixed

## A-04
name:
- DTO / API contract binding skeleton

contents:
- exact request/response DTOs
- enum models
- validation_code / error_code models
- share/publication/sync/search/CRUD payload models

done_when:
- API client and local model conversion can start

## A-05
name:
- screen skeleton

contents:
- list screen shell
- detail screen shell
- settings screen shell
- share target screen shell
- adaptive layout shell for mobile/tablet/PC

done_when:
- CRUD/share/publication flows can be placed into screens

## A-06
name:
- basic CRUD local-first path

contents:
- create
- update
- detail
- list
- logical delete
- detail profile save
- canonical_version minimum handling

done_when:
- offline/local CRUD works end-to-end

## A-07
name:
- sync queue skeleton

contents:
- pending_operation creation
- operation_id / idempotency_key
- queue state transitions
- push/pull shell
- replay ordering
- conflict state persistence

done_when:
- local changes are queued and sync state becomes visible

## A-08
name:
- auth inheritance entry

contents:
- BusinessOS inherited auth context intake
- expiry check
- company context intake
- safe landing screen routing

done_when:
- inherited entry path works safely

## A-09
name:
- authorization gate

contents:
- owner/editor/shared_viewer/publication_operator/approver checks
- screen gate
- action gate
- forbidden action handling

done_when:
- authenticated user still cannot perform unauthorized actions

## A-10
name:
- share apply / revoke core

contents:
- share target selection
- apply share
- revoke share
- shared_viewer restrictions
- audit events

done_when:
- app-internal share basic behavior works

## A-11
name:
- publication preflight / request core

contents:
- preflight call
- blocking/warning rendering
- approval_required rendering
- request submission
- state update
- shared BusinessOS publication adapter usage only

done_when:
- publication request path works without ERP direct connection

## A-12
name:
- front / back image basic flow

contents:
- front add/replace
- back add/replace
- staging
- review
- metadata commit
- size/mime checks
- staging cleanup

done_when:
- two-sided image basic lifecycle works

## A-13
name:
- CSV import minimum entry / preview

contents:
- CSV file selection
- source type minimum selection
- minimum mapping
- preview
- minimum import commit

done_when:
- generic CSV minimum import path works

## A-14
name:
- audit / history basic surface

contents:
- create/update/delete/share/revoke/publication request event display
- audit/history separation
- basic user-facing history

done_when:
- primary events are traceable in UI

## A-15
name:
- Phase A integration test pass

contents:
- CRUD
- sync queue
- auth entry
- authorization
- share
- publication preflight/request
- image
- CSV import minimum
- history

done_when:
- Phase A exit criteria are satisfied

# ============================================================
# 3. DEPENDENCIES
# ============================================================

dependency_order:
- A-01 -> A-02 -> A-03 -> A-04 -> A-05 -> A-06
- A-06 -> A-07
- A-06 -> A-08
- A-08 -> A-09
- A-09 -> A-10
- A-09 -> A-11
- A-06 -> A-12
- A-06 -> A-13
- A-10/A-11/A-12/A-13 -> A-14
- A-14 -> A-15

# ============================================================
# 4. PARALLEL WORK BUNDLES
# ============================================================

parallel_bundle_1:
- A-01
- A-02
- A-03
- A-04

parallel_bundle_2:
- A-05
- A-06

parallel_bundle_3:
- A-07
- A-08
- A-09

parallel_bundle_4:
- A-10
- A-11

parallel_bundle_5:
- A-12
- A-13

parallel_bundle_6:
- A-14
- A-15

# ============================================================
# 5. IMPLEMENTATION PRIORITY
# ============================================================

priority_notes:
- local-first CRUD before sync sophistication
- sync/auth/authorization before share/publication exposure
- image after stable basic record path
- import minimum kept in Phase A for acquisition value
- history after primary event path exists

# ============================================================
# 6. SUMMARY
# ============================================================

summary:
Phase A should proceed in the order:
CRUD -> sync/auth -> share/publication -> image/import -> history/test.
