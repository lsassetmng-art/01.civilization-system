# ============================================================
# MODEL BOOK
# GLOBAL TRADE SYSTEM DOMAIN
# ============================================================

status: canonical
system_id: 01
layer: model
domain_id: 119
model_id: 0000
scope: civilization.model.global_trade_system

owner: Boss
prepared_by: Zero


# PURPOSE

Define the global trade architecture, trade rules, and transnational exchange systems
within CivilizationOS.


# MODEL LIST

119001 global_trade_system
119002 trade_agreement
119003 trade_bloc
119004 trade_corridor
119005 trade_route
119006 trade_hub
119007 transshipment_hub
119008 trade_platform
119009 trade_network
119010 trade_flow
119011 trade_volume
119012 trade_balance
119013 trade_policy
119014 trade_regulation
119015 trade_standard
119016 tariff_system
119017 non_tariff_barrier
119018 customs_union
119019 free_trade_area
119020 rules_of_origin
119021 trade_facilitation
119022 dispute_settlement
119023 trade_monitoring
119024 trade_data
119025 trade_statistics
119026 trade_indicator
119027 trade_index
119028 trade_dashboard
119029 export_system
119030 import_system
119031 shipping_dependency
119032 logistics_dependency
119033 strategic_supply_route
119034 commodity_trade
119035 manufactured_trade
119036 digital_trade
119037 services_trade
119038 global_value_chain
119039 trade_finance_linkage
119040 trade_security_linkage
119041 crisis_trade_disruption
119042 rerouting_mechanism
119043 trade_recovery_program
119044 trade_resilience_framework
119045 market_access_framework
119046 trade_negotiation_program
119047 trade_network_state
119048 trade_platform_state
119049 trade_transition
119050 global_trade_system_state


# STATES

open
frictional
restricted
fragmented
rerouting
recovering


# EVENTS

tariff_change
trade_dispute
route_disruption
agreement_signed
market_reopening


# RELATIONS

global_trade_system -> trade
global_trade_system -> customs
global_trade_system -> logistics
global_trade_system -> geopolitics


# METRICS

trade_openness
route_reliability
trade_volume_index
fragmentation_index

