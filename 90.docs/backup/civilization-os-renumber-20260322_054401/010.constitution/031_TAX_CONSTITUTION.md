# ============================================================
# 031 TAX CONSTITUTION
# CivilizationOS Canonical Design
# ============================================================

status: canonical
layer: constitution
component: tax-system

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the official taxation model of CivilizationOS.

This includes:

- Corporate tax (internal)
- Revenue tax (external settlement fee)


# ============================================================
# CORE PRINCIPLES
# ============================================================

- Internal economy and external money are separated
- Taxation must not destabilize currency
- Tax must be predictable and auditable


# ============================================================
# 1. TAX TYPES
# ============================================================

Two types of tax exist:

1. Corporate Tax (internal)
2. Revenue Tax (external)


# ============================================================
# 2. CORPORATE TAX (INTERNAL)
# ============================================================

Corporate tax is applied to companies.

definition:

corporate_tax

characteristics:

- based on activity / nation score
- not based on revenue or profit
- uses non-convertible currency (national currency)


# ------------------------------------------------------------
# 2.1 TAX BASE
# ------------------------------------------------------------

Corporate tax is calculated from:

- nation_score contribution
- company activity level
- system-defined metrics


examples:

- sales activity
- content production
- engagement
- system contribution


# ------------------------------------------------------------
# 2.2 TAX CURRENCY
# ------------------------------------------------------------

Corporate tax is paid in:

- national currency (non-convertible)


rules:

- must be deducted from company treasury
- cannot be converted to real money
- cannot be bypassed


# ------------------------------------------------------------
# 2.3 PURPOSE
# ------------------------------------------------------------

Corporate tax is used for:

- national governance
- incentives
- redistribution
- system balancing


# ============================================================
# 3. REVENUE TAX (SETTLEMENT FEE)
# ============================================================

Revenue tax is applied at payout.

definition:

revenue_tax

characteristics:

- applied to real-money revenue
- deducted during settlement
- functions as platform fee


# ------------------------------------------------------------
# 3.1 TAX BASE
# ------------------------------------------------------------

- monthly gross revenue (JPY)


# ------------------------------------------------------------
# 3.2 TIMING
# ------------------------------------------------------------

- applied during monthly settlement


# ------------------------------------------------------------
# 3.3 CALCULATION
# ------------------------------------------------------------

net_payout = gross_revenue - fee


# ------------------------------------------------------------
# 3.4 PURPOSE
# ------------------------------------------------------------

- platform sustainability
- infrastructure cost
- system operation


# ============================================================
# 4. TAX SEPARATION
# ============================================================

Strict separation is enforced:

- corporate tax (internal)
- revenue tax (external)


rules:

- no mixing of currencies
- no conversion between tax domains
- independent calculation


# ============================================================
# 5. PROHIBITIONS
# ============================================================

The following are forbidden:

- using real money to pay corporate tax
- converting national currency to real money
- bypassing settlement fee
- modifying tax records


# ============================================================
# 6. SUMMARY
# ============================================================

Corporate Tax:

- based on activity / nation score
- internal only
- non-convertible currency


Revenue Tax:

- based on revenue
- applied at payout
- real currency


# ============================================================
# END
# ============================================================

