# ============================================================
# MODEL BOOK
# SOCIAL WELFARE DOMAIN
# ============================================================

status: canonical
system_id: 01
layer: model
domain_id: 092
model_id: 0000
scope: civilization.model.social_welfare

owner: Boss
prepared_by: Zero


# MODEL LIST

092001 welfare_system
092002 welfare_agency
092003 social_security_program
092004 pension_program
092005 disability_support
092006 unemployment_support
092007 child_support
092008 poverty_assistance
092009 welfare_policy
092010 welfare_regulation
092011 welfare_budget
092012 welfare_distribution
092013 welfare_data
092014 welfare_statistics
092015 welfare_monitoring
092016 welfare_program
092017 welfare_infrastructure
092018 welfare_service
092019 welfare_recipient
092020 welfare_case_record
092021 welfare_network
092022 welfare_impact
092023 welfare_reform
092024 welfare_strategy
092025 welfare_system_state


# STATES

eligible
receiving_support
review
terminated


# EVENTS

benefit_application
benefit_approval
benefit_termination


# RELATIONS

social_welfare -> population
social_welfare -> government
social_welfare -> labor


# METRICS

poverty_rate
benefit_coverage
welfare_spending

