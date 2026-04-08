# ============================================================
# BUSINESS AI WORKER ASSIGNMENT ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: business-os
owner: Boss
prepared_by: Zero

definition:
Business AI Workers may be assigned or dispatched to target systems or apps.

target systems may include:
- businessos
- erp

target apps may include:
- pocket_secretary
- estimatecreator
- namecardmanager

rules:
- source-of-truth ownership stays in BusinessOS
- assignment target and worker employment remain distinct
- assignment does not imply automatic approval authority
