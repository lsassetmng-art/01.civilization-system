# ============================================================
# MODEL BOOK
# CONSTRUCTION DOMAIN
# ============================================================

status: canonical
domain_id: 059
scope: civilization.model.construction

owner: Boss
prepared_by: Zero


# MODEL LIST

construction
construction_project
construction_company
construction_site
construction_worker
construction_material
construction_equipment
construction_design
construction_plan
construction_schedule
construction_cost
construction_contract
construction_permit
construction_regulation
construction_quality
construction_inspection
construction_safety
construction_monitoring
construction_statistics
construction_data
construction_index
construction_risk
construction_crisis
construction_delay
construction_recovery
construction_reform
construction_innovation
construction_system_design
construction_system_state


# STATES

planning
building
delayed
completed


# EVENTS

project_start
project_delay
project_completion


# RELATIONS

construction -> infrastructure
construction -> real_estate
construction -> urban


# METRICS

construction_output
project_completion_rate
construction_cost_index

