# ============================================================
# LSAM DEPENDENCY GRAPH - CANONICAL
# ============================================================

status: canonical
owner: Boss
prepared_by: Zero

# CIVILIZATION

foundation
↓
architecture
↓
runtime
↓
model
↓
policy
↓
interface


# ERP

000.platform
↓
100.business
↓
200.management
↓
300.analytics


# CROSS SYSTEM

Civilization
↓
business world
↓
approval
↓
ERP integration
↓
ERP execution


# PROHIBITED

world -> core direct mutation
ERP -> Civilization core mutation
management -> command bypass
analytics -> write state
