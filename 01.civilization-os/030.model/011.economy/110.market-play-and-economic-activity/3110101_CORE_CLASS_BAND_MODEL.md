# ============================================================
# CORE CLASS BAND MODEL
# ============================================================

status: canonical
layer: model
scope: social-class-income-asset-consumption-seed
component: core-class-band

owner: Boss
prepared_by: Zero


# ============================================================
# 1. CLASS BANDS
# ============================================================

class_bands:
- ultra_elite_owner_class
- upper_owner_managerial_class
- upper_middle_professional_class
- stable_middle_class
- lower_middle_precarious_class
- working_class
- unstable_nonregular_class
- poor_fragile_class
- excluded_or_discarded_class


# ============================================================
# 2. INCOME BANDS
# ============================================================

income_bands:
- very_high_income
- high_income
- upper_middle_income
- middle_income
- lower_middle_income
- low_income
- very_low_income
- unstable_income
- no_stable_income


# ============================================================
# 3. ASSET BANDS
# ============================================================

asset_bands:
- dynastic_asset_class
- major_owner_asset_class
- property_holding_class
- modest_asset_class
- low_asset_class
- debt_balanced_class
- debt_burdened_class
- no_asset_class


# ============================================================
# 4. CONSUMPTION BANDS
# ============================================================

consumption_bands:
- luxury_consumption_class
- premium_consumption_class
- stable_mass_consumption_class
- constrained_mass_consumption_class
- survival_consumption_class
- disrupted_consumption_class


# ============================================================
# 5. FINAL RULE
# ============================================================

These bands are directional social structure categories,
not yet hard numeric simulation buckets.
