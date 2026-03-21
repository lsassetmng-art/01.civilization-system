# ============================================================
# EVENT IDEMPOTENCY RULE
# ============================================================

status: canonical
scope: event
component: event-idempotency-rule

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define canonical idempotency rules
for event processing across the Civilization System.


# ============================================================
# RESPONSIBILITY
# ============================================================

This file defines:

- duplicate event handling expectations
- replay safety expectations
- retry-safe consumption behavior
- non-repeatable side effect control


# ============================================================
# CORE PRINCIPLE
# ============================================================

Event processing must tolerate retry,
replay, and duplicate delivery
without creating false repeated side effects.


# ============================================================
# IDEMPOTENCY RULE
# ============================================================

A consumer must be able to determine
whether an event was already processed
or whether repeating the same event
would be unsafe.

At-least-once delivery must not create
silent duplicate mutation.


# ============================================================
# DUPLICATE HANDLING RULE
# ============================================================

Duplicate deliveries are expected
in robust distributed systems.

Consumers should protect against:

- repeated grant creation
- repeated release application
- repeated mirrored state mutation
- repeated downstream side effects


# ============================================================
# REPLAY RULE
# ============================================================

Reprocessing should be safe
when the same canonical event is replayed
under the same contract meaning.

Replay safety is part of structural correctness,
not an optional optimization.


# ============================================================
# RETRY RULE
# ============================================================

Retryable failure handling is allowed.

Retry must not create silent double-apply effects.

Where necessary, inbox or tracking state
should make prior processing detectable.


# ============================================================
# FINAL RULE
# ============================================================

Canonical event handling must be idempotent enough
to tolerate retry and duplicate delivery
without corrupting structural truth.
