# ============================================================
# BUILDER AUTO EXECUTION POLICY
# ============================================================

status: canonical
layer: policy
scope: builder-execution-and-property-revenue-distribution
component: builder-auto-execution-policy

owner: Boss
prepared_by: Zero


# POLICY

Ordinary builder execution
must not create manual waiting
for system-side company work.

After required validation gates pass,
system-side execution may proceed automatically.

Only explicit approval-required categories
may create waiting states.


# FAIL CLOSED

If safe execution cannot be determined,
the request must be blocked with explicit reason.


# FINAL RULE

Normal builder placement
must be auto-progressed,
not manually queued.
