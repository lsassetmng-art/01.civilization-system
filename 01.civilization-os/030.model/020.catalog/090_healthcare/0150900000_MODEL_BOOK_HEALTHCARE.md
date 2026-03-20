# ============================================================
# MODEL BOOK
# HEALTHCARE DOMAIN
# ============================================================

status: canonical
system_id: 01
layer: model
domain_id: 090
model_id: 0000
scope: civilization.model.healthcare

owner: Boss
prepared_by: Zero


# MODEL LIST

090001 healthcare_system
090002 healthcare_provider
090003 hospital
090004 clinic
090005 healthcare_worker
090006 patient_record
090007 treatment_protocol
090008 medical_license
090009 healthcare_insurance
090010 healthcare_payment
090011 healthcare_regulator
090012 healthcare_policy
090013 healthcare_quality
090014 healthcare_access
090015 healthcare_supply_chain
090016 healthcare_infrastructure
090017 healthcare_investment
090018 healthcare_research
090019 healthcare_statistics
090020 healthcare_program
090021 healthcare_network
090022 healthcare_data
090023 healthcare_monitoring
090024 healthcare_management
090025 healthcare_system_state


# STATES

healthy
treated
chronic
critical
recovered
deceased


# EVENTS

hospital_admission
treatment
surgery
discharge


# RELATIONS

healthcare -> public_health
healthcare -> insurance
healthcare -> research_university


# METRICS

treatment_success_rate
healthcare_access_index
hospital_capacity

