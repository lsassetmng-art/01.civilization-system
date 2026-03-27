# ============================================================
# CIVILIZATION SECURITIES RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for securities services inside CivilizationOS.

All behavior must be nation-governed and DB-controlled.


# ============================================================
# 1. CORE RUNTIME DOMAINS
# ============================================================

The securities runtime must evaluate:
- institution license validity
- account and customer eligibility
- instrument eligibility
- order legality and execution validity
- clearing and settlement validity
- underwriting and offering validity
- advisory/managed mandate validity
- margin and securities finance validity
- restriction and suspension effects


# ============================================================
# 2. ACCOUNT / ORDER EVALUATION
# ============================================================

Runtime must verify:
- institution exists and is licensed
- account exists and is active
- customer type is eligible
- instrument is allowed
- order type is allowed
- restriction state does not block action

Fail closed on unresolved service or instrument rules.


# ============================================================
# 3. CLEARING / SETTLEMENT EVALUATION
# ============================================================

Runtime must verify:
- execution is valid
- clearing obligation is well formed
- cash leg and securities leg are valid
- settlement timing is lawful
- failure / hold rules are resolved

Fail closed on unresolved settlement rules.


# ============================================================
# 4. OFFERING / UNDERWRITING EVALUATION
# ============================================================

Runtime must verify:
- issue program is lawful
- instrument and offering type are allowed
- underwriting mode is allowed
- subscriber eligibility is satisfied
- allocation rules are satisfied

Fail closed on unresolved offering rules.


# ============================================================
# 5. MARGIN / RESTRICTION EVALUATION
# ============================================================

Runtime must verify:
- margin product is enabled
- initial / maintenance requirements are satisfied
- short sale or securities borrow/lend is lawful
- margin call and liquidation rules are resolved
- restriction state is respected

Fail closed on unresolved securities-finance rules.


# ============================================================
# 6. FINAL RUNTIME RULE
# ============================================================

Civilization securities runtime must be:
- institution-aware
- instrument-aware
- custody-aware
- settlement-aware
- restriction-aware
- DB-controlled
- fail-closed
