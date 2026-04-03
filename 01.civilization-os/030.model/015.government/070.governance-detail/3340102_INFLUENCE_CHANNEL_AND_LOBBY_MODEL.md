# ============================================================
# INFLUENCE CHANNEL AND LOBBY MODEL
# ============================================================

status: canonical
layer: model
scope: faction-interest-group-and-lobby-builder
component: influence-channel-and-lobby

owner: Boss
prepared_by: Zero


# ============================================================
# 1. INFLUENCE CHANNEL TYPES
# ============================================================

influence_channel_types:
- formal_legislative_lobby
- executive_access_lobby
- bureaucracy_channel
- military_channel
- doctrine_channel
- local_delegate_channel
- media_pressure_channel
- patronage_channel
- nightlife_and_social_circle_channel
- procurement_channel
- family_line_channel
- bribery_channel
- coercive_threat_channel


# ============================================================
# 2. LOBBY FIELDS
# ============================================================

lobby_fields:
- channel_id
- channel_type
- formal_or_informal
- legality_status
- access_target
- influence_strength
- transparency_level
- cost_of_use
- scandal_risk
- enforcement_risk


# ============================================================
# 3. LEGALITY STATUS
# ============================================================

legality_status_values:
- legal
- tolerated
- gray_zone
- illegal
- deniable
- regime_protected


# ============================================================
# 4. FINAL RULE
# ============================================================

Every influence channel must define
how visible it is,
how risky it is,
and what institution it bends.
