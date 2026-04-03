# ============================================================
# CIVILIZATION BANKING RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for banking services inside CivilizationOS.

All behavior must be nation-governed and DB-controlled.


# ============================================================
# 1. CORE RUNTIME DOMAINS
# ============================================================

The banking runtime must evaluate:
- institution license validity
- account eligibility and currency validity
- payment and transfer legality
- lending and guarantee legality
- FX legality and rate application
- investment product eligibility
- card authorization and settlement
- freeze / risk / AML-equivalent controls
- resolution / deposit protection applicability


# ============================================================
# 2. ACCOUNT / PAYMENT EVALUATION
# ============================================================

Runtime must verify:
- institution exists and is licensed
- account exists and is active
- customer is eligible
- currency is allowed
- payment type is allowed
- freeze/hold status does not block action

Fail closed on missing service or currency rules.


# ============================================================
# 3. LENDING / CREDIT EVALUATION
# ============================================================

Runtime must verify:
- product exists
- borrower type is eligible
- guarantee mode is allowed
- collateral is allowed where required
- personal or enterprise credit profile is sufficient
- nation ratios and thresholds are satisfied

Fail closed on missing product or screening rules.


# ============================================================
# 4. FX / INVESTMENT / CARD EVALUATION
# ============================================================

Runtime must verify:
- FX pair is allowed
- product holder is eligible
- card instrument is active
- auth rule is satisfied
- settlement is lawful under nation rules

Fail closed on unresolved conversion or product rules.


# ============================================================
# 5. RISK / FREEZE / RESOLUTION EVALUATION
# ============================================================

Runtime must verify:
- risk trigger validity
- freeze authority validity
- review requirement
- deposit protection applicability
- resolution path legality

Fail closed on unresolved risk or protection rules.


# ============================================================
# 6. FINAL RUNTIME RULE
# ============================================================

Civilization banking runtime must be:
- institution-aware
- nation-currency-aware
- product-aware
- risk-aware
- DB-controlled
- fail-closed
