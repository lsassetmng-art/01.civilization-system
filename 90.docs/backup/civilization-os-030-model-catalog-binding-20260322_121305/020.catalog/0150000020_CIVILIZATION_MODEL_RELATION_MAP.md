# ============================================================
# CIVILIZATION MODEL RELATION MAP
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0020
scope: civilization.model.relation-map
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the official relation types between models.


# ============================================================
# RELATION TYPES
# ============================================================

contains
depends_on
governs
regulates
funds
employs
supplies
consumes
measures
protects
transports
communicates_with
trades_with
belongs_to
participates_in
changes


# ============================================================
# PRIMARY RELATIONS
# ============================================================

person
belongs_to household

person
participates_in labor_market

person
belongs_to organization

household
consumes market_goods

organization
employs person

company
participates_in market

company
depends_on logistics

bank
funds company

nation
governs territory

government
regulates market

government
funds public_service

nation
participates_in diplomacy

trade_system
depends_on logistics

energy_system
supplies industry

education
develops human_capital

healthcare
protects population

security
protects nation


# ============================================================
# MODEL GRAPH PRINCIPLE
# ============================================================

No domain exists in isolation.

Civilization is a graph.

nodes:
models

edges:
relations


# ============================================================
# END
# ============================================================
