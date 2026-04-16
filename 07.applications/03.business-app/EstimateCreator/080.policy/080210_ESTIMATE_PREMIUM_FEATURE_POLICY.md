# ============================================================
# ESTIMATE PREMIUM FEATURE POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

Premium features include:

- structured meeting memo
- QA management
- estimate template registration and expanded template usage

Premium-only write actions must be denied
when entitlement is inactive or unknown.

Read-safe handling of existing premium-created records
should remain possible where policy permits.



# ============================================================
# BILLING BOUNDARY
# ============================================================

The billing boundary must preserve the essential rough-estimate workflow
in the Free plan.

Premium must be limited to structured and productivity-enhancing features.

Free plan retains at minimum:

- rough estimate create/edit
- opportunity memo
- meeting memo in free_form mode
- app-internal sharing
- ERP rough estimate publication request
- inventory reference
- offline draft usage

Premium unlocks:

- structured meeting memo
- QA management
- estimate templates
- expanded template set
- user template registration and editing

# ============================================================
# DOWNGRADE POLICY
# ============================================================

After premium downgrade or expiry,
safe read access to existing premium-created data
may remain available where policy permits.

Premium-only new writes and edits must be denied
when entitlement is inactive, expired, or unknown.

# ============================================================
# OFFLINE BILLING POLICY
# ============================================================

Offline premium behavior must rely on cached verified entitlement state.

If entitlement freshness cannot be trusted beyond policy bounds,
premium-only write operations must fail closed.

