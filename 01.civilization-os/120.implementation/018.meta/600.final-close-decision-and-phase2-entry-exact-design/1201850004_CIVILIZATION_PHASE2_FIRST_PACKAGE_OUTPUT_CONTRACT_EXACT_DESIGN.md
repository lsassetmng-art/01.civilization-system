# ============================================================
# CIVILIZATION PHASE2 FIRST PACKAGE OUTPUT CONTRACT EXACT DESIGN
# ============================================================

status: exact-design
layer: implementation
domain: 018.meta
subdomain: 600.final-close-decision-and-phase2-entry-exact-design
document_id: 1201850004
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the expected output contract for the first phase2 entry package.

## 2. Output Objective

The first phase2 package must emit outputs that are narrow enough
to prove boundary control and readiness tracking.

## 3. Required Output Fields

Required fields:

- package_run_id
- package_name
- package_scope_summary
- included_family_summary
- excluded_family_summary
- blocker_count
- gate_result
- package_status
- package_summary_text

## 4. Canonical package_status Values

- prepared_not_started
- active_in_scope
- stopped_by_boundary
- blocked_before_start
- completed_in_scope

## 5. Hard Rule

The first phase2 package output contract must not allow silent widening
into additional DB families.

## 6. Acceptance Checklist

- output objective fixed
- required output fields fixed
- canonical package status values fixed
- no-silent-widening rule fixed
