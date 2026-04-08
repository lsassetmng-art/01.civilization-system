# ============================================================
# POCKET SECRETARY FAILURE RECOVERY RUNBOOK
# ============================================================

status: canonical
layer: 070.operations
system: pocket-secretary
owner: Boss
prepared_by: Zero

purpose:
Defines bounded recovery steps for degraded or failed conditions.

recovery sequence:
1. identify the failed area
2. block unsafe critical continuation if needed
3. preserve local work where safe
4. surface retry / review / recovery action
5. update visible state honestly
6. record resolution or remaining issue state

rules:
- critical ambiguity must fail closed
- fictional success is prohibited
- safe continuity is preferred over silent loss
