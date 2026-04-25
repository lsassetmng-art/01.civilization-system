# ============================================================
# CIVILIZATION EXECUTION BLOCK REPORT AND MANIFEST NAMING RULE
# ============================================================

status: execution-block-preparation
layer: implementation
domain: 018.meta
subdomain: 495.execution-block-preparation
document_id: 1201849011
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines naming rules for future execution reports and manifests.

## 2. Report File Name Shape

Recommended report name shape:

<doc_id>_CIVILIZATION_PHASE<phase_number>_<scope>_<report_kind>.md

Examples:
- 1201849101_CIVILIZATION_PHASE1_FOUNDATION_EXECUTION_REPORT.md
- 1201849102_CIVILIZATION_PHASE1_FOUNDATION_VERIFY_REPORT.md

## 3. Manifest File Name Shape

Recommended manifest name shape:

<doc_id>_CIVILIZATION_PHASE<phase_number>_<scope>_<manifest_kind>.md

Examples:
- 1201849111_CIVILIZATION_PHASE1_FOUNDATION_BLOCK_MANIFEST.md
- 1201849112_CIVILIZATION_PHASE1_FOUNDATION_TARGET_LIST_MANIFEST.md

## 4. Required Naming Fields

Every future report or manifest should make explicit:

- phase number
- scope
- artifact kind

## 5. Artifact Kinds

Recommended artifact kinds:

- EXECUTION_REPORT
- VERIFY_REPORT
- BLOCK_MANIFEST
- TARGET_LIST_MANIFEST
- EXIT_JUDGMENT_REPORT

## 6. Acceptance Checklist

- report naming shape fixed
- manifest naming shape fixed
- artifact kinds fixed

## Phase 1 Artifact Naming Compatibility Rule
## Phase 1 Artifact Naming Compatibility Rule

Phase 1 reports and manifests are valid only when they explicitly show:

- phase number
- scope
- artifact kind

Unnamed or ambiguously named artifacts are prohibited.

## Artifact Naming And Final Gate Dependency
## Artifact Naming And Final Gate Dependency

Deterministic artifact naming is necessary but is not sufficient.

Artifact authoring must still wait for the final entry gate to pass.
