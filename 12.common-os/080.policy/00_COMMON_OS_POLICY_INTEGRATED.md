# COMMON OS POLICY INTEGRATED

status: canonical
system: CommonOS
layer: policy
generated_at: 2026-04-21T20:25:48+0900
source_root: /data/data/com.termux/files/home/01.civilization-system/12.common-os/080.policy

## Integration scope
This integrated file combines the current policy-layer canon of CommonOS, including app_common visibility and active/effective policies.


<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/080.policy/000000_COMMON_OS_POLICY_INDEX.md -->
<!-- ============================================================ -->

# COMMON OS POLICY INDEX

status: canonical
layer: policy

## Documents
- 000000_COMMON_OS_POLICY_INDEX.md
- 000001_COMMON_OS_POLICY_OVERVIEW.md
- 000010_COMMON_OS_SHARED_UI_POLICY_CANONICAL.md
- 000020_COMMON_OS_APP_COMMON_BOUNDARY_POLICY_CANONICAL.md
- 000030_COMMON_OS_OFFLINE_QUEUE_SYNC_POLICY_CANONICAL.md
- 000040_COMMON_OS_TOKEN_AND_VARIANT_POLICY_CANONICAL.md

## app_common visibility and effective-policy subsystem

### Canonical policy reading path
1. 000050_APP_COMMON_READ_VISIBILITY_POLICY_CANONICAL.md
2. 000060_APP_COMMON_ACTIVE_EFFECTIVE_POLICY_CANONICAL.md

### Notes
These policy documents define what metadata may be visible to clients and how active/effective windows are interpreted for app_common reviewed canonical records.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/080.policy/000001_COMMON_OS_POLICY_OVERVIEW.md -->
<!-- ============================================================ -->

# COMMON OS POLICY OVERVIEW

status: canonical
layer: policy

## Purpose
This layer defines CommonOS behavioral and boundary policies.

## Topics
- shared UI policy
- app_common boundary policy
- offline and queue sync policy
- token and variant policy

## app_common visibility and effective-policy subsystem overview

### Position
CommonOS policy defines the non-code behavioral rules for app_common metadata publication and visibility.

### Scope
- public versus internal readability
- active and effective-window interpretation
- published-metadata discipline



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/080.policy/000010_COMMON_OS_SHARED_UI_POLICY_CANONICAL.md -->
<!-- ============================================================ -->

# COMMON OS SHARED UI POLICY CANONICAL

status: canonical
layer: policy

## Shared UI policy
- Buttons and input families are standardized.
- App-specific button systems are not allowed.
- Responsive behavior must preserve a single UI canon.
- Queue and sync presentation must be reusable.
- Accessibility and usability are mandatory, not optional.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/080.policy/000020_COMMON_OS_APP_COMMON_BOUNDARY_POLICY_CANONICAL.md -->
<!-- ============================================================ -->

# COMMON OS APP_COMMON BOUNDARY POLICY CANONICAL

status: canonical
layer: policy

## Allowed in app_common
Shared mutable metadata for presentation, variants, localization, templates, and queue visual rules.

## Not allowed in app_common
- domain transaction truth
- secrets
- pricing canon
- entitlement canon
- access canon
- AI prompt canon
- audit decision core



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/080.policy/000030_COMMON_OS_OFFLINE_QUEUE_SYNC_POLICY_CANONICAL.md -->
<!-- ============================================================ -->

# COMMON OS OFFLINE QUEUE SYNC POLICY CANONICAL

status: canonical
layer: policy

## Standard policy
- offline-first
- local queue
- online sync

## Minimum offline policy
- screen rendering
- local navigation
- local input
- local draft save
- local edit
- local reference
- local search
- send-wait registration

## Queue presentation policy
Common queue states are standardized and must be visually consistent across adoption targets.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/080.policy/000040_COMMON_OS_TOKEN_AND_VARIANT_POLICY_CANONICAL.md -->
<!-- ============================================================ -->

# COMMON OS TOKEN AND VARIANT POLICY CANONICAL

status: canonical
layer: policy

## Token policy
Tokens represent presentation primitives only.

## Variant policy
Variants represent presentation differences such as density, tone, emphasis, and state.

## Naming examples
- button.primary
- button.secondary
- input.erp_dense
- panel.conflict

## Prohibition
Variants must not encode business authority or pricing logic.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/080.policy/000050_APP_COMMON_READ_VISIBILITY_POLICY_CANONICAL.md -->
<!-- ============================================================ -->

# APP_COMMON READ VISIBILITY POLICY CANONICAL

status: canonical
system: CommonOS
layer: policy
schema: app_common

## Purpose
This document defines which app_common metadata may be visible to which class of reader.

## Core policy
Base tables in app_common are not assumed to be globally readable merely because they hold metadata. Read visibility is determined by publication safety, review status, and effective window.

## Public-readable metadata principles
Metadata may be exposed to broad client readership only when all of the following are true:
- review_status is reviewed
- is_active is true
- current time is within effective window, when effective window exists
- metadata is safe for client distribution
- metadata does not leak internal-only rollout or reviewer-only content

## Internal-only metadata examples
The following may remain internal-only until published:
- draft metadata
- review_pending metadata
- deprecated but not yet retired transition records
- reviewer notes
- migration notes not intended for clients
- pre-release variants
- staging-only templates

## Safe client-readable families
Typical safe client-readable families include:
- theme and token metadata
- component catalog entries that are already adopted for client use
- locale and copy metadata
- screen template metadata
- queue presentation metadata
- error presentation metadata
- attachment presentation metadata
- verify / release templates only when intended for internal tooling, not for clients

## Policy rule
Client readability is a publication decision, not a default property of metadata existence.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/080.policy/000060_APP_COMMON_ACTIVE_EFFECTIVE_POLICY_CANONICAL.md -->
<!-- ============================================================ -->

# APP_COMMON ACTIVE EFFECTIVE POLICY CANONICAL

status: canonical
system: CommonOS
layer: policy
schema: app_common

## Purpose
This document defines how active flags and effective windows are interpreted for app_common reviewed canonical metadata.

## Canonical interpretation
A row is publish-eligible only when:
- review_status is reviewed
- is_active is true
- effective_from is null or now() >= effective_from
- effective_to is null or now() < effective_to

## Practical rules
- inactive rows are not treated as publish-eligible
- future-effective rows are valid design records but not yet active for broad use
- expired rows remain historical records, not active records
- deprecated rows may coexist with newer reviewed rows during transition

## Versioning interaction
A new version is normally introduced as a new row with:
- same logical code
- higher version_no
- its own effective window

Older rows should not be destructively overwritten when historical trace matters.

## Policy warning
Do not treat effective window as domain business validity. It is metadata publication validity only.

