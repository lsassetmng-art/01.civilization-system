# ============================================================
# ORDER FLOW COMMON DESIGN OVERVIEW
# ============================================================

status: draft
system: order-flow
owner: Boss
prepared_by: Zero

summary:
OrderFlow is the order execution and delivery coordination front
positioned between estimate handoff and shipment / delivery completion.

fixed_assumptions:
- multilingual ready from day 0
- multicurrency ready from day 0
- iPhone supported
- Android supported
- PC supported
- tablet supported

core_scope:
- create order from estimate
- create standalone order
- manage order and order lines
- perform fulfillment-context inventory check
- calculate lead time
- calculate delivery candidates
- record customer proposal and response
- create shipment request
- track shipment state
- record delivery confirmation
- perform explicit order closure

design_depth_now_fixed:
- positioning and boundary
- state model and lifecycle
- core domain models
- screen responsibilities
- handoff and ERP mode behavior
- API request / response exact
- operator action matrix
- validation rules
- role and permission rules
- screen-to-payload mapping
- list query / filter / sort rules
- notification / overdue visibility
- home dashboard summary
- table candidates
- FK candidates
- DDL drafts
- SQL review packet
- pre-execution review gate
- RLS / DB access candidates
- migration packaging
- seed strategy
- role-based screen transition
- downstream invoice handoff boundary

boundary_summary:
- EstimateCreator stays estimate-side
- OrderFlow stays post-estimate execution-side
- ERP may be present or absent
- responsibility stays fixed and connection target changes

document_navigation:
- architecture defines positioning and boundaries
- model defines state and exact record structure
- flow defines lifecycle and role-based transitions
- integration defines handoff, ERP mode, and downstream invoice boundary
- operations defines reminder and overdue visibility
- interface defines primary screens and dashboard
- security defines role, authorization, and RLS candidates
- infrastructure defines table/fk/ddl/migration candidates
- implementation defines api/payload/query/validation/review packet
- development stores competitor comparison and differentiation context
- bible provides integrated reading order

note:
Common components are not designed in detail here.
They are referenced only as dependency/use context where needed.

execution_note:
SQL candidates are review-only and execution is intentionally held.
