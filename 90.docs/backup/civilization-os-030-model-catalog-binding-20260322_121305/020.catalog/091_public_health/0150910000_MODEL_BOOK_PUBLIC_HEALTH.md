# ============================================================
# MODEL BOOK
# PUBLIC HEALTH DOMAIN
# ============================================================

status: canonical
system_id: 01
layer: model
domain_id: 091
model_id: 0000
scope: civilization.model.public_health

owner: Boss
prepared_by: Zero


# MODEL LIST

091001 public_health_system
091002 public_health_agency
091003 disease_registry
091004 disease_surveillance
091005 epidemic_event
091006 vaccination_program
091007 health_campaign
091008 public_health_policy
091009 public_health_regulation
091010 quarantine_measure
091011 epidemiology_research
091012 population_health_index
091013 sanitation_system
091014 environmental_health
091015 health_data
091016 health_statistics
091017 health_alert
091018 outbreak_response
091019 health_infrastructure
091020 health_program
091021 health_monitoring
091022 health_network
091023 health_risk
091024 health_strategy
091025 public_health_state


# STATES

normal
alert
outbreak
controlled
recovery


# EVENTS

outbreak_detected
pandemic_declared
vaccination_campaign


# RELATIONS

public_health -> healthcare
public_health -> government
public_health -> population


# METRICS

infection_rate
vaccination_rate
mortality_rate

