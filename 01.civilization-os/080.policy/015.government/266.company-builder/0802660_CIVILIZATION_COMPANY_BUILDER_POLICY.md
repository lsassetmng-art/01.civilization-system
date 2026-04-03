# ============================================================
# CIVILIZATION COMPANY BUILDER POLICY
# ============================================================

status: canonical
layer: 080.policy
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define policy for company builder
inside CivilizationOS.


# ============================================================
# 1. CORE POLICY
# ============================================================

Company builder must not mutate active company truth directly
without staged validation and publication.

This is mandatory.


# ============================================================
# 2. TEMPLATE POLICY
# ============================================================

Company type template is the source of truth
for user-creatable vs system-limited types.

This must remain DB-controlled.


# ============================================================
# 3. TYPE-SPECIFIC POLICY
# ============================================================

Required type-specific setup must not be bypassed.

Missing required upload, portfolio, contract, or profile setup
must fail closed.


# ============================================================
# 4. SCOUT / ADOPTION POLICY
# ============================================================

For culture/arts companies,
scout, contact, offer, adoption, and story integration
must remain explicit and auditable.


# ============================================================
# 5. FINAL POLICY RULE
# ============================================================

Company builder policy must be:
- staged
- template-aware
- type-aware
- auditable
- fail-closed
