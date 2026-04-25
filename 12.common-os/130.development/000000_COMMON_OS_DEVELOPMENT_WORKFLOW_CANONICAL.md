# ============================================================
# COMMON OS DEVELOPMENT WORKFLOW CANONICAL
# ============================================================

status: canonical
system: CommonOS
owner: Boss
prepared_by: Zero

## PURPOSE
This document fixes development workflow rules for CommonOS.

## WORKFLOW
- start from roadmap, current position, and completion condition
- additive only
- do not destructively break existing structure
- keep CommonOS boundary clear
- place global rules at upper system layer
- place CommonOS-specific rules in CommonOS
- prefer shared component extension over local fragmentation
- prefer variants over duplicated components
- keep ERP applicability in scope where relevant
