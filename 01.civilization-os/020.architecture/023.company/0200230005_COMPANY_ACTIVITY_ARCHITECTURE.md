# ============================================================
# COMPANY ACTIVITY ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: company
scope: company.activity
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines activity structure for company.

## activity_definition
Company activity is the bounded set of actions
the company is allowed to perform
as a recognized operational and economic actor.

## activity_classes
- registration-related activity
- organizational activity
- work allocation activity
- market participation activity
- trade participation activity
- reporting and review activity
- closure or suspension activity

## required_behavior
- activity scope must be declared
- prohibited activity must be blockable
- activity history must remain reviewable
- current and historical activity must remain distinguishable
- cross-domain activity must preserve authority boundary

## activity_boundary
Activity is bounded by:
- company state
- declared business scope
- actor authority
- policy context
- integration context

## denial_rules
Activity must be denied when
identity is invalid,
authority is invalid,
scope is invalid,
state is invalid,
or review is required but absent.

## review_checklist
- activity classes are explicit
- activity boundary is explicit
- denial rules are explicit
- history is preserved
