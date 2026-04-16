# ============================================================
# PRODUCT PORTFOLIO MANAGER IMPLEMENTATION PHASE OPENING NOTE
# ============================================================

status: canonical
layer: meta
application: ProductPortfolioManager
owner: Boss
prepared_by: Zero

purpose:
Opens the implementation phase for ProductPortfolioManager
as a distinct phase after design completion
and implementation-preparation completion.

phase_rule:
This note opens implementation as a phase concept.
It does not itself contain code,
DDL execution,
or API execution.

# ============================================================
# 1. ENTRY POSITION
# ============================================================

entry_position:
- design phase: broadly closed
- implementation preparation: complete in principle
- implementation phase: may now be opened explicitly

# ============================================================
# 2. FIRST IMPLEMENTATION TARGET
# ============================================================

first_implementation_target:
- portfolio list
- product detail
- score refresh
- classification draft save
- proposal save

reason:
This is the smallest useful product judgment loop
already fixed by design.

# ============================================================
# 3. FIRST DOCUMENTS TO READ
# ============================================================

first_documents_to_read:
1. 000_PRODUCT_PORTFOLIO_MANAGER_OVERVIEW.md
2. 050.flow/0500006_PRODUCT_PORTFOLIO_MANAGER_EXACT_FLOW_PAYLOADS.md
3. 030.model/0300007_PRODUCT_PORTFOLIO_MANAGER_EXACT_TABLES_AND_ENUMS.md
4. 120.implementation/1200004_PRODUCT_PORTFOLIO_MANAGER_API_CONTRACT_EXACT.md
5. 120.implementation/1200005_PRODUCT_PORTFOLIO_MANAGER_SCREEN_TO_API_MAPPING.md
6. 100.security/1000002_PRODUCT_PORTFOLIO_MANAGER_AUTHORIZATION_FORMAL_DESIGN.md
7. 060.integration/0600003_PRODUCT_PORTFOLIO_MANAGER_ERP_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md
8. 060.integration/0600004_PRODUCT_PORTFOLIO_MANAGER_FORECAST_BOUNDARY_INTEGRATION_FORMAL_DESIGN.md

# ============================================================
# 4. SAFE IMPLEMENTATION RULES
# ============================================================

safe_implementation_rules:
- begin from exact documents, not broad summaries
- do not collapse ERP fact meaning into application judgment meaning
- do not collapse forecast advisory meaning into final decision meaning
- do not collapse lifecycle and classification into one field
- do not collapse review and approval into one workflow step
- do not treat proposal completion as ERP execution truth
- keep implementation within first target scope first

# ============================================================
# 5. OUT OF SCOPE FOR FIRST IMPLEMENTATION OPENING
# ============================================================

out_of_scope_for_first_opening:
- broad reflection actual application to external canonicals
- wording compression
- later-phase secondary screens
- full approval queue execution
- full audit console execution
- full notification routing execution

# ============================================================
# 6. PHASE OPENING DECLARATION
# ============================================================

phase_opening_declaration:
ProductPortfolioManager may now enter
implementation phase 1
for the first useful judgment loop only.

# ============================================================
# 7. FORMAL CONCLUSION
# ============================================================

formal_conclusion:
Implementation phase opening is now document-ready.
Actual coding should begin only from the exact contracts and first target scope.
