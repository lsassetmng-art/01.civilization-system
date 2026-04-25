# ============================================================
# CIVILIZATION PRE ACTION GATE
# ============================================================

status: pre-action-gate
layer: implementation
domain: 018.meta
subdomain: 710.canonical-usage-and-anti-shortcut-pack
document_id: 1201851104
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the pre-action gate that must be passed before future activity deepens.

## 2. Pre-Action Gate Questions

Before any future action deepens, explicitly answer:

1. was the active canonical surface read first?
2. was the frozen baseline confirmed?
3. is the intent read-only, non-semantic alignment, or semantic change?
4. does a valid trigger exist?
5. is the correct path selected?
6. is any prohibited shortcut present?

## 3. Gate Output Fields

Required outputs:

- pre_action_gate_id
- canonical_surface_confirmed_flag
- baseline_confirmed_flag
- classified_intent
- valid_trigger_flag
- prohibited_shortcut_detected_flag
- allowed_next_path
- gate_summary_text

## 4. Canonical allowed_next_path Values

- stay_read_only
- use_maintenance_or_errata
- use_recovery_protocol
- use_governed_change_path
- stop_and_reanchor

## 5. Hard Rule

No future action should deepen past this gate
while shortcut detection or baseline uncertainty remains unresolved.

## 6. Acceptance Checklist

- pre-action gate questions fixed
- gate outputs fixed
- allowed next paths fixed
- no-deepen-under-uncertainty rule fixed
