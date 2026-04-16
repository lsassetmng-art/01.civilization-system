# ============================================================
# PROJECT FLOW IMPLEMENTATION START SEQUENCE TEMPLATE
# ============================================================

status: canonical-template
layer: meta
application: ProjectFlow
owner: Boss
prepared_by: Zero

purpose:
Template for deciding the early implementation-start sequence.

sequence_template:
1. confirm implementation-start entry check
2. confirm DB-confirmed versus still-blocked areas
3. start with local module skeleton planning
4. refine state/event/use-case planning
5. refine repository/gateway planning
6. refine local cache and sync planning
7. split follow-on packages from confirmed planning outputs

important_rules:
- do not start from blocked DB areas
- do not reopen stable design assumptions
- keep local and boundary-aware packages distinct
