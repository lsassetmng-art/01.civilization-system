# ============================================================
# CIVILIZATION STALE CASE RESPONSE CONTRACT
# ============================================================

status: stale-response-contract
layer: implementation
domain: 018.meta
subdomain: 780.request-aging-and-escalation-pack
document_id: 1201851805
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the outcome contract when a stale case is reviewed.

## 2. Required Fields

Required fields:

- stale_case_review_id
- request_case_id
- prior_aging_state
- stale_detection_type
- response_path
- resulting_queue_state
- escalation_required_flag
- response_summary_text

## 3. Canonical response_path Values

- refresh_without_escalation
- escalate_for_review
- stop_safe_after_review
- reanchor_before_continuation

## 4. Hard Rule

A stale response must leave an explicit case-history trace.

## 5. Acceptance Checklist

- required fields fixed
- response_path values fixed
- no-traceless-stale-response rule fixed
