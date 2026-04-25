# ============================================================
# CIVILIZATION PHASE1 CLOSE DECISION REPORT SCHEMA EXACT DESIGN
# ============================================================

status: exact-design
layer: implementation
domain: 018.meta
subdomain: 570.phase1-close-exact-design
document_id: 1201849703
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the exact schema for the phase1 close decision report.

## 2. Required Report Fields

Required fields:

- close_report_id
- phase_name
- executed_history_summary
- verify_design_status
- report_design_status
- dbprep_design_status
- transition_design_status
- blocker_count
- blocker_class_summary
- close_readiness_result
- resume_readiness_result
- transition_readiness_result
- final_phase1_decision
- next_action_type
- next_action_summary

## 3. Canonical Result Values

close_readiness_result:
- ready
- conditionally_ready
- not_ready

resume_readiness_result:
- resume_not_needed
- resume_after_design
- do_not_resume

transition_readiness_result:
- transition_ready
- transition_after_additional_design
- transition_not_ready

final_phase1_decision:
- close_phase1_now
- keep_phase1_open_design_only
- keep_phase1_open_blocked
- close_phase1_and_prepare_phase2

## 4. Hard Rule

The close decision report must not silently collapse
close, resume, and transition into one ambiguous result.

## 5. Acceptance Checklist

- required report fields fixed
- canonical result values fixed
- no-ambiguous-collapse rule fixed
