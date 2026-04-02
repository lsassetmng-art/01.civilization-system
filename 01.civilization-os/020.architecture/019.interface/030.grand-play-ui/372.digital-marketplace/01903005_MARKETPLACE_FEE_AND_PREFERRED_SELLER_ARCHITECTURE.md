# ============================================================
# MARKETPLACE FEE AND PREFERRED SELLER ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
scope: digital-marketplace
component: marketplace-fee-and-preferred-seller

owner: Boss
prepared_by: Zero


# PURPOSE

Define the canonical fee architecture
for Civilization Marketplace
including:

- default platform fee
- preferred seller fee
- eligibility evaluation
- reversion handling


# DEFAULT RULE

Civilization Marketplace
uses a default platform fee of 30%.


# PREFERRED RULE

Civilization Marketplace
uses a reduced platform fee of 20%
for sellers that satisfy the preferred seller rule.


# ELIGIBILITY PRINCIPLE

Preferred seller status
must be simple,
explainable,
and auditable.

Eligibility is based only on
the following three conditions:

- seller verification complete
- no major policy violation in the last 90 days
- refund rate in the last 90 days below 5%


# EVALUATION WINDOW

Eligibility must be evaluated
against the most recent rolling 90-day window.


# REVERSION PRINCIPLE

Preferred seller status
must be removed immediately
when any eligibility condition is no longer satisfied.


# BOUNDARY

This fee rule applies to
Civilization Marketplace sale surfaces.

This rule does not define
StreamingOS live-event fee rules.


# FINAL RULE

Marketplace fee
must be 30% by default
and 20% only under the explicit preferred seller rule.
