# ============================================================
# CIVILIZATION IMPLEMENTATION APPLY RUNNER MASTER
# ============================================================

status: implementation-prep-runner-master
layer: implementation
domain: 018.meta
subdomain: 350.integrated-master
document_id: 1201835004
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the official apply runner model used to move CivilizationOS
from implementation-ready documents into controlled implementation execution.

## 2. Scope

This document governs:

- bundle apply order
- stop conditions
- rerun safety
- dependency enforcement
- apply result reporting
- partial execution handling

## 3. Canonical Runner Principle

CivilizationOS implementation apply must follow one official order.

No bundle may be applied in a way that bypasses:
- dependency order
- reviewed action requirements
- audit requirements
- report generation

## 4. Bundle Apply Order

The canonical bundle order is:

1. common implementation foundation
2. world / actor / event common
3. government
4. economy / market / fulfillment
5. UI / facility / runtime
6. law / war / education / career
7. remaining domains / freeze / declaration

## 5. Bundle Entry Conditions

A bundle may start only when:

- prior required bundle is complete
- required anchor docs exist
- unresolved blocker count for prior bundle is zero
- no unresolved path collision remains
- no unresolved duplicate identity remains

## 6. Bundle Exit Conditions

A bundle is complete only when:

- target documents are created or intentionally excluded
- required patch targets are updated where planned
- apply report is generated
- verify runner passes bundle scope
- unresolved bundle blocker count is zero

## 7. Stop Conditions

The apply runner must stop when any of the following occurs:

- required anchor path missing
- required dependency bundle incomplete
- duplicate canonical document identity detected
- non-rerunnable destructive step detected
- verification failure marked blocking
- report generation failure

## 8. Rerun Safety

The apply runner must be rerun-safe.

Required rerun-safe behaviors:
- create-if-missing
- patch-if-marker-missing
- skip-if-already-present
- fail-closed on ambiguous duplicate targets
- never overwrite canonical document silently

## 9. Apply Phases

Recommended execution phases:

- prepare
- create
- patch
- verify
- report
- freeze-check

## 10. Apply Result Classes

Every apply step must resolve to one of:

- CREATED
- PATCHED
- SKIPPED_ALREADY_PRESENT
- VERIFIED
- FAILED_BLOCKING
- FAILED_NON_BLOCKING
- EXCLUDED_INTENTIONALLY

## 11. Report Outputs

Every apply run must produce:

- created list
- patched list
- skipped list
- failed list
- blocker list
- bundle summary
- final summary

## 12. Audit Rule

Runner decisions, especially stop decisions and exclusion decisions,
must remain traceable in the apply report set.

## 13. Failure Handling Rule

Failure handling order:

1. stop if blocking
2. report exact failed target
3. preserve already successful artifacts
4. do not silently rollback document changes
5. hand off to repair runner if applicable

## 14. Acceptance Checklist

- canonical bundle order fixed
- stop conditions fixed
- rerun safety fixed
- apply result classes fixed
- report output minimum fixed

## Execution Phase 1 Apply Binding
## Execution Phase 1 Apply Binding

The apply runner must treat execution phase 1 as the first allowed execution-entry slice.

Execution phase 1 must bind to:
- common implementation foundation only
- no silent widening
- explicit report generation
- explicit phase exit decision
