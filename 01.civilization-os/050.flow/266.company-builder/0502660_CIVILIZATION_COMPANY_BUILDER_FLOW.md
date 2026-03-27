# ============================================================
# CIVILIZATION COMPANY BUILDER FLOW
# ============================================================

status: canonical
layer: 050.flow
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the operational flow of company builder
inside CivilizationOS.


# ============================================================
# 1. PRIMARY FLOW
# ============================================================

company draft creation
-> company type selection
-> common setup
-> type-specific setup
-> validation
-> approval
-> publication
-> activation


# ============================================================
# 2. TYPE-SPECIFIC FLOWS
# ============================================================

development company flow:
- upload package
- runtime/origin config
- release/publish setup

retail company flow:
- supplier/distribution contract setup
- portfolio setup
- storefront readiness

culture/arts company flow:
- content import
- content classification
- publication / exhibition / screening setup
- scout / official contact handling

investment company flow:
- investment scope
- fund setup
- solicitation setup

education company flow:
- text/program setup
- age-band setup
- education offering setup

religious corporation flow:
- doctrine setup
- recruitment baseline
- donation baseline
- facility relation setup


# ============================================================
# 3. REVISION FLOW
# ============================================================

existing company revision draft
-> change proposal
-> validation
-> approval where required
-> publish revision
-> activate revised state


# ============================================================
# 4. FINAL FLOW RULE
# ============================================================

Company builder flow must remain:
- staged
- type-specific
- validation-aware
- approval-aware
- activation-aware
