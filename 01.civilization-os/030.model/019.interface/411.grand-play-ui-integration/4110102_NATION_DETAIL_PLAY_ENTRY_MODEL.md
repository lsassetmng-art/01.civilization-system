# ============================================================
# NATION DETAIL PLAY ENTRY MODEL
# ============================================================

status: canonical
layer: model
scope: grand-play-ui-integration
component: nation-detail-play-entry

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENTRY BLOCKS
# ============================================================

entry_blocks:
- political_power_entry
- election_entry
- social_order_entry
- ideology_entry
- military_posture_entry
- diplomacy_entry
- national_market_entry
- national_media_entry


# ============================================================
# 2. RULES
# ============================================================

rules:
- nation detail is the main entry for nation-scale grand play
- visible entries depend on nation rules and actor authority
- sovereign actions require stronger permission than overview access
- nation detail should summarize effective national posture before deeper entry


# ============================================================
# 3. FINAL RULE
# ============================================================

Nation detail
must act as the main state-scale gateway
for political, military, and social play.
