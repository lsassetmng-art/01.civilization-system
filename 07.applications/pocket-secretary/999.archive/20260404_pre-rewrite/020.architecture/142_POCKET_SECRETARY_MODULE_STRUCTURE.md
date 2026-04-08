# ============================================================
# POCKET SECRETARY MODULE STRUCTURE
# ============================================================

status: canonical
system: pocket-secretary
component: module-structure
owner: Boss
prepared_by: Zero


# PURPOSE

Defines internal module layout.


# MODULES

ui  
domain  
data  
integration


# RULE

Modules must depend inward only.

ui → domain → data
