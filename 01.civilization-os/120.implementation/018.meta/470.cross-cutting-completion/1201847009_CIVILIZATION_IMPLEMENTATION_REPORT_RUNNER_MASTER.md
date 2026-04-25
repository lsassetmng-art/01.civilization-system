# ============================================================
# CIVILIZATION IMPLEMENTATION REPORT RUNNER MASTER
# ============================================================

status: implementation-prep-report-runner
layer: implementation
domain: 018.meta
subdomain: 470.cross-cutting-completion
document_id: 1201847009
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the standard report output model for apply, verify, and repair runs.

## 2. Scope

This document governs report content and report structure.

## 3. Required Report Sections

Every implementation run report must contain:

- run header
- target scope
- created list
- patched list
- skipped list
- failed list
- blocker list
- summary
- next action guidance

## 4. Required Summary Fields

Minimum summary fields:

- total_expected
- total_present
- total_missing
- total_created
- total_patched
- total_skipped
- total_failed
- audit_status

## 5. Report Output Rule

Reports must be human-readable and path-explicit.

## 6. Acceptance Checklist

- required report sections fixed
- summary fields fixed
- path-explicit rule fixed
