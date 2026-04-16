# ============================================================
# MBO APPLICATION ARCHITECTURE
# ============================================================

status: canonical
application: Mbo
layer: architecture
owner: Boss
prepared_by: Zero

architecture_style:
application front centered architecture with controlled
external linkage to ERP and related applications.

major_modules:
- dashboard module
- objective module
- action plan module
- progress module
- review module
- evaluation module
- sharing module
- ERP transmission module

module_responsibilities:
dashboard module:
- show current period summary
- show delayed items
- show review due items
- show finalization status

objective module:
- create objectives
- edit draft objectives
- manage categories, targets, criteria, weight, priority

action plan module:
- define executable steps
- assign owners
- define target dates
- update completion status

progress module:
- record progress percentage
- record blockers
- record next actions
- maintain update history

review module:
- schedule reviews
- store review logs
- store reviewer comments
- store review results

evaluation module:
- draft evaluation
- confirm final evaluation
- lock finalized records

sharing module:
- link tasks
- link projects
- link related outputs

ERP transmission module:
- build outbound payload
- transmit approved records
- store transmission history
