# ============================================================
# CIVILIZATION FINAL PHASE1 CLOSE DECISION REPORT ACTUAL DESIGN
# ============================================================

status: actual-design
layer: implementation
domain: 018.meta
subdomain: 600.final-close-decision-and-phase2-entry-exact-design
document_id: 1201850001
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the actual design shape of the final phase1 close decision report.

## 2. Report Objective

This report is the first document allowed to state the explicit final decision
for the current phase1 position.

## 3. Required Sections

The report must contain:

1. current design-return position summary
2. executed history summary
3. design completion summary
4. remaining backlog summary
5. blocker classification summary
6. final close decision
7. execution resume decision
8. transition decision
9. phase2 entry package reference
10. next action summary

## 4. Required Fields

Required fields:

- close_decision_report_id
- phase_name
- design_return_position_summary
- executed_history_summary
- design_completion_summary
- remaining_backlog_summary
- blocker_class_summary
- final_phase1_decision
- execution_resume_decision
- transition_decision
- chosen_phase2_entry_package
- next_action_summary
- close_decision_summary_text

## 5. Canonical Decision Values

final_phase1_decision:
- close_phase1_now
- keep_phase1_open_design_only
- keep_phase1_open_blocked
- close_phase1_and_prepare_phase2

execution_resume_decision:
- do_not_resume_execution_yet
- resume_phase1_execution_after_design
- execution_resume_blocked

transition_decision:
- do_not_prepare_transition_yet
- prepare_transition_after_close
- transition_preparation_blocked

## 6. Hard Rule

This report must not silently merge
close, resume, and transition into one ambiguous decision.

## 7. Acceptance Checklist

- report objective fixed
- required sections fixed
- required fields fixed
- canonical decision values fixed
- no-ambiguous-merge rule fixed
