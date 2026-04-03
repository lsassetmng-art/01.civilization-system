# ============================================================
# MODEL BOOK
# HOUSEHOLD DOMAIN
# ============================================================

status: canonical
domain_id: 025
scope: civilization.model.household

owner: Boss
prepared_by: Zero


# MODEL LIST

household
household_member
household_structure
household_size
household_income
household_consumption
household_asset
household_debt
household_record
household_registration
household_role
household_head
household_dependency
household_support
household_transfer
household_service
household_activity
household_lifecycle
household_event
household_decision
household_policy
household_management
household_monitoring
household_crisis
household_transition
household_stability
household_planning
household_data
household_analysis
household_system_state


# STATES

formation
growth
stable
stress
fragmentation
recovery


# EVENTS

household_formation
income_loss
household_migration
birth
death
household_recovery


# RELATIONS

household -> person
household -> housing
household -> labor
household -> consumer_market


# METRICS

household_income_index
debt_ratio
household_stability

