# ============================================================
# MODEL BOOK
# BIOECONOMY DOMAIN
# ============================================================

status: canonical
system_id: 01
layer: model
domain_id: 089
model_id: 0000
scope: civilization.model.bioeconomy

owner: Boss
prepared_by: Zero


# PURPOSE

Define the biological economic systems and industries.


# MODEL LIST

089001 bio_resource
089002 bio_feedstock
089003 bio_material
089004 bio_product
089005 bio_company
089006 bio_research_lab
089007 bio_research_project
089008 bio_supply_chain
089009 bio_market
089010 bio_trade
089011 bio_patent
089012 bio_license
089013 bio_regulator
089014 bio_regulation
089015 bio_standard
089016 bio_security
089017 bio_ethics_board
089018 bio_environmental_impact
089019 bio_sustainability_program
089020 bio_policy
089021 bio_investment
089022 bio_funding_round
089023 bio_industry_cluster
089024 bio_distribution_network
089025 bio_system_state


# STATES

research
pilot
commercialization
expansion
regulated
decline


# EVENTS

research_breakthrough
technology_transfer
product_launch
regulatory_approval
market_entry


# RELATIONS

bioeconomy -> agriculture
bioeconomy -> healthcare
bioeconomy -> research_university
bioeconomy -> environment


# METRICS

bio_market_size
bio_patent_count
bio_investment

