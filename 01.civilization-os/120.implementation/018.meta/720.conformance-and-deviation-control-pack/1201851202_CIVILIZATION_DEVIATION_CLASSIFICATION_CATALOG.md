# ============================================================
# CIVILIZATION DEVIATION CLASSIFICATION CATALOG
# ============================================================

status: deviation-catalog
layer: implementation
domain: 018.meta
subdomain: 720.conformance-and-deviation-control-pack
document_id: 1201851202
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the catalog for classifying deviations from canonical handling.

## 2. Deviation Classes

deviation_class_01:
- name: entry_order_deviation
- description: canonical entry order was skipped

deviation_class_02:
- name: baseline_confirmation_deviation
- description: action proceeded without confirming frozen baseline

deviation_class_03:
- name: shortcut_deviation
- description: prohibited shortcut family was used

deviation_class_04:
- name: semantic_path_deviation
- description: semantic change intent bypassed governed path

deviation_class_05:
- name: recovery_omission_deviation
- description: drift or wrong-start was detected but recovery was skipped

deviation_class_06:
- name: errata_misuse_deviation
- description: errata or maintenance path was used for semantic movement

## 3. Severity Grouping

Severity groups:

- low: alignment-only deviation with no semantic effect
- medium: process deviation that risks semantic confusion
- high: semantic or governance-breaking deviation

## 4. Classification Rule

When uncertain, classify to the higher severity group until clarified.

## 5. Hard Rule

Deviation classification is not blame assignment.
It is canonical control for safe correction.

## 6. Acceptance Checklist

- deviation classes fixed
- severity grouping fixed
- uncertainty-defaults-higher rule fixed
