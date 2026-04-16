# ============================================================
# ESTIMATE PREMIUM FEATURE GATE RUNTIME
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Premium gate runtime evaluates whether feature execution is allowed.

Premium-gated operations include:

- structured meeting memo creation/editing
- QA creation/editing
- template registration/editing
- expanded default template access

Runtime outcome must be one of:

- allowed
- denied_inactive_plan
- denied_unknown_plan_state
- denied_refresh_required

Unknown plan state must fail closed for premium-only writes.



# ============================================================
# OFFLINE ENTITLEMENT RUNTIME
# ============================================================

Offline premium write behavior must use cached entitlement state.

Allowed premium write may include:

- active
- grace, where policy allows

Denied premium write includes:

- inactive
- expired
- unknown

unknown must fail closed for premium-only write operations.

# ============================================================
# DOWNGRADE RUNTIME
# ============================================================

After downgrade or expiry,
the runtime should preserve safe read access
to already existing premium-created data where policy permits,
while denying new premium-only writes and edits.

