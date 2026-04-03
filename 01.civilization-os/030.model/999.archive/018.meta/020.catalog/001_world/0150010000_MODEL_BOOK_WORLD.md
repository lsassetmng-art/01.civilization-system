# ============================================================
# MODEL BOOK
# WORLD DOMAIN
# ============================================================

status: canonical
system_id: 01
layer: model
domain_id: 001
model_id: 0000
scope: civilization.model.world

owner: Boss
prepared_by: Zero


# PURPOSE

Define planetary and earth-system models
within CivilizationOS.


# MODEL LIST

0001 planet
0002 continent
0003 ocean
0004 atmosphere
0005 biosphere
0006 climate_system
0007 tectonic_plate
0008 global_ecosystem
0009 polar_region
0010 global_water_cycle
0011 global_temperature
0012 sea_level
0013 climate_zone
0014 ocean_current
0015 atmospheric_circulation
0016 carbon_cycle
0017 nitrogen_cycle
0018 biodiversity
0019 extinction_event
0020 planetary_boundary
0021 global_resource_distribution
0022 mineral_reserve
0023 freshwater_reserve
0024 arable_land
0025 global_energy_flow
0026 solar_radiation
0027 geomagnetic_field
0028 planetary_orbit
0029 earth_rotation
0030 earth_system_state


# STATES

stable
warming
cooling
resource_stress
ecological_stress
boundary_pressure
recovery
crisis


# EVENTS

climate_shift
volcanic_event
sea_level_rise
resource_discovery
resource_depletion
extinction_event
ecosystem_collapse
global_recovery


# RELATIONS

world -> region
world -> climate
world -> environment
world -> resources
world -> energy


# METRICS

global_temperature_index
biosphere_health
resource_abundance
water_security
ecological_stability

