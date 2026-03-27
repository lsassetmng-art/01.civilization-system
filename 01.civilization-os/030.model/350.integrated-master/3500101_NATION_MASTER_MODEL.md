# ============================================================
# NATION MASTER MODEL
# ============================================================

status: canonical
layer: model
scope: integrated-master
component: nation-master

owner: Boss
prepared_by: Zero


# ============================================================
# 1. PURPOSE
# ============================================================

Defines the canonical nation master structure
for all major civilization nations and unions.


# ============================================================
# 2. REQUIRED FIELDS
# ============================================================

nation_master_fields:
- nation_id
- nation_name
- regime_identity
- capital_identity
- geography_identity
- economy_identity
- education_identity
- religion_identity
- military_identity
- family_identity
- class_identity
- leisure_identity
- communication_identity
- appearance_identity
- mobility_identity
- consumer_identity
- media_identity
- corporate_identity
- political_identity
- work_ui_priority_set
- life_event_ui_signature
- integrated_risk_signature


# ============================================================
# 3. REQUIRED NATIONS
# ============================================================

required_nations:
- helios
- nova
- seiwa
- gladia
- orpheus
- aurelia
- free_cities_union


# ============================================================
# 4. FINAL RULE
# ============================================================

Every nation must have one concise integrated identity
that can be referenced across systems.
