# ============================================================
# CIVILIZATION EXECUTION BLOCK NAMING CONVENTION
# ============================================================

status: execution-block-preparation
layer: implementation
domain: 018.meta
subdomain: 495.execution-block-preparation
document_id: 1201849009
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the naming convention for future execution blocks.

## 2. Scope

This document governs naming for:

- file-generation blocks
- implementation patch blocks
- DB preparation blocks
- verify blocks
- report blocks

## 3. Canonical Block Name Shape

Recommended block naming shape:

CIVILIZATION_PHASE<phase_number>_<block_class>_<sequence>_<short_scope>

Examples:
- CIVILIZATION_PHASE1_FILEGEN_001_RUNNER_HELPERS
- CIVILIZATION_PHASE1_PATCH_001_FOUNDATION_MARKERS
- CIVILIZATION_PHASE1_DBPREP_001_ACTION_SCOPE
- CIVILIZATION_PHASE1_VERIFY_001_FOUNDATION
- CIVILIZATION_PHASE1_REPORT_001_FOUNDATION

## 4. Block Class Codes

Recommended block class codes:

- FILEGEN
- PATCH
- DBPREP
- VERIFY
- REPORT

## 5. Naming Rules

- phase number must be explicit
- block class must be explicit
- sequence must be zero-padded
- short scope must be concise and deterministic
- destructive intent wording is prohibited in phase 1 naming

## 6. Acceptance Checklist

- canonical name shape fixed
- class codes fixed
- naming rules fixed

## Phase 1 Reserved Slot Compatibility Rule
## Phase 1 Reserved Slot Compatibility Rule

A future phase 1 block name is valid only when:

- it matches the canonical block name shape
- its class code is allowed
- its sequence fits the reserved slot plan where applicable

Free-form phase 1 block naming is prohibited.

## Naming Rule And Final Gate Dependency
## Naming Rule And Final Gate Dependency

Canonical naming control remains necessary but is not sufficient.

A correctly named block is still invalid if the final entry gate has not passed.
