# ============================================================
# POCKET SECRETARY TOOLS LAUNCHER INTERFACE
# ============================================================

status: canonical
layer: 090.interface
system: pocket-secretary
owner: Boss
prepared_by: Zero

definition:
Defines the tools launcher interface.

required UI elements:
- tools sheet or tools screen
- tool list with recognizable labels
- recent tools area where applicable
- plan-bounded availability display

rules:
- tools launcher must make tool purpose understandable
- unavailable tools must not appear as active capabilities
