# ============================================================
# COUNTRY FACTION VARIATION MODEL
# ============================================================

status: canonical
layer: model
scope: faction-interest-group-and-lobby-builder
component: country-faction-variation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HELIOS
# ============================================================

dominant_groups:
- old_nobility_faction
- royal_inner_circle_faction
- heavy_industry_group
- nightlife_and_social_circle_channel
- protection_network

structure_note:
- formal institutions exist
- real influence is heavily filtered by old elite capture and king-adjacent favor
- rough patronage and face-network politics are highly visible


# ============================================================
# 2. NOVA
# ============================================================

dominant_groups:
- business_elite_faction
- asic_technical_faction
- trade_and_finance_group
- executive_access_lobby
- media_pressure_channel

structure_note:
- strongest commercial lobbying environment
- finance, technical elites, and performance narratives shape policy heavily
- elite access is formal enough to look legitimate, but still strongly filtering


# ============================================================
# 3. SEIWA
# ============================================================

dominant_groups:
- reformist_bureaucratic_faction
- education_elite_faction
- railway_group
- procedural_bureaucracy_channel
- formal_legislative_lobby

structure_note:
- strongest orderly and procedural interest mediation
- capture risk exists, but is more rule-shaped and less visibly feral than Helios


# ============================================================
# 4. GLADIA
# ============================================================

dominant_groups:
- military_hardline_faction
- security_faction
- military_procurement_group
- military_channel
- command_loyalty_reward

structure_note:
- overt disorder is low
- command, security, and force institutions dominate bargaining
- hidden capture often appears as disciplined necessity


# ============================================================
# 5. ORPHEUS
# ============================================================

dominant_groups:
- island_autonomy_faction
- fishery_group
- guild_faction
- religious_group
- local_delegate_channel

structure_note:
- local legitimacy and island interests matter more than centralized machine politics
- bargaining is relational and communal rather than hyper-formal


# ============================================================
# 6. AURELIA
# ============================================================

dominant_groups:
- doctrine_faction
- security_faction
- reconstruction_faction
- doctrine_channel
- intimidation_capture

structure_note:
- fear and ideology distort visible politics
- insiders and protected channels dominate more than open interest balancing


# ============================================================
# 7. FREE CITIES UNION
# ============================================================

dominant_groups:
- city_delegate_faction
- city_commercial_group
- guild_faction
- local_delegate_channel
- media_and_gossip_pressure

structure_note:
- local city bargaining dominates
- no single unified power machine fully controls the federation
- coalition fluidity is high


# ============================================================
# 8. FINAL RULE
# ============================================================

Faction variation must remain nation-specific
enough to explain why the same formal institution
behaves differently by country.
