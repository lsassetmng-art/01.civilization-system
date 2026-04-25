# ============================================================
# CIVILIZATION EXECUTION PHASE 1 FILE GENERATION BLOCK PREPARATION
# ============================================================

status: execution-block-preparation
layer: implementation
domain: 018.meta
subdomain: 495.execution-block-preparation
document_id: 1201849005
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the preparation rule for phase 1 file-generation blocks.

## 2. Scope

This document governs future blocks that only generate or update files.

## 3. Allowed File-Generation Targets

Phase 1 file-generation blocks may prepare:

- runner helper files
- report templates
- verify target lists
- phase-scoped metadata files
- execution manifests
- non-SQL configuration artifacts

## 4. Forbidden Targets

Phase 1 file-generation blocks must not execute:

- SQL apply
- DDL apply
- seed insertion
- sync/sendout execution
- runtime mutation

## 5. Termux Rule

Future file-generation blocks must use:

- mkdir -p
- cat >
- absolute paths
- $HOME/.tmp for temporary files
- rerun-safe create or patch behavior

## 6. Acceptance Checklist

- allowed targets fixed
- forbidden targets fixed
- Termux rule fixed

## File Block Role In Phase 1
## File Block Role In Phase 1

File-generation blocks are the safest early execution class in phase 1.

They should be used before any DB-execution-class block
whenever file scaffolding, manifests, or reports must be prepared first.

## File Generation Block Naming Dependency
## File Generation Block Naming Dependency

Any future phase 1 file-generation block must use:

- phase-explicit block name
- allowed output root
- reserved slot where applicable

File-generation convenience must not bypass naming control.

## File Generation Block Final Gate Dependency
## File Generation Block Final Gate Dependency

Even file-generation-class blocks must respect the final phase 1 entry gate.

Low-risk class does not waive entry control.
