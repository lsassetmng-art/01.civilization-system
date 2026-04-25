# ============================================================
# CIVILIZATION PORTFOLIO CLOSURE REVIEW RULE
# ============================================================

status: closure-review-rule
layer: implementation
domain: 018.meta
subdomain: 790.portfolio-closure-and-no-new-open-pack
document_id: 1201851904
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how the portfolio is reviewed just before final closure certification.

## 2. Review Rule

Closure review must explicitly check:

1. are any active cases left
2. are any blocked cases missing visibility
3. are any stale cases unresolved without response
4. are any governed semantic requests unfinished but mislabeled
5. is late-entry control still holding

## 3. Review Result Values

- closure_review_pass
- closure_review_pass_with_explicit_waiting_cases
- closure_review_fail_reopen_control_needed

## 4. Hard Rule

Final completion must not begin from unreviewed portfolio state.

## 5. Acceptance Checklist

- review rule fixed
- review result values fixed
- no-final-completion-from-unreviewed-state rule fixed
