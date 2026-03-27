# ============================================================
# CIVILIZATION SECURITIES ACCOUNT TRADING ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define account, custody, order, execution,
and settlement architecture for securities services
inside CivilizationOS.


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Securities trading must distinguish:
- customer brokerage account
- custody or position account
- cash settlement account
- order instruction
- execution record
- clearing obligation
- settlement completion

These must not collapse into one object.


# ============================================================
# 2. ACCOUNT TYPES
# ============================================================

Minimum account types:
- brokerage_account
- custody_account
- margin_account where lawful
- advisory_account
- managed_account where lawful
- settlement_cash_account
- nominee_account where lawful

Availability is nation-governed and DB-controlled.


# ============================================================
# 3. ORDER / EXECUTION TYPES
# ============================================================

Minimum order classes:
- market_order
- limit_order
- stop_order where lawful
- auction_order where lawful
- subscription_order
- redemption_order
- tender_order where lawful

Execution behavior is venue/rule aware
and nation-governed.


# ============================================================
# 4. SETTLEMENT PRINCIPLE
# ============================================================

Settlement must distinguish:
- trade date
- settlement date
- cash leg
- securities leg
- failed settlement
- buy-in / repair where lawful

Settlement and clearing obligations must be explicit.


# ============================================================
# 5. FINAL ARCHITECTURAL RULE
# ============================================================

Securities account and trading architecture must remain:
- account-distinct
- order-distinct
- execution-distinct
- settlement-distinct
- DB-controlled
