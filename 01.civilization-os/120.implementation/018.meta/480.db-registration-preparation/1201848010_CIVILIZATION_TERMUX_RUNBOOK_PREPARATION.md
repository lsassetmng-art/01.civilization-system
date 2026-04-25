# ============================================================
# CIVILIZATION TERMUX RUNBOOK PREPARATION
# ============================================================

status: termux-runbook-preparation
layer: implementation
domain: 018.meta
subdomain: 480.db-registration-preparation
document_id: 1201848010
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the preparation rules for future Termux execution blocks.

## 2. Runbook Principles

Required Termux preparation rules:

- use mkdir -p and cat > for file generation
- use additive rerun-safe blocks
- use $HOME/.tmp for temporary files
- do not rely on /tmp
- keep path references absolute
- emit reports explicitly

## 3. DB Execution Principle

When future DB blocks are written:

- Persona-side DB work must use PERSONA_DATABASE_URL
- ERP-side DB work must use DATABASE_URL

## 4. SQL Style Principle

Future SQL execution blocks must use the standard direct-execution style
already adopted for this project room.

## 5. Acceptance Checklist

- Termux path rule fixed
- temporary directory rule fixed
- DB environment split fixed
- rerun-safe rule fixed

## Exact Termux Execution Preparation Rule
## Exact Termux Execution Preparation Rule

Future Termux execution blocks must explicitly separate:

- file generation phase
- DB preparation phase
- Persona-side DB execution phase
- ERP-side DB execution phase
- report phase

## Exact Temp File Rule

Temporary files must use:
- $HOME/.tmp

Do not rely on:
- /tmp

## Exact DB Variable Rule

Future DB execution blocks must declare which environment is used:

- PERSONA_DATABASE_URL for Persona-side DB work
- DATABASE_URL for ERP-side DB work or ERP sendout preparation

## Exact Runbook Transition Rule
## Exact Runbook Transition Rule

This runbook preparation document is the bridge between:

- implementation-ready document creation
- DB registration preparation
- future Termux execution blocks

Future execution blocks must be generated only after:
- DB preparation docs are complete
- boundary class is declared
- rerun-safe posture is confirmed
- report output posture is defined

## Exact Future Block Categories

Future Termux blocks should be categorized as:

- file-generation blocks
- DB preparation blocks
- Persona-side SQL blocks
- ERP-side SQL blocks
- verify/report blocks

These categories must not be silently mixed.
