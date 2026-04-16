# ============================================================
# ESTIMATE CREATOR BILLING DESIGN NOTE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

This note defines the billing design of EstimateCreator.

The billing design must remain aligned with the application role:

- rough estimate creation
- sales and negotiation support
- offline-capable drafting
- BusinessOS-side shared capability reuse
- ERP rough estimate publication support

Billing must not block the essential estimate workflow unnecessarily.

# ============================================================
# 2. BILLING PRINCIPLE
# ============================================================

EstimateCreator uses a simple two-tier plan structure:

- Free
- Premium

Premium price:

- 500 JPY per user per month

The billing boundary is designed around business-efficiency features,
not around the core right to create a rough estimate.

# ============================================================
# 3. FREE PLAN
# ============================================================

Free plan includes the essential estimate workflow.

Free plan capabilities:

- rough estimate creation
- rough estimate editing
- standalone launch
- deeplink launch
- standalone login entry
- shared BusinessOS session reuse on deeplink when valid
- opportunity memo
- meeting memo in free_form mode
- app-internal sharing to preconfigured users
- ERP rough estimate publication request
- inventory reference lookup
- offline draft usage
- sync and pending operation handling
- basic audit/history visibility

# ============================================================
# 4. PREMIUM PLAN
# ============================================================

Premium plan unlocks structured and reusable productivity features.

Premium capabilities:

- structured meeting memo
- QA management
- estimate templates
- expanded app default template set
- user template registration
- user template editing

Premium is therefore positioned as a productivity enhancement tier,
not as the core estimate right itself.

# ============================================================
# 5. BILLING UNIT
# ============================================================

Recommended billing unit:

- per user
- monthly subscription
- 500 JPY / user / month

This is preferred because:

- EstimateCreator behavior is strongly user-centric
- template usage differs by operator
- QA ownership differs by operator
- deeplink and shared-session usage align naturally with user entitlement
- the plan remains easy to explain operationally

# ============================================================
# 6. ENTITLEMENT STATE MODEL
# ============================================================

Premium access must be controlled through entitlement state,
not by ad-hoc scattered feature flags only.

Representative entitlement states:

- inactive
- active
- grace
- expired
- unknown

Meaning:

- inactive:
  not subscribed

- active:
  premium usage is currently allowed

- grace:
  temporary continued access under grace handling

- expired:
  subscription ended and premium write access is no longer allowed

- unknown:
  premium state cannot currently be verified

# ============================================================
# 7. PREMIUM GATE RULE
# ============================================================

Premium-only write actions must require a valid premium entitlement state.

Allowed premium write:
- active
- grace, if policy permits

Denied premium write:
- inactive
- expired
- unknown

unknown must fail closed for premium-only write operations.

# ============================================================
# 8. OFFLINE BILLING RULE
# ============================================================

Offline premium behavior must use cached entitlement state.

Required fields for safe offline premium behavior include:

- premium_plan_code
- is_active
- activated_at
- expired_at
- last_verified_at
- grace_until, if used

Offline premium write may be allowed only when
cached entitlement state remains valid within policy bounds.

If entitlement state becomes unknown beyond acceptable bounds,
premium-only write must fail closed.

# ============================================================
# 9. DEEPLINK BILLING RULE
# ============================================================

Deeplink launch does not require redundant login UI
when shared BusinessOS session is valid.

However, deeplink launch must not bypass premium entitlement checks.

Therefore deeplink behavior is:

- reuse authenticated shared session where valid
- resolve entitlement state
- allow or deny premium capability accordingly

Deeplink is not a premium bypass path.

# ============================================================
# 10. CANCELLATION / DOWNGRADE RULE
# ============================================================

After premium cancellation or downgrade,
the application should preserve safe access to already existing data
while blocking premium-only new writes.

Recommended behavior after downgrade:

Allowed:
- view existing structured meeting memos
- view existing QA records
- view existing templates
- view premium-created historical content where policy permits

Denied:
- create new structured meeting memos
- edit structured meeting memos
- create new QA records
- update QA records
- create new user templates
- edit user templates
- apply premium-only templates where policy blocks it

This is a read-allowed / premium-write-denied model.

# ============================================================
# 11. UI BILLING SURFACE
# ============================================================

Premium features should generally be visible but locked,
rather than completely hidden.

Recommended UI behavior:

- show Premium badge
- show lock icon
- show upgrade prompt near premium actions
- allow user to understand what becomes available at 500 JPY

Representative premium-locked surfaces:

- structured mode in meeting memo
- QA screen create/edit actions
- template create/edit actions
- expanded template library

# ============================================================
# 12. PRICE SNAPSHOT AND CURRENCY
# ============================================================

Recommended billing-support fields include:

- premium_plan_code
- billing_cycle_type
- plan_price_snapshot
- currency_code
- purchased_at
- renewed_at
- canceled_at
- downgrade_effective_at
- source_of_truth
- last_verified_at

Even if billing source of truth is external,
the app should retain enough snapshot data
for clear local behavior and auditability.

# ============================================================
# 13. BILLING POLICY SUMMARY
# ============================================================

Billing policy summary:

- do not block core rough estimate workflow behind premium
- premium is for structure, reuse, and follow-up efficiency
- entitlement unknown fails closed for premium writes
- deeplink does not bypass premium checks
- offline premium use depends on cached verified entitlement state
- downgrade preserves read access where safe
- premium write is blocked after downgrade/expiry

# ============================================================
# 14. COMMON COMPONENT IMPLICATION
# ============================================================

EstimateCreator billing design suggests a reusable common pattern:

- Application Premium Entitlement Common

Candidate shared responsibilities:

- entitlement state model
- active / inactive / grace / expired / unknown semantics
- last_verified_at handling
- premium gate runtime
- premium lock UI
- downgrade read-allowed / write-denied handling

This pattern may become reusable across other applications.

# ============================================================
# 15. CONCLUSION
# ============================================================

EstimateCreator billing should remain simple:

- Free
- Premium 500 JPY / user / month

Free keeps the core estimate workflow available.

Premium unlocks:
- structured meeting memo
- QA management
- estimate templates

This achieves a clean balance between usability,
commercial value,
and architectural consistency.

