# ============================================================
# MARKETPLACE ANTI-SELF-TRADE AND IDENTITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: marketplace-anti-self-trade-and-identity
component: marketplace-anti-self-trade-and-identity

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Define the canonical architecture
for duplicate-user prohibition,
identity linkage,
and anti-self-trade control
inside Civilization and Civilization Marketplace.

This document defines:

- duplicate registration prohibition
- self-trade prohibition
- beneficial-control-aware trade blocking
- hard-block vs review-hold vs monitoring separation
- identity and control relation architecture

This document does not redefine:

- raw external login provider internals
- KYC provider internals
- payment processor internals
- enforcement penalty policy details


# ============================================================
# 2. CORE PRINCIPLE
# ============================================================

Civilization prohibits
duplicate registration
of the same user.

Marketplace prohibits
self-trading by the same user.

This includes direct and indirect
seller contexts controlled
by the same underlying user.

The purpose includes:

- anti-cashout protection
- anti-circular-sale protection
- anti-fake-volume protection
- anti-abuse protection


# ============================================================
# 3. DUPLICATE REGISTRATION PROHIBITION
# ============================================================

Duplicate registration prohibition
applies to the same underlying person or user principal,
even when different login routes are used.

Representative login routes include:

- native account login
- Google login
- Yahoo login
- future external identity providers

External-provider variation
must not allow duplicate-user bypass.


# ============================================================
# 4. SELF-TRADE PROHIBITION
# ============================================================

Marketplace prohibits
buyer and seller being the same underlying user.

This includes:

- same buyer_user_id and seller_user_id
- same owner_user_id across buyer and seller context
- same controlling_user_id across buyer and seller context
- same beneficial owner across buyer and seller context
- same payout beneficiary where policy treats that as controlling identity evidence


# ============================================================
# 5. CONTROL RELATION PRINCIPLE
# ============================================================

Self-trade control must consider:

- direct identity
- ownership identity
- controlling identity
- payout-beneficiary identity
- beneficial-owner identity

Marketplace must not rely only on
surface user_id comparison.


# ============================================================
# 6. DECISION LAYERS
# ============================================================

Anti-duplicate and anti-self-trade decisions
must support at least three layers.

1. hard block
2. review hold
3. monitoring only

These layers must remain distinct.

Not every suspicious match
should be treated as
hard block automatically.


# ============================================================
# 7. HARD BLOCK PRINCIPLE
# ============================================================

Hard block applies when
same-user or same-controller identity
is architecturally strong enough
to treat the trade as self-trade
or the registration as duplicate identity.

Representative examples include:

- same linked identity principal
- same canonical user principal
- same verified beneficial controller
- same payout beneficiary under strict control policy


# ============================================================
# 8. REVIEW HOLD PRINCIPLE
# ============================================================

Review hold applies when
identity collision is strongly suspected
but not yet certain enough
for irreversible block.

Representative examples include:

- strong account overlap indicators
- same payment instrument token posture where policy allows use
- same address and identity cluster
- same payout destination cluster
- suspicious reciprocal trade pattern
- suspicious circular sale pattern

Review hold preserves anti-abuse control
without assuming certainty too early.


# ============================================================
# 9. MONITORING PRINCIPLE
# ============================================================

Monitoring-only posture applies when
signals are weak,
indirect,
or insufficient on their own.

Representative weak signals may include:

- shared IP only
- shared device family only
- shared region only
- timing similarity only

Weak signals alone
must not become automatic hard block.


# ============================================================
# 10. IDENTITY EVIDENCE FAMILIES
# ============================================================

Representative identity evidence families include:

- external identity principal
- canonical user linkage
- email linkage
- phone linkage
- KYC identity linkage where supported
- payout beneficiary linkage
- payment instrument fingerprint linkage where policy allows
- address linkage
- device fingerprint linkage
- behavioral linkage
- seller beneficial-owner linkage

This document does not define
final evidence weights.

It defines the allowed evidence architecture.


# ============================================================
# 11. BUYER / SELLER CONTEXT RESOLUTION
# ============================================================

Before order acceptance,
Marketplace must be able to resolve
seller-side control context such as:

- seller user
- owner user
- controlling user
- beneficial owner
- payout beneficiary

Only then can anti-self-trade checks
be applied meaningfully.


# ============================================================
# 12. ORDER GATING POSITION
# ============================================================

Anti-self-trade checks must occur
before irreversible purchase progression
into final payment commitment
where possible.

Representative sequence:

resolve buyer identity
-> resolve seller control identity
-> apply hard-block rules
-> apply review-hold rules
-> apply risk scoring
-> allow or hold or block
-> only then continue to payment route


# ============================================================
# 13. REGISTRATION GATING POSITION
# ============================================================

Duplicate-user checks must occur
before final account creation
or before final new-account activation
where policy allows staging.

If a probable duplicate is found,
the system may:

- link to existing account
- block duplicate creation
- place registration into review hold

This depends on certainty posture.


# ============================================================
# 14. COMMON USE PRINCIPLE
# ============================================================

These controls are shared
across Civilization and Marketplace.

They must apply to:

- account registration
- seller context creation where relevant
- listing publication where relevant
- order acceptance
- payout release

This is not only an order-time rule.


# ============================================================
# 15. FINAL RULE
# ============================================================

Civilization anti-duplicate and anti-self-trade architecture must remain:

- identity-aware
- control-aware
- beneficial-owner-aware
- layered in block / review / monitor posture
- shared across account and Marketplace systems
- resistant to simple cashout-abuse patterns
