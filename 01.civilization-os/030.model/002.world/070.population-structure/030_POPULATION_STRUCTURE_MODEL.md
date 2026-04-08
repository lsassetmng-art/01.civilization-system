# ============================================================
# POPULATION STRUCTURE
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for population structure.

# 2. CORE ENTITIES

- population_group
- population_distribution
- demographic_state
- migration_state

# 3. STATE MODEL

population_group:
- group_id
- group_type_code
- classification_code
- enabled_flag

population_distribution:
- distribution_id
- region_id
- group_id
- population_count
- measured_at

demographic_state:
- demographic_id
- region_id
- age_structure_code
- fertility_state
- dependency_ratio

migration_state:
- migration_id
- source_region
- target_region
- migration_count
- migration_status

# 4. INTEGRITY RULES

- distribution must reference one region and one group
- demographic state must be region-bound
- migration state must preserve source and target region
- population count must be attributable to one measurement point

