# ============================================================
# RELEASE AND DISTRIBUTION
# MODEL
# ============================================================

status: draft
layer: model
domain: 007.persona
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for persona release and distribution.

# 2. CORE ENTITIES

- release_record
- distribution_channel
- release_package
- distribution_result

# 3. STATE MODEL

release_record:
- release_id
- persona_id
- snapshot_id
- release_type_code
- release_status

distribution_channel:
- channel_id
- channel_type_code
- target_platform_scope
- channel_status
- policy_ref

release_package:
- package_id
- release_id
- package_type_code
- package_version
- package_status

distribution_result:
- result_id
- package_id
- channel_id
- result_code
- distributed_at

# 4. INTEGRITY RULES

- release must reference one persona and one snapshot
- package must belong to one release
- distribution result must reference one package and one channel
- unauthorized release state is prohibited

