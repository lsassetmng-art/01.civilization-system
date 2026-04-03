# ============================================================
# MAJOR NATION HOUSEHOLD BURDEN POSTURE MODEL
# ============================================================

status: canonical
layer: model
scope: household-economy-and-cost-burden-seed
component: major-nation-household-burden-posture

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HELIOS
# ============================================================

tax_burden_tendency:
- medium

rent_burden_tendency:
- medium

ownership_housing_burden_tendency:
- medium

food_cost_burden_tendency:
- medium

transport_cost_burden_tendency:
- medium

education_cost_burden_tendency:
- medium

medical_cost_burden_tendency:
- high

childcare_cost_burden_tendency:
- medium

eldercare_cost_burden_tendency:
- high

disability_support_cost_burden_tendency:
- high

household_savings_difficulty_tendency:
- high

debt_dependency_tendency:
- medium

family_formation_cost_pressure_tendency:
- high

urban_cost_gap_tendency:
- high

notes:
- weak welfare and weak support for vulnerable households raise effective private burden
- upper households absorb costs through inheritance and assets
- outer households face structurally harsher living conditions


# ============================================================
# 2. NOVA
# ============================================================

tax_burden_tendency:
- medium

rent_burden_tendency:
- very_high

ownership_housing_burden_tendency:
- very_high

food_cost_burden_tendency:
- medium

transport_cost_burden_tendency:
- medium

education_cost_burden_tendency:
- high

medical_cost_burden_tendency:
- medium

childcare_cost_burden_tendency:
- high

eldercare_cost_burden_tendency:
- high

disability_support_cost_burden_tendency:
- medium

household_savings_difficulty_tendency:
- high

debt_dependency_tendency:
- high

family_formation_cost_pressure_tendency:
- very_high

urban_cost_gap_tendency:
- very_high

notes:
- city cost is the dominant burden
- high earners can absorb costs rapidly, but ordinary urban households face strong pressure
- premium services and premium districts amplify class difference


# ============================================================
# 3. SEIWA
# ============================================================

tax_burden_tendency:
- medium

rent_burden_tendency:
- medium

ownership_housing_burden_tendency:
- medium

food_cost_burden_tendency:
- low

transport_cost_burden_tendency:
- low

education_cost_burden_tendency:
- low

medical_cost_burden_tendency:
- low

childcare_cost_burden_tendency:
- low

eldercare_cost_burden_tendency:
- medium

disability_support_cost_burden_tendency:
- medium

household_savings_difficulty_tendency:
- low

debt_dependency_tendency:
- low

family_formation_cost_pressure_tendency:
- low

urban_cost_gap_tendency:
- medium

notes:
- structured public systems keep household burden comparatively moderate
- stable work and orderly institutions support gradual savings and family formation


# ============================================================
# 4. GLADIA
# ============================================================

tax_burden_tendency:
- medium

rent_burden_tendency:
- low

ownership_housing_burden_tendency:
- medium

food_cost_burden_tendency:
- medium

transport_cost_burden_tendency:
- medium

education_cost_burden_tendency:
- medium

medical_cost_burden_tendency:
- low

childcare_cost_burden_tendency:
- low

eldercare_cost_burden_tendency:
- medium

disability_support_cost_burden_tendency:
- medium

household_savings_difficulty_tendency:
- medium

debt_dependency_tendency:
- low

family_formation_cost_pressure_tendency:
- medium

urban_cost_gap_tendency:
- medium

notes:
- service-linked support offsets some household burden
- compulsory service support, employer seat protection, and injury support reduce specific household shocks


# ============================================================
# 5. ORPHEUS
# ============================================================

tax_burden_tendency:
- low

rent_burden_tendency:
- low

ownership_housing_burden_tendency:
- low

food_cost_burden_tendency:
- low

transport_cost_burden_tendency:
- high

education_cost_burden_tendency:
- medium

medical_cost_burden_tendency:
- medium

childcare_cost_burden_tendency:
- low

eldercare_cost_burden_tendency:
- low

disability_support_cost_burden_tendency:
- medium

household_savings_difficulty_tendency:
- medium

debt_dependency_tendency:
- low

family_formation_cost_pressure_tendency:
- low

urban_cost_gap_tendency:
- low

notes:
- kinship and household sharing reduce some direct market burdens
- island logistics and sea transport raise movement cost
- non-regular work weakens stable savings capacity


# ============================================================
# 6. AURELIA
# ============================================================

tax_burden_tendency:
- low

rent_burden_tendency:
- medium

ownership_housing_burden_tendency:
- high

food_cost_burden_tendency:
- high

transport_cost_burden_tendency:
- medium

education_cost_burden_tendency:
- medium

medical_cost_burden_tendency:
- high

childcare_cost_burden_tendency:
- medium

eldercare_cost_burden_tendency:
- medium

disability_support_cost_burden_tendency:
- medium

household_savings_difficulty_tendency:
- very_high

debt_dependency_tendency:
- high

family_formation_cost_pressure_tendency:
- high

urban_cost_gap_tendency:
- medium

notes:
- unstable work and reconstruction conditions make effective household burden severe
- low formal burden does not imply easy life because income continuity is weak


# ============================================================
# 7. FREE CITIES UNION
# ============================================================

tax_burden_tendency:
- medium

rent_burden_tendency:
- medium

ownership_housing_burden_tendency:
- medium

food_cost_burden_tendency:
- medium

transport_cost_burden_tendency:
- medium

education_cost_burden_tendency:
- medium

medical_cost_burden_tendency:
- medium

childcare_cost_burden_tendency:
- medium

eldercare_cost_burden_tendency:
- medium

disability_support_cost_burden_tendency:
- medium

household_savings_difficulty_tendency:
- medium

debt_dependency_tendency:
- medium

family_formation_cost_pressure_tendency:
- medium

urban_cost_gap_tendency:
- high

notes:
- city-specific rules dominate burden differences
- some cities resemble Seiwa-style moderation, some resemble Nova-style market pressure,
  and some rely on family or community buffering


# ============================================================
# 8. FINAL RULE
# ============================================================

These posture values are directional seeds
for later numeric household simulation and balancing.
