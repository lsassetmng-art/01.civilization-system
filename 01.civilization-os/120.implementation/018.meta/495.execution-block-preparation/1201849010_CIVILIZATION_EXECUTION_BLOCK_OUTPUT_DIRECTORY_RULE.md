# ============================================================
# CIVILIZATION EXECUTION BLOCK OUTPUT DIRECTORY RULE
# ============================================================

status: execution-block-preparation
layer: implementation
domain: 018.meta
subdomain: 495.execution-block-preparation
document_id: 1201849010
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the output directory rules for future execution blocks.

## 2. Scope

This document governs where future execution artifacts should be written.

## 3. Canonical Output Roots

Recommended output roots:

- execution reports -> 120.implementation/018.meta/470.cross-cutting-completion
- execution manifests -> 120.implementation/018.meta/495.execution-block-preparation
- phase-specific helper outputs -> 120.implementation/018.meta/495.execution-block-preparation
- temporary files -> \$HOME/.tmp

## 4. Hard Directory Rule

Future execution blocks must not write temporary files to:
- /tmp

Use:
- \$HOME/.tmp

## 5. Report Placement Rule

All future audit or execution result reports should converge under:
- 018.meta/470.cross-cutting-completion

## 6. Manifest Placement Rule

All future block slot, naming, and execution-prep manifests should converge under:
- 018.meta/495.execution-block-preparation

## 7. Acceptance Checklist

- canonical output roots fixed
- temp directory rule fixed
- report/manifest placement split fixed

## Phase 1 Output Root Compatibility Rule
## Phase 1 Output Root Compatibility Rule

Future phase 1 execution artifacts must be placed consistently with:

- report outputs under 470.cross-cutting-completion
- manifest and execution-prep outputs under 495.execution-block-preparation
- temporary files under \$HOME/.tmp

Ad hoc output placement is prohibited.

## Output Rule And Final Gate Dependency
## Output Rule And Final Gate Dependency

Correct output placement is necessary but is not sufficient.

A correctly placed artifact is still invalid if phase 1 authoring began before the final entry gate passed.
