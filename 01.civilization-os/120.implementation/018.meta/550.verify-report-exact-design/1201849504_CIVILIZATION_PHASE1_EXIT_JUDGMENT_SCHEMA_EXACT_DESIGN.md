# ============================================================
# CIVILIZATION PHASE1 EXIT JUDGMENT SCHEMA EXACT DESIGN
# ============================================================

status: exact-design
layer: implementation
domain: 018.meta
subdomain: 550.verify-report-exact-design
document_id: 1201849504
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact schema for phase-1 exit judgment.

## 2. Exit Judgment Schema

Required fields:

- judgment_id
- phase_name
- verify_result
- blocker_count
- scope_widening_detected_flag
- forbidden_execution_detected_flag
- design_backlog_remaining_flag
- exit_judgment
- resume_recommendation
- next_design_priority
- next_phase_candidate
- judgment_summary_text

## 3. Exit Logic Rule

The exit judgment must be derived from:

- verify_result
- blocker_count
- scope widening result
- forbidden execution result
- remaining high-priority design backlog

## 4. Hard Rule

High-priority remaining design backlog prevents a clean phase-close judgment.

## 5. Acceptance Checklist

- exit judgment schema fixed
- exit logic rule fixed
- high-priority-design constraint fixed
