# ============================================================
# CIVILIZATION RENT COLLECTION RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for rent contract evaluation and rent collection
inside CivilizationOS.

This runtime assumes:
- rent is a Civilization-internal flow
- rent is collected in property nation currency
- ERP is not part of the rent path


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The rent runtime must evaluate:
- whether rent contract is valid
- which currency applies
- whether billing is due
- whether payment satisfies obligation
- whether default or enforcement is triggered


# ============================================================
# 2. RENT CURRENCY RESOLUTION
# ============================================================

Runtime must resolve:
1. property nation
2. nation currency
3. rent currency code

Default result:
rent_currency_code = property_nation_currency_code

Any unresolved currency mapping must fail closed.


# ============================================================
# 3. BILLING EVALUATION
# ============================================================

The runtime must evaluate:
- active rent contract
- current billing cycle
- amount due
- late fee if applicable
- outstanding amount
- collection status


# ============================================================
# 4. PAYMENT EVALUATION
# ============================================================

The runtime must evaluate:
- paid amount
- payment timing
- due status
- late fee application
- partial payment handling
- outstanding balance

Possible outcomes:
- paid
- partially_paid
- overdue
- defaulted
- frozen
- suspended


# ============================================================
# 5. COMPANY RENT EVALUATION
# ============================================================

If tenant or landlord is a Civilization company,
the runtime still remains fully Civilization-internal.

No ERP dependency exists for:
- due calculation
- payment status
- default evaluation
- rent enforcement


# ============================================================
# 6. FAIL-CLOSED RULE
# ============================================================

The runtime must fail closed if:
- rent contract is unresolved
- property nation is unresolved
- rent currency is unresolved
- billing rule is unresolved
- collection rule is contradictory

No permissive fallback is allowed.


# ============================================================
# 7. FINAL RUNTIME RULE
# ============================================================

Civilization rent runtime must be nation-currency-based
and Civilization-internal.

Core summary:

- rent billing is explicit
- rent currency comes from property nation
- ERP is never part of rent runtime
- default handling remains explicit
