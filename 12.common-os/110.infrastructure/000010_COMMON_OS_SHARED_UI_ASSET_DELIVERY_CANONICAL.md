# COMMON OS SHARED UI ASSET DELIVERY CANONICAL

status: canonical
system: CommonOS
layer: infrastructure

## Purpose

This document defines the canonical delivery boundary for CommonOS client-safe shared UI assets.

CommonOS remains the single provider and source of truth for shared UI implementation. Consumer OSs, apps, and ERP surfaces may receive derived published copies for browser or packaged-client delivery, but those copies do not become independent UI source canon.

## Canonical delivery flow

The canonical delivery direction is:

CommonOS source
-> CommonOS build
-> CommonOS dist
-> deterministic publish
-> consumer-served asset area
-> browser or packaged client
-> thin consumer integration

The CommonOS source implementation remains authoritative throughout this flow.

## Provider source ownership

CommonOS owns the reusable shared UI provider implementation, including:

- design tokens
- variants
- reusable runtime components
- shell primitives
- queue and synchronization presentation
- accessibility-safe shared interaction primitives

Consumer systems must not fork or independently reimplement CommonOS-owned shared presentation when the required provider capability exists.

## Build output rule

CommonOS `dist` assets are build-generated provider outputs.

They are derived from CommonOS source and are not an alternate editable source tree.

A consumer must not manually modify CommonOS `dist` files.

## Deterministic publish rule

A consumer may publish CommonOS build outputs into a consumer-served asset area when direct provider delivery is not available or would create an invalid runtime filesystem dependency.

Published copies are delivery artifacts, not forks.

Published copies must:

- originate from the current CommonOS build output
- be produced by a deterministic publish step
- remain byte-for-byte identical to the corresponding CommonOS `dist` assets
- be replaceable by rerunning the publish step
- never be manually maintained as independent implementation
- be verified against the provider output before adoption is accepted

The consumer repository may track or regenerate published copies according to its packaging and deployment model, but those copies remain derived artifacts and never become the CommonOS source of truth.

## Consumer-served asset boundary

Browser-facing consumers must load CommonOS assets from a location that belongs to their supported served or packaged runtime surface.

A browser consumer must not make a sibling repository filesystem path part of its runtime contract.

Repository layout such as a relative path from one OS tree directly into another provider tree must not be treated as the production asset-delivery interface.

## Current phase-one shared asset set

The current CommonOS phase-one browser asset set is:

### CSS

1. `commonos.tokens.css`
2. `commonos.variants.css`
3. `commonos.components.css`
4. `commonos.shell.css`
5. `commonos.sync.css`

### JavaScript

1. `commonos.runtime.js`
2. `commonos.shell.js`
3. `commonos.sync.js`

The exact set may expand as CommonOS promotes additional shared capabilities.

## Browser dependency order

The canonical JavaScript dependency order is:

1. CommonUIRuntime
2. CommonShell
3. CommonSyncPresentation
4. consumer-side adapter, mapper, bridge, or thin presenter logic

`CommonShell` and `CommonSyncPresentation` may depend on `CommonOSRuntime`.

The canonical browser globals for the current phase are:

- `window.CommonOSRuntime`
- `window.CommonOSShell`
- `window.CommonOSSync`

Consumer integration must verify required provider globals before using provider-owned presentation.

## CSS dependency order

The canonical stylesheet order for the current phase is:

1. CommonTokenSet tokens
2. CommonTokenSet variants
3. CommonUIRuntime components
4. CommonShell
5. CommonSyncPresentation
6. consumer-specific theme or permitted domain variant additions where required

Consumer CSS must not recreate CommonOS core component implementation.

## Consumer ownership

Consumer OSs and apps retain ownership of domain-specific integration concerns, including:

- adapter logic
- domain-to-view mapping
- application configuration
- domain-specific business meaning
- business event interpretation
- sync trigger decisions
- domain retry eligibility rules where they are business decisions
- domain conflict resolution decisions

A consumer may translate domain state into CommonOS presentation input without taking ownership of the shared presentation implementation.

## CommonOS presentation ownership

CommonOS owns reusable presentation behavior for shared capabilities, including:

- shell presentation
- shared component rendering
- queue state presentation
- retry presentation
- conflict presentation
- status chip presentation
- shared accessibility behavior

Domain meaning remains outside CommonOS.

## Queue and synchronization boundary

CommonOS may standardize queue and synchronization presentation states.

The business meaning of a queue item remains domain-owned.

Consumer registries may describe supported queue states and business semantics, while rendering should use CommonOS presentation capability when that capability exists.

## Verification requirements

An adoption verifier for a published CommonOS package must verify, where applicable:

- all required provider assets exist
- published assets match the corresponding CommonOS build outputs byte-for-byte
- required CSS and JavaScript load order is preserved
- required CommonOS browser globals are present or referenced by the integration layer
- provider-owned presentation is actually invoked
- consumer code does not maintain a parallel implementation of provider-owned core UI
- domain-owned adapter and business meaning remain outside the provider package
- no secrets or privileged server material are included in the client-delivered package

A file-existence-only check is insufficient evidence of provider adoption.

## Security and package boundary

Client-delivered CommonOS assets must remain safe for distribution across multiple OSs, apps, and ERP surfaces.

The client package must not contain:

- domain pricing logic
- domain entitlement decision logic
- domain access decision logic
- privileged approval logic
- secrets
- service-role keys
- database connection secrets
- authoritative domain transaction logic

## No-fork rule

Copying CommonOS build output as part of a deterministic delivery process does not create a fork.

A fork exists when a consumer edits, maintains, or evolves the copied provider implementation independently of CommonOS.

Independent consumer maintenance of CommonOS-owned core UI is prohibited unless a separate canonical exception is approved.

## Adoption rule

A CommonOS consumer is considered actually connected only when the consumer runtime uses the CommonOS provider implementation.

Metadata that merely declares `providerRole`, `presentationOwner`, or similar ownership information is not sufficient by itself to prove provider adoption.

## Canonical principle

CommonOS owns the shared presentation implementation.

Consumers own domain meaning.

Published delivery artifacts transport CommonOS implementation to supported runtime surfaces without changing that ownership boundary.
