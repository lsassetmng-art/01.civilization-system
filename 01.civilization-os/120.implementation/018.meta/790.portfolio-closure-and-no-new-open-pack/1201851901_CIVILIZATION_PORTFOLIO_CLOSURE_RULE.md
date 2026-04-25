# ============================================================
# CIVILIZATION PORTFOLIO CLOSURE RULE
# ============================================================

status: portfolio-closure-rule
layer: implementation
domain: 018.meta
subdomain: 790.portfolio-closure-and-no-new-open-pack
document_id: 1201851901
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines how the request portfolio reaches a settled closure posture.

## 2. Closure Objective

Portfolio closure must preserve:

- explicit handling completion of existing open cases
- visible separation between unresolved and safely stopped cases
- no silent reopening through late ambiguity
- readiness for final completion certification

## 3. Closure Rule

The portfolio may be treated as closure-ready only when:

1. active cases are resolved, safely stopped, or explicitly unresolved_open with preserved next path
2. dependency, stale, and conflict states remain visible
3. no hidden active semantic work remains
4. no shortcut-based late work entry remains open

## 4. Hard Rule

Closure-ready does not mean every case became resolved_closed.
It means every remaining case has an explicit safe terminal or waiting posture.

## 5. Acceptance Checklist

- closure objective fixed
- closure rule fixed
- no-all-cases-must-close rule fixed
