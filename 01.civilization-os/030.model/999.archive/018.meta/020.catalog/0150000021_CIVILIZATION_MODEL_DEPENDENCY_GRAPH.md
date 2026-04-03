# ============================================================
# CIVILIZATION MODEL DEPENDENCY GRAPH
# ============================================================

status: canonical
system_id: 01
domain_id: 5000
model_id: 0021
scope: civilization.model.dependency-graph
owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define model dependency structure in CivilizationOS.

Dependencies must be explicit, directional,
auditable, and domain-safe.


# ============================================================
# DEPENDENCY TYPES
# ============================================================

structural_dependency
state_dependency
event_dependency
policy_dependency
resource_dependency
metric_dependency
simulation_dependency


# ============================================================
# CORE EXAMPLES
# ============================================================

company
depends_on labor
depends_on banking
depends_on taxation
depends_on supply_chain

banking
depends_on central_bank
depends_on currency
depends_on payment

transport
depends_on energy
depends_on infrastructure

education
depends_on public_finance
depends_on governance

healthcare
depends_on public_health
depends_on finance
depends_on infrastructure

global_trade_system
depends_on trade
depends_on customs
depends_on logistics
depends_on geopolitics


# ============================================================
# RULES
# ============================================================

all critical dependencies must be declared

no hidden dependency

prefer graph edge over duplicated concept

dependency cycles must be explicitly justified


# ============================================================
# END
# ============================================================
