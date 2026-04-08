# ============================================================
# POCKET SECRETARY CONSULT FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. user enters a consult surface
2. consult context is loaded
3. consult interaction proceeds
4. consult state is updated locally
5. guidance or follow-up suggestions are shown
6. any critical follow-up action routes to explicit review paths

rules:
- consult flow is advisory
- consult flow must not silently trigger critical external execution
