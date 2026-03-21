# ============================================================
# MODEL BOOK
# DEVELOPMENT FINANCE DOMAIN
# ============================================================

status: canonical
system_id: 01
layer: model
domain_id: 112
model_id: 0000
scope: civilization.model.development_finance

owner: Boss
prepared_by: Zero


# PURPOSE

Define development finance systems and institutions
within CivilizationOS.


# MODEL LIST

112001 development_finance_system
112002 development_bank
112003 multilateral_development_bank
112004 bilateral_development_bank
112005 development_fund
112006 infrastructure_fund
112007 climate_fund
112008 social_impact_fund
112009 development_project
112010 development_program
112011 concessional_loan
112012 development_grant
112013 blended_finance
112014 project_finance
112015 sovereign_finance
112016 municipal_finance
112017 public_private_finance
112018 guarantee_facility
112019 technical_assistance_program
112020 capacity_building_program
112021 development_bond
112022 social_bond
112023 green_bond
112024 resilience_bond
112025 project_pipeline
112026 project_appraisal
112027 project_monitoring
112028 project_evaluation
112029 development_finance_policy
112030 development_finance_regulation
112031 development_finance_governance
112032 development_finance_strategy
112033 development_finance_network
112034 development_finance_platform
112035 development_finance_infrastructure
112036 development_finance_data
112037 development_finance_statistics
112038 development_finance_indicator
112039 development_finance_dashboard
112040 development_finance_risk
112041 development_finance_resilience
112042 cofinancing_structure
112043 investment_committee
112044 disbursement_schedule
112045 repayment_structure
112046 portfolio_management
112047 country_program
112048 sector_program
112049 development_finance_transition
112050 development_finance_system_state


# STATES

planning
funding
disbursement
monitoring
restructuring
closed


# EVENTS

project_approval
loan_disbursement
grant_award
portfolio_restructuring
project_closure


# RELATIONS

development_finance -> public_finance
development_finance -> infrastructure
development_finance -> global_trade_system
development_finance -> human_capital


# METRICS

disbursement_rate
portfolio_quality
project_completion_rate
development_impact_index

