# ============================================================
# POCKET SECRETARY FAILURE RECOVERY FLOW
# ============================================================

status: canonical
layer: 050.flow
system: pocket-secretary
owner: Boss
prepared_by: Zero

flow:
1. failure or degraded condition is detected
2. affected area is identified
3. unsafe execution path is blocked if needed
4. local work is preserved where safe
5. retry / review / recovery path is offered where applicable
6. state remains visible until resolution
7. resolution or escalation is recorded

rules:
- critical uncertainty must fail closed
- preserved local user intent must be prioritized where safe
- fictional success states are prohibited
