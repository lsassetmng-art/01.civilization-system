# ============================================================
# MODEL BOOK
# BIOSPHERE DOMAIN
# ============================================================

status: canonical
system_id: 01
layer: model
domain_id: 121
model_id: 0000
scope: civilization.model.biosphere

owner: Boss
prepared_by: Zero


# PURPOSE

Define biosphere models within CivilizationOS.


# MODEL LIST

121001 biosphere_system
121002 biosphere_layer
121003 biosphere_cycle
121004 biosphere_balance
121005 biosphere_health

121006 ecosystem
121007 ecosystem_type
121008 ecosystem_state
121009 ecosystem_service
121010 ecosystem_resilience

121011 biome
121012 biome_distribution
121013 biome_shift
121014 biome_health
121015 biome_transition

121016 species
121017 species_population
121018 species_distribution
121019 species_extinction_risk
121020 species_recovery

121021 biodiversity
121022 biodiversity_index
121023 biodiversity_loss
121024 biodiversity_restoration
121025 biodiversity_monitoring

121026 food_chain
121027 trophic_level
121028 predator_prey_system
121029 ecological_network
121030 ecological_balance

121031 carbon_cycle
121032 nitrogen_cycle
121033 oxygen_cycle
121034 water_cycle
121035 planetary_cycle

121036 biosphere_climate_interaction
121037 biosphere_ocean_interaction
121038 biosphere_land_interaction
121039 biosphere_atmosphere_interaction
121040 biosphere_human_interaction

121041 conservation_system
121042 protected_area
121043 ecological_restoration
121044 habitat_protection
121045 species_protection

121046 biosphere_monitoring_system
121047 planetary_ecology_model
121048 earth_system_integration
121049 biosphere_risk
121050 biosphere_system_state


# STATES

stable
stressed
declining
recovering
collapsed


# EVENTS

species_extinction
species_recovery
ecosystem_shift
biodiversity_loss
biosphere_crisis


# RELATIONS

biosphere -> climate
biosphere -> ocean
biosphere -> land
biosphere -> civilization
biosphere -> species


# METRICS

biodiversity_index
ecosystem_health
species_population
biosphere_stability
planetary_balance


