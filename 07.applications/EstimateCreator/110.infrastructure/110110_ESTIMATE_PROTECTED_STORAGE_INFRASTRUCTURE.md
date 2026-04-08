# ============================================================
# ESTIMATE PROTECTED STORAGE INFRASTRUCTURE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Protected storage infrastructure should support:

- estimate draft persistence
- memo persistence
- queue persistence
- sync metadata persistence
- cache freshness tracking
- entitlement cache tracking

The storage layer must allow safe recovery after app restart
without losing pending work unexpectedly.

