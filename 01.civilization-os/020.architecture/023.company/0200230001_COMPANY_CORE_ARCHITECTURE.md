# ============================================================
# COMPANY CORE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: company
scope: company.core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical architectural role of company in CivilizationOS.

## design_intent
Company is the canonical unit that binds
ownership,
operator structure,
business activity,
responsibility,
and economic participation
into a governed operational actor.

Company is not merely a name label
and is not merely a market listing.
It is an actor-bearing structure
whose identity,
authority,
role topology,
activity boundary,
and historical continuity
must remain explicit.

## architectural_position
Company sits between
identity-bearing actors,
organizational execution,
market participation,
work execution,
trade relations,
and governance review.

Because of this position,
company must remain semantically stable
even when its visible outputs,
economic projections,
or surrounding market conditions change.

## required_behavior
- company identity must be explicit
- ownership basis must be explicit
- operator and reviewer roles must be explicit
- activity scope must be explicit
- company boundary must be explicit
- company lifecycle must be explicit
- validation must precede operational use
- failure states must remain reviewable

## canonical_rules
- company truth must not be replaced by projection
- ownership and operation must remain distinguishable
- authority must not be inferred from popularity
- company activity must stay bounded by declared scope
- historical company state must remain distinguishable from current state
- ambiguous company authority fails closed

## state_model
The company domain distinguishes:
- proposed company state
- registered company state
- active company state
- restricted company state
- suspended company state
- historical company state
- dissolved company state

## transition_rules
A transition into active state requires
identity validity,
ownership validity,
role validity,
and activity validity.

A transition into restricted or suspended state
must preserve historical trace
and must not erase previous authority records.

A transition into dissolved state
must terminate current operational authority
while preserving historical continuity,
responsibility trace,
and audit readability.

## actor_boundary
- owner
- executive
- operator
- reviewer
- regulator
- integration adapter

## dependency
This architecture feeds:
- runtime company visibility
- company flow execution
- company integration contracts
- company operational review
- company policy constraints
- company security controls
- company infrastructure support
- company implementation mapping
- company development/test intent

## decision_matrix
- if identity is incomplete, registration stops
- if ownership is unclear, fail closed
- if authority and operator roles conflict, route to review
- if activity exceeds declared scope, route to restriction or denial
- if state becomes historical, preserve historical distinction
- if dissolution is requested, preserve trace before closure

## example_scenarios
- a newly registered company entering active state
- an active company whose ownership changes under review
- a company restricted due to invalid activity boundary
- a dissolved company remaining historically queryable

## review_checklist
- company identity is explicit
- ownership basis is explicit
- role topology is explicit
- activity boundary is explicit
- state model is explicit
- transition rules are explicit
- failure intent is explicit
