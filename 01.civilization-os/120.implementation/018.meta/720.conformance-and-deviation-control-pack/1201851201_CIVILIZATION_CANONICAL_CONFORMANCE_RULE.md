# ============================================================
# CIVILIZATION CANONICAL CONFORMANCE RULE
# ============================================================

status: conformance-rule
layer: implementation
domain: 018.meta
subdomain: 720.conformance-and-deviation-control-pack
document_id: 1201851201
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the rule for determining whether future handling conforms
to the active canonical surface.

## 2. Conformance Objective

Conforming handling must preserve:

- the current frozen baseline
- the active canonical reading order
- the steady-state default
- the governed change path for semantic change
- the anti-shortcut discipline layer

## 3. Canonical Conformance Rule

Handling is conformant only when all of the following are true:

1. active canonical surface was read first
2. baseline was confirmed
3. semantic vs non-semantic classification was explicit
4. no prohibited shortcut was used
5. any semantic change intent used a governed path

## 4. Required Conformance Outputs

Required outputs:

- conformance_check_id
- checked_activity_scope
- canonical_surface_confirmed_flag
- baseline_confirmed_flag
- governed_path_confirmed_flag
- prohibited_shortcut_flag
- conformance_result
- conformance_summary_text

## 5. Canonical conformance_result Values

- conformant
- conditionally_conformant_requires_alignment
- nonconformant

## 6. Hard Rule

Good intention alone does not count as conformance.

## 7. Acceptance Checklist

- conformance objective fixed
- canonical conformance rule fixed
- required conformance outputs fixed
- no-good-intention-equals-conformance rule fixed
