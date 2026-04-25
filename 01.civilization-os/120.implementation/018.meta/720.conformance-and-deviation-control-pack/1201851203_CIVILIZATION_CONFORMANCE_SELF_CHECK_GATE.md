# ============================================================
# CIVILIZATION CONFORMANCE SELF CHECK GATE
# ============================================================

status: self-check-gate
layer: implementation
domain: 018.meta
subdomain: 720.conformance-and-deviation-control-pack
document_id: 1201851203
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the self-check gate before future action is treated as conformant.

## 2. Self-Check Questions

Before treating any action as conformant, answer:

1. did I read the active canonical surface first?
2. did I confirm the frozen baseline?
3. did I classify the action correctly?
4. did I avoid prohibited shortcuts?
5. did I use recovery first if drift existed?
6. did I avoid using maintenance/errata for semantic change?

## 3. Required Gate Outputs

Required outputs:

- self_check_gate_id
- action_scope
- action_classification_result
- shortcut_detected_flag
- recovery_required_flag
- governed_path_required_flag
- self_check_result
- gate_summary_text

## 4. Canonical self_check_result Values

- pass
- pass_after_alignment
- fail_stop_and_reanchor

## 5. Hard Rule

Do not infer self-check success from familiarity with the project.

## 6. Acceptance Checklist

- self-check questions fixed
- gate outputs fixed
- self-check result values fixed
- no-familiarity-equals-pass rule fixed
