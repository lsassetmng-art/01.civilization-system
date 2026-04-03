# ============================================================
# CIVILIZATION MODEL RELATIONS
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0007

owner: Boss
prepared_by: Zero

purpose:

Define the relationship graph between
all CivilizationOS models.


# ============================================================
# RELATION TYPES
# ============================================================

dependency
governance
resource_flow
information_flow
regulation
ownership
membership
location
control


# ============================================================
# CORE CIVILIZATION RELATIONS
# ============================================================


# ------------------------------------------------------------
# GOVERNMENT STRUCTURE
# ------------------------------------------------------------

government
 -> legislative
 -> judicial
 -> public_administration
 -> military
 -> intelligence
 -> public_policy


# ------------------------------------------------------------
# ECONOMIC SYSTEM
# ------------------------------------------------------------

company
 -> labor
 -> banking
 -> taxation
 -> consumer_market
 -> supply_chain
 -> logistics


# ------------------------------------------------------------
# FINANCIAL SYSTEM
# ------------------------------------------------------------

banking
 -> central_bank
 -> payment
 -> capital_market
 -> currency


# ------------------------------------------------------------
# INFRASTRUCTURE
# ------------------------------------------------------------

infrastructure
 -> transport
 -> energy
 -> water
 -> communications


# ------------------------------------------------------------
# DIGITAL SYSTEM
# ------------------------------------------------------------

data
 -> ai
 -> cybersecurity
 -> internet
 -> telecom


# ------------------------------------------------------------
# SOCIAL SYSTEM
# ------------------------------------------------------------

education
 -> research_university
 -> science
 -> technology


healthcare
 -> public_health


media
 -> culture
 -> entertainment


# ------------------------------------------------------------
# GLOBAL SYSTEM
# ------------------------------------------------------------

nation
 -> diplomacy
 -> international_organization
 -> geopolitics
 -> global_trade_system


# ------------------------------------------------------------
# META LAYER
# ------------------------------------------------------------

civilization_meta
 -> global_crisis
 -> geopolitical_system
 -> global_trade_system

