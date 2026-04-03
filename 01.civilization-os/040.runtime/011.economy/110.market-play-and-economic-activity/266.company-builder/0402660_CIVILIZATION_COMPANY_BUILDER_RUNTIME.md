# ============================================================
# CIVILIZATION COMPANY BUILDER RUNTIME
# ============================================================

status: canonical
layer: 040.runtime
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define runtime for company builder
inside CivilizationOS.


# ============================================================
# 1. RUNTIME ROLE
# ============================================================

The runtime must evaluate:
- draft completeness
- company type eligibility
- user-create/system-only constraints
- legal category validity
- type-specific setup completeness
- upload/profile/contract completeness where required
- approval readiness
- publication readiness
- activation readiness


# ============================================================
# 2. TYPE ELIGIBILITY RULE
# ============================================================

Runtime must fail closed if:
- company type template is unresolved
- user_create_enabled is false for user-created draft
- system_only_flag blocks the requested creation path


# ============================================================
# 3. TYPE-SPECIFIC COMPLETENESS RULE
# ============================================================

Runtime must verify required type-specific setup.

Examples:
- game_company requires game upload/release configuration
- software_company requires app upload/runtime configuration
- retail_company requires contract/portfolio setup
- culture_arts_company requires content import or content profile
- investment_company requires fund/portfolio setup
- education_company requires text/program/age-band setup
- religious_corporation requires doctrine/recruitment baseline

Fail closed on unresolved required setup.


# ============================================================
# 4. SCOUT / ADOPTION RULE
# ============================================================

For culture/arts companies,
runtime must distinguish:
- content existence
- scout status
- offer status
- adoption status
- story integration status

These must not collapse into one status.


# ============================================================
# 5. FINAL RUNTIME RULE
# ============================================================

Company builder runtime must be:
- template-aware
- type-aware
- setup-aware
- scout/adoption-aware where relevant
- fail-closed
