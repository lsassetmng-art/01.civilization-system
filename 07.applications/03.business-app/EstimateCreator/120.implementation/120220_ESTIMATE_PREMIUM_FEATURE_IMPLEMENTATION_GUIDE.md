# ============================================================
# ESTIMATE PREMIUM FEATURE IMPLEMENTATION GUIDE
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# ============================================================
# 1. PURPOSE
# ============================================================

Premium feature implementation must provide gated productivity features
without forking the canonical application architecture.

# ============================================================
# 2. PREMIUM FEATURES
# ============================================================

Premium-gated features include:

- structured meeting memo
- QA management
- estimate templates

# ============================================================
# 3. GATE RULE
# ============================================================

Premium-only writes require explicit entitlement state.

Allowed:
- active
- grace, where policy allows

Denied:
- inactive
- expired
- unknown

unknown must fail closed.

# ============================================================
# 4. DOWNGRADE RULE
# ============================================================

After downgrade or expiry:

- existing premium-created content may remain viewable where policy permits
- premium-only write actions must be blocked
- deeplink must not bypass entitlement checks

# ============================================================
# 5. OFFLINE RULE
# ============================================================

Offline premium behavior must rely on cached verified entitlement state.

