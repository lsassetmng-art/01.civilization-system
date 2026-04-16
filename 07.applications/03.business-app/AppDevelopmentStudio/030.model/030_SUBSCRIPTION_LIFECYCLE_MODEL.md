# ============================================================
# SUBSCRIPTION LIFECYCLE MODEL
# ============================================================

status: canonical-draft
layer: model
system: applications
application: App Development Studio
owner: Boss
prepared_by: Zero

purpose:
Defines renewal, cancellation, expiry, grace, and resume lifecycle states.

lifecycle_states:
- active
- renewal_due
- renewal_failed
- grace_period
- cancelled_pending_expiry
- expired
- resumed

state_meanings:

active:
Paid subscription is currently valid.

renewal_due:
Renewal timing has been reached and platform billing processing is expected.

renewal_failed:
Expected renewal did not complete successfully.

grace_period:
Temporary post-failure period where recovery may still occur.

cancelled_pending_expiry:
Cancellation has been requested, but current paid period has not yet ended.

expired:
Paid access period has fully ended.

resumed:
Subscription access has been restored after expiry or payment recovery.

core_rules:
- monthly and yearly share the same lifecycle semantics
- cancellation should not silently erase prior billing history
- expiry should be explicit
- grace handling should be explicit if adopted
- governance rules remain unchanged by lifecycle state
