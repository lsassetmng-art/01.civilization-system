# ============================================================
# STATIC ART ARCHITECTURE OVERVIEW
# ============================================================

status: canonical-overview
layer: architecture
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Architecture Objective

The architecture of StaticArtOS must preserve canonical asset ownership while supporting marketplace distribution, subscription access, library projection, reader / viewer continuity, and Exhibition Builder projection.

## 2. Core Domains

- Asset Master Domain
- Metadata and Localization Domain
- Rights Domain
- Sales Domain
- Subscription Domain
- Entitlement Domain
- Library Projection Domain
- Reader / Viewer Continuity Domain
- Review and Release Domain
- Marketplace Discovery Domain
- Exhibition Projection Domain

## 3. Source-of-Truth Rules

### StaticArtOS is canonical for:
- asset identity
- metadata
- preview and sample definition
- rights state
- release state
- marketplace publish state
- subscription eligibility state
- entitlement state
- library projection state
- reader / viewer progress
- exhibition projection state

### StaticArtOS is not canonical for:
- payment settlement engine internals
- external accounting internals
- exhibition placement state

## 4. Domain Dependencies

Asset Master is the root domain.

Metadata, Rights, Sales, and Subscription depend on Asset Master.

Entitlement depends on successful commercial or subscription events.

Library Projection depends on Entitlement plus Rights.

Reader / Viewer Continuity depends on Entitlement plus Asset Type.

Exhibition Projection depends on:
- publish state
- restriction state
- rights state
- entitlement policy
- regional and age policy

## 5. Projection Principle

Projection domains must never become the write authority for asset master data. They are derived and refreshable views.

## 6. Consumption Principle

Consumption surfaces must not directly reason on raw sales or upload state. They must rely on resolved entitlement and policy outputs.

## 7. Subscription Principle

Subscription access must be represented as independent entitlement state and must not mutate permanent ownership records.
