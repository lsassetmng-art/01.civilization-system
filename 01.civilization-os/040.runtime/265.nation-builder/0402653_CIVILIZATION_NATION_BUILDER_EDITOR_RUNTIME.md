# ============================================================
# CIVILIZATION NATION BUILDER EDITOR RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for zoning editor and market tier editor
inside CivilizationOS nation builder.


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The runtime must evaluate:
- draft zoning edit validity
- draft market-tier edit validity
- rule completeness
- contradiction across draft rules
- publish-readiness of edited zoning/listing style state


# ============================================================
# 2. ZONING EDITOR RULE
# ============================================================

The runtime must fail closed if:
- zone definition is incomplete
- company/site/store allowance is unresolved
- restriction rules are unresolved
- region/district assignment is unresolved


# ============================================================
# 3. MARKET TIER EDITOR RULE
# ============================================================

The runtime must fail closed if:
- listing style is unresolved
- market tier rank/order is unresolved
- threshold rules are incomplete
- company-type eligibility is unresolved


# ============================================================
# 4. FINAL RUNTIME RULE
# ============================================================

Nation builder editor runtime must be:
- zoning-aware
- market-tier-aware
- contradiction-aware
- publish-readiness-aware
- fail-closed
