# ============================================================
# MODEL BOOK
# FINANCIAL STABILITY DOMAIN
# ============================================================

status: canonical
system_id: 01
layer: model
domain_id: 114
model_id: 0000
scope: civilization.model.financial_stability

owner: Boss
prepared_by: Zero


# PURPOSE

Define financial stability architecture and crisis controls
within CivilizationOS.


# MODEL LIST

114001 financial_stability_system
114002 macroprudential_framework
114003 systemic_risk
114004 contagion_channel
114005 liquidity_stress
114006 capital_stress
114007 solvency_risk
114008 market_instability
114009 banking_crisis
114010 shadow_banking_risk
114011 leverage_cycle
114012 asset_bubble
114013 credit_cycle
114014 funding_risk
114015 payment_disruption
114016 settlement_failure
114017 clearing_risk
114018 cross_border_exposure
114019 sovereign_bank_nexus
114020 lender_of_last_resort
114021 crisis_liquidity_facility
114022 bank_resolution_framework
114023 deposit_protection_scheme
114024 emergency_guarantee_program
114025 stress_testing_framework
114026 early_warning_system
114027 supervisory_monitoring
114028 financial_surveillance
114029 resolution_authority
114030 capital_buffer
114031 liquidity_buffer
114032 countercyclical_buffer
114033 systemic_importance_score
114034 financial_stability_board
114035 macroprudential_policy
114036 financial_stability_policy
114037 financial_stability_regulation
114038 financial_stability_governance
114039 financial_stability_strategy
114040 financial_stability_data
114041 financial_stability_statistics
114042 financial_stability_indicator
114043 financial_stability_dashboard
114044 crisis_coordination_mechanism
114045 cross_sector_monitoring
114046 cross_market_monitoring
114047 resilience_framework
114048 recovery_planning
114049 financial_stability_transition
114050 financial_stability_system_state


# STATES

stable
vulnerable
stressed
crisis
stabilizing
recovering


# EVENTS

stress_test_failure
market_shock
liquidity_crisis
resolution_trigger
stability_restoration


# RELATIONS

financial_stability -> banking
financial_stability -> capital_market
financial_stability -> central_bank
financial_stability -> insurance


# METRICS

systemic_risk_index
capital_adequacy
liquidity_coverage
market_stress_index

