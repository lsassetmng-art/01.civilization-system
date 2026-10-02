# VIRTUAL SOLO EXHIBITION UI EXTENSION INTERFACE

status: design-review-ready
layer: interface
system: CivilizationOS
extends: EXHIBITION_AND_EVENT_UI_INTERFACE
owner: Boss

## 1. Creator workflow

The canonical creator workflow is:

1. Basics
2. Exhibits
3. Venue and Layout
4. Funding and Pricing
5. Review and Submit

## 2. Exhibits surface

The picker must separate:

- StaticArtOS artwork
- StaticArtOS publications
- StreamingOS video

Each selected item must show:

- source-system badge
- title
- creator
- media class
- duration for video
- rights status
- pricing weight
- eligibility status
- exact blocking reason when ineligible

## 3. Funding and pricing surface

The user may select:

- self-funded
- company-funded
- company-sponsored
- mixed funding

The UI must show:

- payer
- allocation amount
- allocation ratio
- treasury state
- approval state
- sponsor presentation terms
- each pricing line
- pricing-rule version
- final total

Company selection must expose only companies the actor is authorized to bind.

Treasury balance details follow permission policy.

Insufficient-funds state must remain explicit without leaking restricted ledger details.

## 4. Review surface

Review must show:

- lead creator
- canonical exhibit count
- weighted units
- venue
- layout
- schedule
- funding allocations
- required approvals
- rights warnings
- price snapshot
- cancellation rule
- submission consequences

## 5. Required states

Every step requires:

- loading
- empty
- ready
- validation-error
- forbidden
- stale
- approval-pending
- insufficient-funds
- source-unavailable
- retryable-failure

A failed submission must preserve the draft.

A retry must not duplicate:

- treasury reservation
- approval request
- settlement request

## 6. Viewer surface

An opened exhibition displays:

- static artwork
- publications
- playable video

Delivery uses source-owned projection and playback contracts.

Sponsor display is rendered only from approved sponsor presentation terms.

Sponsor display must not imply Civilization endorsement.

## 7. Accessibility and localization

The following require localization keys and accessible labels:

- actions
- statuses
- price lines
- sponsor disclosures
- warnings
- errors

Color alone must not communicate:

- rights state
- approval state
- funding state
- payment state

## 8. UI-first acceptance scope

Implementation acceptance must exercise:

- complete creator workflow
- mixed-source exhibit selection
- all four funding modes
- company authorization
- company approval
- pricing breakdown
- blocked rights
- stale projections
- insufficient funds
- retry safety
- cancellation
- viewer playback

API-only smoke tests are insufficient.
