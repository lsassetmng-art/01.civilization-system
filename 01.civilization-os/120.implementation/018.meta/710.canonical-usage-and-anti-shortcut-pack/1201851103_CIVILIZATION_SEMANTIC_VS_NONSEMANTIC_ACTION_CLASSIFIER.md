# ============================================================
# CIVILIZATION SEMANTIC VS NONSEMANTIC ACTION CLASSIFIER
# ============================================================

status: action-classifier
layer: implementation
domain: 018.meta
subdomain: 710.canonical-usage-and-anti-shortcut-pack
document_id: 1201851103
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the classifier that separates semantic action from non-semantic action.

## 2. Semantic Action Definition

Semantic action means any action that may change:

- current phase1 posture
- execution posture
- transition posture
- phase2 entry posture
- frozen baseline meaning
- governance interpretation

## 3. Non-Semantic Action Definition

Non-semantic action includes only:

- navigation cleanup
- status link cleanup
- typo correction
- cross-reference correction
- safe archival alignment
- read-only clarification without posture change

## 4. Classification Rule

If there is any realistic chance that posture meaning changes,
classify the action as semantic.

## 5. Required Classification Outputs

Required outputs:

- action_classification_id
- proposed_action_summary
- semantic_change_flag
- affected_surface_family
- selected_path
- classification_summary_text

## 6. Hard Rule

Ambiguous cases default to semantic classification,
not non-semantic convenience.

## 7. Acceptance Checklist

- semantic action definition fixed
- non-semantic action definition fixed
- classification rule fixed
- ambiguity-defaults-to-semantic rule fixed
