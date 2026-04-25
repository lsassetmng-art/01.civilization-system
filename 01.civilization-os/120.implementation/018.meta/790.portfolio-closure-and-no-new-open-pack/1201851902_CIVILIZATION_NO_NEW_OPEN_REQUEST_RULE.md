# ============================================================
# CIVILIZATION NO NEW OPEN REQUEST RULE
# ============================================================

status: no-new-open-rule
layer: implementation
domain: 018.meta
subdomain: 790.portfolio-closure-and-no-new-open-pack
document_id: 1201851902
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the rule that stops casual new request opening late in the closure sequence.

## 2. No-New-Open Rule

After portfolio closure posture is declared, new request cases should not open
through ordinary routing unless they pass a late-entry exception gate.

## 3. Allowed Post-Closure Intake Types

Allowed late intake types are limited to:

- read_only_reference_confirmation
- recovery_required_due_to_detected drift
- governed owner-side redecision request
- explicit closure-integrity correction intake

## 4. Hard Rule

“Small additional request” is not a sufficient reason to reopen normal intake.

## 5. Acceptance Checklist

- no-new-open rule fixed
- allowed post-closure intake types fixed
- no-small-extra-request-reopen rule fixed
