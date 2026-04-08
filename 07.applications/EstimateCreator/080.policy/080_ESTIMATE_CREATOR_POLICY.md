# ============================================================
# ESTIMATE CREATOR POLICY
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. ESTIMATE CLASS POLICY
# ============================================================

The default estimate class is rough_estimate.

Local formal usage is allowed only where operation explicitly permits it,
and must remain clearly marked and auditable.

# ============================================================
# 2. SHARING POLICY
# ============================================================

App-internal sharing is allowed only to preconfigured users
through the shared BusinessOS sharing pattern.

Shareable objects are limited to:

- opportunity memo
- meeting memo
- rough estimate

Unbounded public sharing is prohibited.

# ============================================================
# 3. ERP PUBLICATION POLICY
# ============================================================

ERP publication must use the shared BusinessOS publication capability.

EstimateCreator may prepare requests,
but must not privately bypass the shared publication path.

Published classification must remain explicit as rough_estimate
unless a separate authoritative policy defines another route.

# ============================================================
# 4. OFFLINE POLICY
# ============================================================

Offline mode is a drafting and preparation mode.

Offline mode must not represent
live publication,
live approval completion,
or live inventory truth
as completed facts.

# ============================================================
# 5. INVENTORY POLICY
# ============================================================

Inventory values shown by EstimateCreator are reference values.

Any UI or workflow using cached or stale values
must visually communicate reduced freshness.

# ============================================================
# 6. PREMIUM FEATURE POLICY
# ============================================================

Premium features are gated additions,
not separate architecture branches.

Premium-only write actions must fail closed
when entitlement state is inactive or unknown.


# ============================================================
# 7. ENTRY POLICY
# ============================================================

Standalone launch and deeplink launch are equally valid primary entry paths.

Standalone launch must remain fully operable.

Deeplink launch may skip redundant login UI
when shared authenticated BusinessOS session context is valid.

# ============================================================
# 8. SHARED SESSION POLICY
# ============================================================

Shared-session reuse must still enforce:

- session validation
- authorization checks
- company/workspace context checks
- premium entitlement checks where applicable

# ============================================================
# 9. DEEPLINK PARAMETER POLICY
# ============================================================

Deeplink context is advisory until validated.

Raw credentials must not be transported as deeplink business parameters.

