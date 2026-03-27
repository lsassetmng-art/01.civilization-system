# ============================================================
# CIVILIZATION BANKING FX INVESTMENT CARD RESOLUTION ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define architecture for:
- FX / exchange
- investment / wealth / custody
- card / payment instrument services
- fraud/freeze controls
- bank resolution / deposit protection

inside CivilizationOS.


# ============================================================
# 1. FX PRINCIPLE
# ============================================================

FX must be explicit, not implicit.

The system must distinguish:
- rate source
- quoted rate
- applied rate
- spread / fee
- settlement currency
- cross-border restriction

All FX behavior is nation-governed and DB-controlled.


# ============================================================
# 2. INVESTMENT PRINCIPLE
# ============================================================

Investment and custody services must distinguish:
- deposit products
- investment products
- custody holdings
- managed portfolios
- capital-protected products where lawful
- market-risk products
- state-backed products where lawful


# ============================================================
# 3. CARD / INSTRUMENT PRINCIPLE
# ============================================================

Payment instruments must distinguish:
- debit_card
- credit_card
- charge_card
- prepaid_card
- merchant_terminal_instrument
- virtual_payment_token where lawful

Limits, networks, settlement windows, and fraud rules are nation-governed.


# ============================================================
# 4. RESOLUTION PRINCIPLE
# ============================================================

Bank failure handling must distinguish:
- ordinary solvency state
- watchlist state
- distress state
- resolution state
- liquidation state

Deposit protection / guarantee behavior must be explicit and nation-governed.


# ============================================================
# 5. FINAL ARCHITECTURAL RULE
# ============================================================

FX, investment, cards, and resolution must be:
- explicit
- product-distinct
- risk-aware
- DB-controlled
