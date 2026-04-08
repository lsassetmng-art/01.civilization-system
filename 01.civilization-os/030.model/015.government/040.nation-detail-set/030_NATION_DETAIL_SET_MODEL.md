# ============================================================
# NATION DETAIL SET
# MODEL
# ============================================================

status: draft
layer: model
domain: 015.government
owner: Boss
prepared_by: Zero

# 1. PURPOSE

Defines the canonical model for nation detail sets.

# 2. CORE ENTITIES

- nation_detail_profile
- administrative_bundle
- institutional_bundle
- nation_detail_status

# 3. STATE MODEL

nation_detail_profile:
- nation_detail_profile_id
- nation_id
- detail_version
- detail_status
- changed_at

administrative_bundle:
- administrative_bundle_id
- nation_id
- bundle_scope
- bundle_version
- bundle_status

institutional_bundle:
- institutional_bundle_id
- nation_id
- institution_type_code
- institution_scope
- institution_status

nation_detail_status:
- nation_detail_status_id
- nation_id
- publication_status
- completeness_code
- changed_at

# 4. INTEGRITY RULES

- detail profile must bind one nation
- bundles must preserve nation identity
- publication status must be explicit
- incomplete detail publication is prohibited

