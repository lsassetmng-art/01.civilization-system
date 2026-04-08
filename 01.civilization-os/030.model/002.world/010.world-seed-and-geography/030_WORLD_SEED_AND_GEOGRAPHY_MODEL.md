# ============================================================
# WORLD SEED AND GEOGRAPHY
# MODEL
# ============================================================

status: draft
layer: model
domain: 002.world
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for world seed and geography.

# 2. CORE ENTITIES

- world_seed
- continent
- terrain_zone
- geography_feature

# 3. STATE MODEL

world_seed:
- seed_id
- world_id
- seed_type_code
- seed_value
- seed_version

continent:
- continent_id
- world_id
- continent_code
- continent_name
- area_value

terrain_zone:
- zone_id
- continent_id
- terrain_type_code
- climate_code
- habitability_code

geography_feature:
- feature_id
- zone_id
- feature_type_code
- feature_name
- feature_status

# 4. INTEGRITY RULES

- continents belong to one world
- terrain zones belong to one continent
- geography feature belongs to one zone
- seed version must be explicit

