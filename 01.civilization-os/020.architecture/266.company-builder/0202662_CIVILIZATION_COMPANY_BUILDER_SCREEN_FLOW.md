# ============================================================
# CIVILIZATION COMPANY BUILDER SCREEN FLOW
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the recommended screen flow
for company builder inside CivilizationOS.


# ============================================================
# 1. PRIMARY SCREEN FLOW
# ============================================================

recommended screen flow:

1. company draft list
2. company draft create
3. company type select
4. identity / legal category screen
5. location / premises screen
6. brand / icon screen
7. type-specific setup screen
8. validation screen
9. approval request screen
10. publication / activation screen


# ============================================================
# 2. TYPE-SPECIFIC FLOWS
# ============================================================

game / software flow:
- upload package
- runtime/origin setting
- release metadata
- publish settings

retail flow:
- supplier contract setup
- portfolio setup
- direct sale / marketplace settings

culture / arts flow:
- PDF/JPEG import
- content type classification
- gallery/exhibition/screening setup
- scout / official contact inbox

investment flow:
- fund setup
- investment scope
- solicitation settings

education flow:
- text/program setup
- age band setting
- education offering setup

religious corporation flow:
- doctrine setup
- recruitment settings
- donation settings
- facility relation


# ============================================================
# 3. FINAL ARCHITECTURAL RULE
# ============================================================

Company builder screen flow must remain:
- staged
- type-specific
- upload-aware
- contract-aware where needed
- validation-centered
