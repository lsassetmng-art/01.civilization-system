# ============================================================
# COMPANY BUILDER PLAY ENTRY MODEL
# ============================================================

status: canonical
layer: model
scope: grand-play-ui-integration
component: company-builder-play-entry

owner: Boss
prepared_by: Zero


# ============================================================
# 1. ENTRY THEMES
# ============================================================

entry_themes:
- company_market_role_entry
- political_donation_risk_entry
- media_ownership_entry
- defense_supply_entry
- nationalization_risk_entry
- listing_and_valuation_entry


# ============================================================
# 2. RULES
# ============================================================

rules:
- company builder should expose how a company participates in larger systems
- market and political consequences may be summarized during build or structure changes
- sovereign actions affecting companies must appear as contextual risk, not arbitrary surprise


# ============================================================
# 3. FINAL RULE
# ============================================================

Company Builder
must connect enterprise structure
to national and market play.
