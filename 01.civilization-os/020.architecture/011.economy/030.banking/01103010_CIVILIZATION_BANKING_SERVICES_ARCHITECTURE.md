# ============================================================
# CIVILIZATION BANKING SERVICES ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official banking services architecture
inside CivilizationOS.

This architecture covers:
- bank identity and licensing
- deposit accounts
- custody/value storage
- payments and transfers
- personal and enterprise lending
- guarantees and credit support
- foreign exchange and currency conversion
- investment and managed products
- cards and payment instruments
- fraud/freeze/AML-equivalent controls
- resolution, deposit protection, and enforcement

This architecture explicitly assumes:
- Civilization banking is internal to Civilization
- national currencies are first-class
- all behavior is nation-governed and DB-controlled
- ERP is not part of Civilization banking


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Banking services must be modeled as common structures
with nation-specific DB-controlled behavior.

The system must define common service classes,
while each nation controls:
- which services exist
- which actors may access them
- currency scope
- limits
- rates and fees
- risk controls
- guarantee rules
- default and enforcement behavior

Core principle:

service structure is common
banking legality and parameters are nation-specific


# ============================================================
# 2. BANKING SERVICE DOMAINS
# ============================================================

Minimum banking domains:
- bank and license
- deposit and custody
- account and ledger
- payment and transfer
- lending and credit
- guarantee and surety
- foreign exchange
- investment and wealth products
- cards and payment instruments
- fraud/risk/freeze controls
- bank failure / deposit protection / resolution

These domains are all in-scope.


# ============================================================
# 3. CUSTOMER DOMAINS
# ============================================================

Banking services may serve:
- persona / individual
- civilization company
- nation or state actor
- public trust / association where lawful

All eligibility must be DB-controlled by nation.


# ============================================================
# 4. CURRENCY PRINCIPLE
# ============================================================

Banking is nation-currency-aware.

Default principles:
- domestic deposit accounts are denominated in nation currency
- domestic lending is denominated in nation currency unless nation rules allow otherwise
- rent, tax, and many real-economy obligations remain nation-currency-based
- cross-border services require explicit nation FX rules

Multi-currency behavior must be explicit and DB-controlled.


# ============================================================
# 5. BANK TYPES
# ============================================================

Minimum bank/service institution types:
- retail_bank
- commercial_bank
- development_bank
- state_bank
- merchant_bank
- mortgage_bank
- cooperative_bank
- digital_bank
- custody_bank
- exchange_bank

A nation may enable only a subset.


# ============================================================
# 6. SERVICE FAMILIES
# ============================================================

Minimum service families:
- deposit_account
- savings_account
- current_account
- settlement_account
- escrow_account
- loan_product
- mortgage_product
- enterprise_loan_product
- guarantee_product
- card_product
- remittance_product
- fx_product
- investment_product
- custody_product
- deposit_protection_product

All product availability is nation-governed.


# ============================================================
# 7. ERP NON-RELATION RULE
# ============================================================

Civilization banking is internal to Civilization.

No ERP dependency exists for:
- deposit accounts
- domestic transfers
- domestic loans
- enterprise loans to Civilization companies
- rent, tax, or property-related payment handling
- bank guarantee issuance
- nation-currency credit creation

ERP is out of scope.


# ============================================================
# 8. FINAL ARCHITECTURAL RULE
# ============================================================

Civilization banking services must be:
- internal to Civilization
- nation-currency-aware
- product-structured
- customer-typed
- DB-controlled
- fail-closed on unresolved rule chains
