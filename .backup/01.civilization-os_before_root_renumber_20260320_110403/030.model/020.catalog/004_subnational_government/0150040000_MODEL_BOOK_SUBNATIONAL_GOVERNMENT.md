# ============================================================
# MODEL BOOK
# SUBNATIONAL GOVERNMENT DOMAIN
# ============================================================

status: canonical
system_id: 01
layer: model
domain_id: 004
model_id: 0000
scope: civilization.model.subnational_government

owner: Boss
prepared_by: Zero


# PURPOSE

Define provincial, prefectural, state, and municipal
government models within CivilizationOS.


# MODEL LIST

0001 province
0002 state
0003 prefecture
0004 county
0005 municipality
0006 local_government
0007 local_council
0008 local_executive
0009 local_budget
0010 local_tax
0011 local_administration
0012 local_public_service
0013 local_planning
0014 local_regulation
0015 local_election
0016 local_policy
0017 local_infrastructure
0018 local_transport
0019 local_energy
0020 local_water
0021 local_healthcare
0022 local_education
0023 local_housing
0024 local_security
0025 local_disaster_response
0026 local_crisis_management
0027 local_development
0028 local_reform
0029 local_transition
0030 local_system_state


# STATES

formation
operation
development
stability
stress
crisis
reform
recovery


# EVENTS

local_election
local_budget_change
local_crisis
local_disaster
local_reform
local_investment
local_recovery


# RELATIONS

subnational_government -> nation
subnational_government -> public_administration
subnational_government -> housing
subnational_government -> education
subnational_government -> healthcare


# METRICS

local_service_quality
local_fiscal_health
local_resilience
local_governance_score
local_development_index

