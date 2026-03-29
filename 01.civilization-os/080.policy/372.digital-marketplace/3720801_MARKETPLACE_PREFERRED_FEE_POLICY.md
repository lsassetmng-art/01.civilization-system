# ============================================================
# MARKETPLACE PREFERRED FEE POLICY
# ============================================================

status: canonical
layer: policy
scope: digital-marketplace
component: marketplace-preferred-fee-policy

owner: Boss
prepared_by: Zero


# POLICY

Marketplace fee is 30% by default.

Marketplace fee becomes 20%
only when all of the following are true:

- seller verification is complete
- no major violation exists in the last 90 days
- refund rate in the last 90 days is below 5%


# OPERATIONAL RULE

The judgment window
must be the most recent rolling 90 days.

If any condition fails,
the seller fee returns to 30%.


# EXPLANATION RULE

The preferred fee rule
must be user-explainable in simple terms.


# BOUNDARY

This policy governs Civilization Marketplace.

It does not govern
StreamingOS live-event fee rules.
