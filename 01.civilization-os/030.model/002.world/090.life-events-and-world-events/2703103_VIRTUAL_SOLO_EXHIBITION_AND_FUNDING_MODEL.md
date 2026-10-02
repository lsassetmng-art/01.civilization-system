# VIRTUAL SOLO EXHIBITION AND FUNDING MODEL

status: design-review-ready
layer: model
system: CivilizationOS
scope: exhibition-builder
owner: Boss

## 1. Exhibition extension

Required fields:

- exhibition_id
- exhibition_type
- lead_creator_id
- title
- description
- venue_id
- layout_id
- opens_at
- closes_at
- lifecycle_state
- pricing_rule_version
- price_snapshot_id
- funding_plan_id
- approval_state
- created_by
- version_token
- created_at
- updated_at

exhibition_type must include:

- VIRTUAL_SOLO_EXHIBITION

## 2. Exhibit reference

Required fields:

- exhibition_exhibit_id
- exhibition_id
- source_system
- source_asset_id
- source_version_no
- media_class
- duration_seconds when applicable
- rights_snapshot
- projection_version
- placement_order
- billable_unit_weight
- eligibility_state

source_system values:

- STATICART_OS
- STREAMING_OS

The unique billable identity is:

- exhibition_id
- source_system
- source_asset_id

Multiple files, renditions, pages, subtitles, or thumbnails do not multiply the exhibit count.

## 3. Funding plan

Required fields:

- funding_plan_id
- exhibition_id
- funding_mode
- total_required_amount
- currency_code
- allocation_state
- version_token
- created_at
- updated_at

Funding modes:

- SELF_FUNDED
- COMPANY_FUNDED
- COMPANY_SPONSORED
- MIXED

## 4. Funding allocation

Required fields:

- funding_allocation_id
- funding_plan_id
- payer_type
- payer_id
- allocation_amount
- allocation_ratio
- sponsorship_flag
- sponsor_display_terms
- approval_request_id
- reservation_id
- settlement_state

payer_type values:

- CREATOR_ACCOUNT
- CIVILIZATION_COMPANY_TREASURY

Allocations must equal the price snapshot total exactly.

Allocation ratio is explanatory.

Allocation amount is settlement authority.

A company payer requires:

- valid company role authority
- applicable approval route
- treasury reservation
- sufficient available balance

## 5. Sponsorship separation

Sponsorship contains two independent truths:

1. financial allocation
2. public sponsor presentation

A sponsor logo or label may not create, reserve, or capture company funds.

## 6. Concurrency and idempotency

Funding-plan edits require version tokens.

Reservation and settlement commands require idempotency keys.

Duplicate commands must return the original result without a second debit.

## 7. Cancellation

Uncaptured reservations are released.

Captured funds follow the versioned cancellation and refund policy.

Audit records and historical snapshots are immutable.
