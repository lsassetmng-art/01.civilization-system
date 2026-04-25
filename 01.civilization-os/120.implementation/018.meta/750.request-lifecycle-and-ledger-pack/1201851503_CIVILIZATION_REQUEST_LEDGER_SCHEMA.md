# ============================================================
# CIVILIZATION REQUEST LEDGER SCHEMA
# ============================================================

status: ledger-schema
layer: implementation
domain: 018.meta
subdomain: 750.request-lifecycle-and-ledger-pack
document_id: 1201851503
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the minimum ledger schema for future request history.

## 2. Required Ledger Fields

Required fields:

- request_case_id
- request_intake_id
- request_class
- routed_path
- current_lifecycle_state
- closure_status
- unresolved_state
- last_safe_state
- next_allowed_path
- baseline_confirmed_flag
- semantic_change_flag
- history_summary_text
- recorded_at_note

## 3. Ledger Objective

The ledger must make it possible to understand:

- what the request was
- how it was classified
- where it was routed
- what state it reached
- what the next allowed path is

## 4. Hard Rule

A request ledger entry must not depend on chat memory alone.

## 5. Acceptance Checklist

- required ledger fields fixed
- ledger objective fixed
- no-chat-memory-only rule fixed
