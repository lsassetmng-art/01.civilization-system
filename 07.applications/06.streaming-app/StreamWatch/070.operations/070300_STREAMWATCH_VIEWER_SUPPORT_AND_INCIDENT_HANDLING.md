# ============================================================
# STREAMWATCH VIEWER SUPPORT AND INCIDENT HANDLING
# ============================================================

status: canonical-draft
layer: operations
system: StreamingOS
app: StreamWatch
schema: streaming
owner: Boss
prepared_by: Zero
language: English

## 1. Purpose

This document defines support-facing handling assumptions for common viewer incidents.

## 2. Common Incident Classes

Typical incidents include:

- purchased but not watchable
- membership joined but still locked
- live available but cannot enter
- archive expected but not available
- resume position wrong
- wrong profile context
- TV handoff fails
- comments or reports cannot submit

## 3. Support Diagnosis Order

Support should inspect in this order:

1. publication and availability state
2. entitlement state
3. viewer_profile context
4. restriction mode
5. route or device state
6. cache staleness
7. progress / history mismatch

## 4. Support Rule

Support language must distinguish clearly between:
- purchase success
- entitlement refresh
- actual watchability
because these are not the same stage.
