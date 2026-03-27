# ============================================================
# CIVILIZATION ENTERPRISE FINANCE RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for enterprise finance
inside CivilizationOS.

All behavior must be nation-governed and DB-controlled.


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The enterprise finance runtime must evaluate:
- company eligibility
- enterprise credit profile
- loan product eligibility
- guarantee validity
- collateral eligibility
- currency validity
- repayment capacity
- default and recovery triggers


# ============================================================
# 2. COMPANY ELIGIBILITY EVALUATION
# ============================================================

Runtime must verify:
- company exists
- company standing is valid
- registered premises standing where required
- operating premises standing where required
- industry scope is eligible
- nation rule allows the requested product

Fail closed if mandatory rule is unresolved.


# ============================================================
# 3. CREDIT / CASHFLOW EVALUATION
# ============================================================

Runtime must evaluate:
- revenue stability
- cashflow stability
- leverage
- profitability
- asset strength
- guarantee strength
- collateral strength

Possible results:
- eligible
- eligible_with_conditions
- restricted
- prohibited
- unresolved_policy


# ============================================================
# 4. COLLATERAL / GUARANTEE EVALUATION
# ============================================================

Runtime must evaluate:
- whether collateral type is allowed
- whether collateral right is financeable
- collateral haircut / eligible value
- guarantee mode validity
- guarantor standing where relevant

Fail closed on missing collateral or guarantee rules.


# ============================================================
# 5. CURRENCY / CONTRACT EVALUATION
# ============================================================

Runtime must evaluate:
- permitted loan currency
- repayment currency
- term validity
- interest rule validity
- contract lawfulness under nation rule

Fail closed on unresolved currency or repayment rule.


# ============================================================
# 6. DEFAULT / RECOVERY EVALUATION
# ============================================================

Runtime must evaluate:
- overdue threshold
- covenant breach trigger
- restructuring allowance
- guarantee call conditions
- collateral enforcement conditions
- auction linkage where applicable

Fail closed on unresolved enforcement rule.


# ============================================================
# 7. FINAL RUNTIME RULE
# ============================================================

Civilization enterprise finance runtime must be:
- company-aware
- nation-currency-aware
- collateral-aware
- guarantee-aware
- DB-controlled
- fail-closed
