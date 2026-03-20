# ============================================================
# 032 REVENUE AND SETTLEMENT CONSTITUTION
# CivilizationOS Canonical Design
# ============================================================

status: canonical
layer: constitution
component: revenue-settlement

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the official model for:

- Revenue generation
- Revenue recording
- National score impact
- Monthly settlement to creators


# ============================================================
# CORE PRINCIPLES
# ============================================================

Revenue is:

- recorded immediately
- settled later

Money flow is separated from system state.


# ============================================================
# 1. PURCHASE MODEL
# ============================================================

Users purchase using real-world currency.

examples:

- Google Play Billing
- External payment
- Other approved payment providers


definition:

purchase_event

- user pays real currency
- system receives payment event


# ============================================================
# 2. REVENUE LEDGER
# ============================================================

All purchases are recorded in Revenue Ledger.

definition:

revenue_ledger

fields:

- transaction_id
- company_id
- product_id
- amount
- currency (JPY)
- created_at


rules:

- immutable
- append-only
- no direct modification


# ============================================================
# 3. COMPANY REVENUE
# ============================================================

Revenue Ledger contributes to company revenue.

definition:

company_revenue

- calculated from ledger
- used for ranking
- used for analytics


# ============================================================
# 4. NATIONAL SCORE IMPACT
# ============================================================

Company revenue impacts national score.

rules:

- revenue increases national score
- no direct currency conversion
- score is derived, not transferred


definition:

nation_score

- aggregate of company performance
- non-monetary indicator


# ============================================================
# 5. MONTHLY SETTLEMENT
# ============================================================

Revenue is settled monthly.

flow:

1. accumulate revenue ledger
2. apply platform fee
3. finalize settlement amount
4. pay creator


definition:

settlement

fields:

- company_id
- period (YYYY-MM)
- gross_revenue
- fee
- net_payout
- status


# ============================================================
# 6. PAYOUT MODEL
# ============================================================

System pays creators externally.

methods:

- bank transfer
- approved payment service (e.g. PayPay business)


rules:

- no instant payout
- only monthly settlement
- audit required


# ============================================================
# 7. TAX MODEL
# ============================================================

Two types of tax exist:

1. internal corporate tax
2. external settlement fee


rules:

- corporate tax is applied in system currency
- settlement fee is applied at payout


# ============================================================
# 8. CURRENCY SEPARATION
# ============================================================

Strict separation of currencies:

- real currency (JPY)
- CIV_CASH
- national currency


rules:

- no conversion between them
- revenue uses real currency only
- national currency is policy-only


# ============================================================
# 9. PROHIBITIONS
# ============================================================

The following are forbidden:

- direct conversion: national currency → real money
- instant creator payout
- ledger modification
- bypassing settlement


# ============================================================
# 10. SUMMARY
# ============================================================

Revenue flow:

purchase (real money)
↓
revenue ledger (record)
↓
company revenue
↓
national score
↓
monthly settlement
↓
creator payout


# ============================================================
# END
# ============================================================

