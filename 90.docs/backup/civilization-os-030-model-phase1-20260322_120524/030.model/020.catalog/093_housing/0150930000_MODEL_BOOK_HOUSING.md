# ============================================================
# MODEL BOOK
# HOUSING DOMAIN
# ============================================================

status: canonical
system_id: 01
layer: model
domain_id: 093
model_id: 0000
scope: civilization.model.housing

owner: Boss
prepared_by: Zero


# MODEL LIST

093001 housing_unit
093002 residential_building
093003 housing_developer
093004 housing_market
093005 housing_price_index
093006 housing_finance
093007 mortgage_contract
093008 housing_policy
093009 housing_regulation
093010 housing_supply
093011 housing_demand
093012 housing_project
093013 housing_infrastructure
093014 housing_subsidy
093015 housing_program
093016 housing_statistics
093017 housing_data
093018 housing_monitoring
093019 housing_agency
093020 housing_strategy
093021 housing_reform
093022 housing_tenancy
093023 housing_land
093024 housing_management
093025 housing_system_state


# STATES

available
occupied
vacant
under_construction


# EVENTS

construction_start
construction_completion
purchase
rent


# RELATIONS

housing -> real_estate
housing -> urban
housing -> finance


# METRICS

housing_price_index
housing_supply_rate
housing_affordability

