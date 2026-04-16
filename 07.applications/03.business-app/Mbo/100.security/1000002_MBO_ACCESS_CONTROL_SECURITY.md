# ============================================================
# MBO ACCESS CONTROL SECURITY
# ============================================================

status: canonical
application: Mbo
layer: security
owner: Boss
prepared_by: Zero

roles:
- objective_owner
- manager
- evaluator
- HR_operator
- executive_viewer

access_rules:
objective_owner:
- create own draft objective
- update own non-finalized objective
- add progress logs
- view own evaluations

manager:
- review subordinate objectives
- add review comments
- confirm review results

evaluator:
- draft evaluation
- confirm evaluation

HR_operator:
- view finalized records
- transmit to ERP
- view ERP transmission history

executive_viewer:
- read-only summary visibility
