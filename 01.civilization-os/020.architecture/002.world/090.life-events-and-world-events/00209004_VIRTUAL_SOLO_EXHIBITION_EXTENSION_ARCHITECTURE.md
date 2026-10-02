# VIRTUAL SOLO EXHIBITION EXTENSION ARCHITECTURE

status: design-review-ready
layer: architecture
system: CivilizationOS
extends: EXHIBITION_BUILDER_ARCHITECTURE
owner: Boss

## 1. Purpose

Extend the existing Exhibition Builder with a virtual solo exhibition subtype.

This is an extension of the canonical builder, not a second exhibition system.

## 2. Exhibition subtype

VIRTUAL_SOLO_EXHIBITION represents one lead creator's curated virtual exhibition.

Collaborators may be credited, but the exhibition retains one lead creator identity.

## 3. Supported exhibit sources

- StaticArtOS static visual artwork
- StaticArtOS publication or book
- StreamingOS video

CivilizationOS owns placement and exhibition state.

Source systems retain canonical content, creator, version, duration, publication, entitlement, and rights truth.

## 4. Funding modes

- SELF_FUNDED
- COMPANY_FUNDED
- COMPANY_SPONSORED
- MIXED

Company means a Civilization-internal company.

External real-world corporate billing and BusinessOS company truth are outside this scope.

## 5. Responsibility boundary

CivilizationOS owns:

- exhibition
- venue
- layout
- schedule
- funding plan
- company identity binding
- treasury reservation
- approval
- pricing master
- price snapshot
- settlement
- cancellation
- audit

StaticArtOS owns:

- static visual artwork projection
- publication projection
- static work rights and eligibility

StreamingOS owns:

- video projection
- duration
- video rights
- playback eligibility

Portal owns:

- authentication entry
- return routing

## 6. Lifecycle

Canonical lifecycle:

DRAFT
-> ESTIMATED
-> FUNDING_PENDING
-> APPROVAL_PENDING
-> FUNDED
-> SCHEDULED
-> OPEN
-> CLOSED

CANCELLED is terminal.

A source-rights failure before opening moves the exhibition into a blocked review state without rewriting historical approval or price snapshots.

## 7. Submission gates

Submission requires:

- one lead creator
- at least one eligible exhibit
- valid venue
- valid layout
- scheduled period
- versioned pricing estimate
- balanced funding allocation
- payer authority
- required approvals

## 8. Financial safety

Company money must be reserved from company_treasury.

Company treasury remains separate from national treasury.

Sponsorship visibility never proves payment.

No treasury debit is final before:

- authority validation
- approval validation
- balance validation
- idempotency validation

## 9. Audit

The following require immutable audit events:

- estimate
- funding-plan change
- approval
- rejection
- treasury reservation
- capture
- release
- refund
- source-rights validation
- lifecycle transition

Each event requires:

- actor
- timestamp
- correlation ID
- source version
- reason
