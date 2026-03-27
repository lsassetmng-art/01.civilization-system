# ============================================================
# CIVILIZATION ENTERPRISE FINANCE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official enterprise finance architecture
inside CivilizationOS.

This architecture covers:
- company lending
- working capital lending
- equipment/facility lending
- real-estate-backed enterprise lending
- guarantee-backed lending
- enterprise credit evaluation
- enterprise default and recovery

This architecture explicitly assumes:
- Civilization companies are internal to Civilization
- Civilization companies do not use ERP
- ERP is for real-world companies only
- finance behavior is nation-governed and DB-controlled


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Enterprise finance must be modeled separately from:
- personal housing finance
- property transaction finance
- rent collection

Enterprise lending should evaluate:
- company existence and standing
- company business profile
- revenue and cashflow stability
- liabilities and leverage
- collateral eligibility
- guarantee strength
- nation-specific finance rules

Core principle:

enterprise lending is a business-credit flow
and may optionally include real-estate collateral,
but is not identical to mortgage lending


# ============================================================
# 2. ENTERPRISE LOAN DOMAINS
# ============================================================

Minimum domains:
- working_capital_loan
- equipment_loan
- facility_loan
- real_estate_backed_enterprise_loan
- bridge_loan
- trade_support_loan
- emergency_relief_loan
- state_supported_enterprise_loan

These are common product structures.
Availability and conditions are nation-governed.


# ============================================================
# 3. LOAN CURRENCY RULE
# ============================================================

Enterprise lending must be denominated
in the applicable nation currency domain.

Default principle:
- company lending is issued in the nation currency
  of the lending/legal finance domain
- property-backed enterprise lending may additionally
  require consistency with property nation currency
  if nation rules require it

This must be resolved by DB-controlled nation finance policy.


# ============================================================
# 4. SCREENING DIMENSIONS
# ============================================================

Enterprise finance screening should consider at minimum:
- company legal standing
- company registered premises standing where relevant
- operating premises standing where relevant
- revenue profile
- profit or surplus profile
- cashflow stability
- debt burden
- guarantee structure
- collateral structure
- industry risk
- nation policy restrictions
- strategic sector restrictions where applicable

These dimensions are common.
Weights and thresholds are nation-governed.


# ============================================================
# 5. GUARANTEE / SUPPORT MODES
# ============================================================

Enterprise loans may use:
- unsecured business credit
- collateral-backed credit
- personal guarantee
- company guarantee
- state-backed guarantee
- guild/association guarantee
- hybrid guarantee

All allowed guarantee modes must be DB-controlled by nation.


# ============================================================
# 6. REAL ESTATE COLLATERAL RELATION
# ============================================================

Enterprise lending may be backed by:
- owned commercial property
- leased property rights where lawful
- industrial sites
- warehouses
- development land where lawful
- mixed collateral portfolios

Whether a right_type is financeable as collateral
must be DB-controlled by nation property finance rules.


# ============================================================
# 7. DEFAULT AND RECOVERY
# ============================================================

Enterprise default may lead to:
- restructuring
- guarantee call
- collateral enforcement
- seizure
- auction
- operating restriction
- liquidation process

These consequences must be nation-governed and DB-controlled.


# ============================================================
# 8. ERP NON-RELATION RULE
# ============================================================

Civilization enterprise finance is internal to Civilization.

No ERP dependency exists for:
- company credit screening
- enterprise loan issuance
- enterprise collateral registration
- enterprise default handling
- enterprise recovery flow


# ============================================================
# 9. FINAL ARCHITECTURAL RULE
# ============================================================

Enterprise finance inside CivilizationOS must be:
- company-aware
- nation-currency-aware
- DB-controlled
- collateral-aware where applicable
- ERP-independent

Core summary:

- enterprise lending is distinct from personal mortgage lending
- enterprise lending may use real-estate collateral
- lending legality and thresholds are nation-governed
- Civilization companies remain fully inside Civilization
