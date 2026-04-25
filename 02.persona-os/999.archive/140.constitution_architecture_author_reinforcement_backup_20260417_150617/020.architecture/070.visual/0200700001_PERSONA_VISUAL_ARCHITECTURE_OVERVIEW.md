# ============================================================
# PERSONA VISUAL ARCHITECTURE OVERVIEW
# ============================================================

status: implementation-ready-followup
domain: visual

visual_boundary:
- released visual profile is authoritative for presentation input
- runtime visual state is ephemeral
- assets and expressions must resolve by versioned references
- background and avatar binding must be deterministic from released input

required_visual_controls:
- asset resolution by immutable lineage
- missing asset fallback contract
- expression state contract
- animation profile resolution contract
