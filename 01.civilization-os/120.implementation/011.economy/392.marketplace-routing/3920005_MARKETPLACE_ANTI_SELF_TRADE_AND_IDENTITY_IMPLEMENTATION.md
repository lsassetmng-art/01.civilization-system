# ============================================================
# MARKETPLACE ANTI-SELF-TRADE AND IDENTITY IMPLEMENTATION
# ============================================================

status: canonical
layer: implementation
scope: marketplace-anti-self-trade-and-identity-implementation
component: marketplace-anti-self-trade-and-identity-implementation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the implementation design
for duplicate-user prevention,
identity linkage handling,
and anti-self-trade control
inside Civilization and Marketplace.

This document must align with:

- MARKETPLACE_ANTI_SELF_TRADE_AND_IDENTITY_ARCHITECTURE
- MARKETPLACE_ENTRY_AND_PAYMENT_ARCHITECTURE
- MARKETPLACE_ORDER_RECEIPT_AND_SETTLEMENT_ARCHITECTURE


# ============================================================
# 2. DECISION LAYERS
# ============================================================

Implementation must support
three distinct decision layers:

- hard_block
- review_hold
- monitoring_only

These layers must remain separate
and must not be collapsed
into one opaque fraud outcome.


# ============================================================
# 3. REGISTRATION CHECK POSITION
# ============================================================

Before account creation or activation,
the system should perform duplicate checks against:

- linked external identity principal
- canonical user linkage
- email
- phone
- KYC identity where supported
- payout identity where relevant
- strong identity cluster posture

If hard-match criteria are met,
duplicate registration must be blocked
or linked to existing account instead of duplicated.


# ============================================================
# 4. ORDER CHECK POSITION
# ============================================================

Before irreversible purchase progression,
the system should perform:

- buyer identity resolution
- seller control resolution
- owner / controller comparison
- beneficial owner comparison
- payout beneficiary comparison
- risk score evaluation

Only after these checks
should payment progression continue.


# ============================================================
# 5. HARD BLOCK RULE
# ============================================================

Implementation should hard block
when same-user or same-controller evidence
is strong enough.

Representative hard-block examples include:

- same canonical user principal
- same linked external identity principal
- same verified beneficial owner
- buyer_user_id equals seller_user_id
- buyer controls seller context directly
- seller payout beneficiary matches buyer identity under strict policy

Hard block must stop:

- duplicate registration
or
- self-trade purchase progression


# ============================================================
# 6. REVIEW HOLD RULE
# ============================================================

Implementation should use review hold
for strong but not fully certain suspicion.

Representative review-hold signals may include:

- same email
- same phone
- same address cluster
- same payment instrument fingerprint where policy allows
- same payout destination cluster
- same device fingerprint cluster
- suspicious reciprocal trading
- suspicious circular trading
- suspicious high-risk cashout posture

Review hold should block payout
and may block order continuation
depending on policy.


# ============================================================
# 7. MONITORING RULE
# ============================================================

Weak signals alone should remain
monitoring-only unless combined strongly.

Representative weak signals include:

- same IP only
- same region only
- same device family only
- same timing pattern only

Monitoring signals may increase risk score,
but should not alone create hard block.


# ============================================================
# 8. SELLER CONTROL RESOLUTION RULE
# ============================================================

Before anti-self-trade decision,
seller context resolution should retrieve
or derive where available:

- seller_user_id
- owner_user_id
- controlling_user_id
- beneficial_owner_id
- payout_beneficiary_id

Without seller control resolution,
self-trade detection remains incomplete.


# ============================================================
# 9. SCORING RULE
# ============================================================

Implementation may combine
hard rules and risk scoring.

Representative flow:

- apply hard block rules first
- if not blocked,
  calculate suspicion score
- if score exceeds hold threshold,
  apply review_hold
- if score is elevated but below hold threshold,
  apply monitoring_only
- otherwise allow

The exact thresholds may be policy-tuned later.


# ============================================================
# 10. TRADE GATING RESULT RULE
# ============================================================

Representative trade gating results include:

- allow
- allow_with_monitoring
- review_hold
- hard_block

These results should be usable by:

- order progression
- payout release logic
- review case generation
- alert systems


# ============================================================
# 11. PAYOUT RELATION RULE
# ============================================================

If self-trade suspicion remains unresolved,
payout should not be released.

Representative linkage:

review_hold
-> order may be held or allowed conditionally
-> payout_hold remains active
-> manual review outcome
-> payout release or refund / cancellation path


# ============================================================
# 12. DUPLICATE ACCOUNT RELATION RULE
# ============================================================

If duplicate registration is strongly suspected,
the implementation may:

- block new account creation
- require review
- merge by link to existing identity where policy allows

Duplicate-user prevention
must work across native and external login routes.


# ============================================================
# 13. TRACEABILITY RULE
# ============================================================

Identity-control decisions should remain traceable.

Representative traceable outputs include:

- decision layer used
- matched evidence families
- seller context resolution posture
- risk score posture where supported
- review case creation
- payout hold linkage

This improves auditability and review quality.


# ============================================================
# 14. FINAL RULE
# ============================================================

Anti-self-trade and identity implementation must remain:

- layered
- traceable
- pre-payment-aware
- pre-payout-aware
- seller-control-aware
- duplicate-registration-aware
- resistant to cashout-abuse patterns

## Exact Identity Risk Decision Rule
## Exact Identity Risk Decision Rule

Identity risk evaluation must explicitly distinguish:

- shared user identity
- shared controller
- shared beneficial owner
- shared payout beneficiary
- suspicious but unresolved similarity

Each may map to different decision layers.

## Exact Decision Layers

The following decision layers must remain separate:

- HARD_BLOCK
- REVIEW_HOLD
- MONITORING_ONLY

## Exact Identity Risk Boundary

Identity risk decision is not equivalent to:

- authentication result
- authorization result
- ordinary seller eligibility
- payment confirmation

Identity risk is its own canonical review surface and must be auditable.
