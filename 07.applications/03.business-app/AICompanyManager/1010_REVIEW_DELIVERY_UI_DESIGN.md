# ============================================================
# AICompanyManager Review Delivery UI Design
# ============================================================

app_name: AICompanyManager
display_name: AI企業運営アプリ
category: 03.business-app
phase: Phase K
status: review-delivery-ui-designed

## 1. Purpose

Phase K completes the first human-facing review and delivery operation UI.

The UI allows a human operator to simulate:

- Leader review approval
- Leader return request
- human final approval
- human revision request
- delivery acceptance

## 2. Review Board

Review board displays:

- review target
- reviewer role
- status
- detail
- approve action
- return action

## 3. Return Request

Return request creates app-side queue meaning:

- return_request_submit

It also creates event log:

- review_returned

## 4. Delivery Board

Delivery board displays:

- delivery candidate
- approval status
- delivery status
- detail
- human approval action
- revision request action
- delivery acceptance action

## 5. Human Approval

Human approval creates queue meaning:

- human_approval_submit

It also creates event log:

- approval_approved

## 6. Revision Request

Human revision request creates queue meaning:

- human_revision_request_submit

It also creates event log:

- approval_revision_requested

## 7. Delivery Acceptance

Delivery acceptance creates queue meaning:

- delivery_acceptance_submit

It also creates event log:

- delivery_accepted

## 8. Canonical Boundary

This phase is UI and mock behavior only.

Business canon:
- review meaning
- return meaning
- approval meaning
- delivery meaning
- queue meaning

AIWorkerOS canon:
- internal role reasoning
- internal review reasoning
- AI execution details

## 9. DB / RLS Status

DB:
- no DB write in Phase K

RLS:
- not applied
- requires explicit Boss RLS OK / GO
