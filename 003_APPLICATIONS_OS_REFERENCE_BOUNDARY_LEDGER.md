# APPLICATIONS OS REFERENCE BOUNDARY LEDGER

## 1. purpose
This ledger fixes how `07.applications` should relate to neighboring OS layers
under `01.civilization-system`.

The goal is:
- to allow applications to realize concrete products
- to prevent applications from silently replacing canonical OS truth
- to clarify which direction meaning should flow

## 2. core rule
Applications are product realization layers.
Applications may:
- read
- render
- package
- specialize
- cache locally
- hold app-only temporary states

Applications must not:
- redefine upper canonical meanings without explicit governance
- replace OS truth owners
- silently fork shared domain meaning

## 3. direction of meaning flow

### 3-1. normal direction
Normal direction is:

- Foundation -> OS
- CivilizationOS / PersonaOS / BusinessOS / LifeOS / GameOS / StreamingOS / StaticArtOS -> Applications
- Applications -> user-facing product realization

### 3-2. reverse direction
Reverse direction is limited.

Applications may send:
- input
- user actions
- draft data
- event requests
- user-generated content
- localized presentation preferences

Applications must not send:
- ungoverned canonical overwrite
- independent replacement definitions for upper OS meaning

## 4. OS to applications boundary

### 4-1. from CivilizationOS
Applications may receive:
- common civilization operating meanings
- common route meanings
- common identity linkage conventions
- upper shared rules

Applications must not replace:
- civilization-wide common rule definitions
- common identity meaning owned above app level

### 4-2. from PersonaOS
Applications may receive:
- persona rendering meaning
- persona presentation rules
- secretary/persona interaction semantics
- persona marketplace/distribution eligibility outputs where applicable

Applications must not replace:
- persona core identity meaning
- persona official rendering meaning
- persona distribution authority

### 4-3. from BusinessOS
Applications may receive:
- business operation common services
- business-side workflow meanings
- company-side share/sync/send rules
- business AI execution support boundaries

Applications must not replace:
- business-side canonical operating meaning
- company-shared operational rules
- business common component truth

### 4-4. from LifeOS
Applications may receive:
- life support domain meanings
- health/legal/inheritance/life planning support structures
- household/personal support boundaries

Applications must not replace:
- life-domain canonical support meaning
- real-world life record ownership rules
- household ownership boundaries

### 4-5. from GameOS
Applications may receive:
- game runtime meaning
- game-state presentation outputs
- game-system interaction structures

Applications must not replace:
- core game rule ownership
- game-state authority
- game progression authority

### 4-6. from StreamingOS
Applications may receive:
- creator/channel/content/distribution meanings
- streaming social interaction structures
- donation/ranking/publication outputs

Applications must not replace:
- streaming platform ownership
- creator/channel authority meaning
- ranking/donation platform authority

### 4-7. from StaticArtOS
Applications may receive:
- static-work asset presentation meanings
- creator upload/metadata/release outputs
- marketplace/listing outputs
- purchase/subscription entitlement outputs
- library/shelf outputs
- reader/viewer continuity outputs
- Exhibition Builder eligibility outputs where applicable

Applications must not replace:
- static asset canonical ownership
- asset rights authority
- entitlement reflection authority
- library/reader/viewer canonical continuity authority
- exhibition eligibility authority

## 5. applications-owned area
Applications may canonically own only app-specific areas such as:
- product-specific screen flow
- app-specific UX composition
- app-local temporary drafts
- local cache
- offline sync preparation state
- app-only feature packaging
- app-only experimentation state, if governed

These remain below OS truth.

## 6. forbidden patterns
The following are forbidden unless explicitly governed and documented:

1. application defines a new upper truth owner silently
2. application forks persona meaning without boundary approval
3. application copies business rules and treats them as its own canonical master
4. application stores life-domain master meaning as if it were the owner
5. application publishes portal/public meaning as if it were the official portal
6. application overrides game or streaming platform authority from product-local code alone
7. application treats static art asset/rights/entitlement state as its own canonical source

## 7. interpretation sentence
Applications are allowed to realize.
Applications are not allowed to replace.

## 8. practical review checklist
Before adding app-level data or logic, check:

1. Is this only UI / flow / packaging?
2. Is this only local cache or draft?
3. Does this belong to an OS truth owner instead?
4. Would another app need the same meaning?
5. If yes, should it move up to an OS layer?
