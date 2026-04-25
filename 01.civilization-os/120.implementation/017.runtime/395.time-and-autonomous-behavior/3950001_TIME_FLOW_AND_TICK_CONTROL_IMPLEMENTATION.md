# ============================================================
# TIME FLOW AND TICK CONTROL
# IMPLEMENTATION
# ============================================================

status: implementation-ready-draft
layer: implementation
domain: runtime.time
document_id: 3950001
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

Defines the authoritative simulation clock and tick execution control.

## 2. Scope

This document covers:
- simulation clock
- tick window
- tick lock
- pause/resume history
- time speed profile

## 3. Canonical Source Of Truth

Simulation clock truth is runtime-owned and must remain explicit.

## 4. Exact Table Set

- simulation_clock
- tick_window
- tick_execution_lock
- pause_resume_history
- time_speed_profile

## 5. Exact Request / Response

Pause, resume, and acceleration are explicit control actions.

## 6. Exact Command / Event

Typical events:
- clock.started
- clock.paused
- clock.resumed
- tick.executed

## 7. Authorization Boundary

Time control actions require runtime control authority.

## 8. State Machine

Clock states:
- RUNNING
- PAUSED
- RESUMING
- FAILED

## 9. Transaction Boundary

Tick execution must be lock-safe and serialized where required.

## 10. Idempotency

Repeated pause/resume commands for same clock state should be safe.

## 11. Audit Trace

Reviewed time-control actions must be auditable.

## 12. Error Code Binding

Typical codes:
- RUNTIME_TICK_LOCK_FAILED
- STATE_CLOCK_PAUSE_FORBIDDEN
- ACCESS_TIME_CONTROL_FORBIDDEN

## 13. Observability

Displayed time and execution time must remain comparable.

## 14. Failure / Recovery

- one authoritative simulation clock must exist
- tick execution must be lock-safe
- pause, resume, and acceleration must be explicit
- silent drift between displayed time and execution time is prohibited

## 15. Acceptance Checklist

- authoritative clock fixed
- tick lock fixed
- control actions fixed
