# ============================================================
# MARKET CORE ARCHITECTURE
# ============================================================

status: canonical
layer: architecture
domain: market
scope: market.core
system: civilization-os
owner: Boss
prepared_by: Zero

## purpose
Defines the canonical architectural role of market in CivilizationOS.

## design_intent
Market is the bounded environment in which
companies,
organizations,
workers,
items,
and services
become discoverable,
comparable,
and exchangeable.

Market is not the origin of truth
for company identity,
work identity,
or item identity.
It is the projection and participation layer
where bounded economic visibility is exposed.

## architectural_position
Market sits between:
- company supply
- work demand and execution visibility
- trade opportunity formation
- item and inventory visibility
- organization participation
- policy and governance boundary

## required_behavior
- market listing truth must remain bounded
- market visibility must not replace source truth
- market participation must remain actor- and policy-bounded
- listing state and source state must remain distinguishable
- historical and current market states must remain distinguishable

## canonical_rules
- market projection must not overwrite source truth
- listing popularity must not imply authority
- economic visibility must remain bounded
- delisted and historical states must remain queryable
- ambiguous market authority fails closed

## state_model
The market domain distinguishes:
- draft listing state
- visible listing state
- restricted listing state
- hidden listing state
- historical listing state
- closed listing state

## actor_boundary
- market owner
- market operator
- listing provider
- reviewer
- buyer-side viewer
- integration adapter

## dependency
This architecture feeds runtime visibility,
flow execution,
integration contracts,
operations review,
policy constraints,
security boundaries,
infrastructure,
implementation,
and development/testing.

## decision_matrix
- if source truth is invalid, listing stops
- if company/work/item authority is unclear, fail closed
- if policy blocks visibility, restrict or hide listing
- if state becomes historical, preserve distinction
- if listing closes, preserve historical trace

## review_checklist
- market/source separation is explicit
- listing states are explicit
- participation boundary is explicit
- visibility limits are explicit
