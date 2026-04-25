# COMMON OS SECURITY INTEGRATED

status: canonical
system: CommonOS
layer: security
generated_at: 2026-04-21T20:25:49+0900
source_root: /data/data/com.termux/files/home/01.civilization-system/12.common-os/100.security

## Integration scope
This integrated file combines the current security-layer canon of CommonOS, including app_common RLS and publication boundary guidance.


<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/100.security/000000_COMMON_OS_SECURITY_INDEX.md -->
<!-- ============================================================ -->

# COMMON OS SECURITY INDEX

status: canonical
layer: security

## Documents
- 000000_COMMON_OS_SECURITY_INDEX.md
- 000001_COMMON_OS_SECURITY_OVERVIEW.md
- 000010_COMMON_OS_CLIENT_SERVER_BOUNDARY_CANONICAL.md
- 000020_COMMON_OS_SECRET_EXCLUSION_POLICY_CANONICAL.md

## app_common RLS and permission subsystem

### Canonical security reading path
1. 000030_APP_COMMON_RLS_AND_PERMISSION_CANONICAL.md
2. 000040_APP_COMMON_CLIENT_READ_AND_PUBLISH_BOUNDARY_CANONICAL.md

### Notes
These security documents define how app_common metadata should be protected, who may read which subsets, and who may review or publish metadata.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/100.security/000001_COMMON_OS_SECURITY_OVERVIEW.md -->
<!-- ============================================================ -->

# COMMON OS SECURITY OVERVIEW

status: canonical
layer: security

## Purpose
This layer defines trust boundaries for CommonOS-based UI and metadata.

## Topics
- client and server boundary
- secret exclusion
- presentation-only delivery discipline

## app_common RLS and permission subsystem overview

### Position
CommonOS security defines the trust boundary for app_common metadata tables and their publication path.

### Scope
- deny-by-default posture for base tables
- read visibility subsets
- reviewer / publisher / schema-admin responsibilities
- client-distributed metadata safety



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/100.security/000010_COMMON_OS_CLIENT_SERVER_BOUNDARY_CANONICAL.md -->
<!-- ============================================================ -->

# COMMON OS CLIENT SERVER BOUNDARY CANONICAL

status: canonical
layer: security

## Boundary rule
The client receives reusable presentation assets and local runtime state. The server retains authoritative business decisions.

## Client-side allowed
- tokens
- component metadata
- locale text
- templates
- queue presentation metadata
- local drafts
- temporary attachment references
- sync status

## Server-side required
- pricing decisions
- entitlement decisions
- access decisions
- approval authority
- audit decisions
- domain transaction truth



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/100.security/000020_COMMON_OS_SECRET_EXCLUSION_POLICY_CANONICAL.md -->
<!-- ============================================================ -->

# COMMON OS SECRET EXCLUSION POLICY CANONICAL

status: canonical
layer: security

## Never store in CommonOS client assets
- API secrets
- service role keys
- database connection secrets
- privileged system prompts
- server-only approval logic

## Purpose
CommonOS distributes reusable presentation, not privileged authority.



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/100.security/000030_APP_COMMON_RLS_AND_PERMISSION_CANONICAL.md -->
<!-- ============================================================ -->

# APP_COMMON RLS AND PERMISSION CANONICAL

status: canonical
system: CommonOS
layer: security
schema: app_common

## Purpose
This document defines the canonical RLS and permission posture for app_common reviewed canonical metadata.

## Core posture
- deny by default on base tables
- no direct client write to reviewed canonical base tables
- publication-safe reads only
- review and publish rights are restricted to trusted internal roles
- schema change rights are separated from metadata review rights

## Conceptual role split
- app_common_reader_public
- app_common_reader_internal
- app_common_reviewer
- app_common_publisher
- app_common_schema_admin

## Role meanings
### app_common_reader_public
May read only published, safe-for-client metadata subsets.

### app_common_reader_internal
May read broader reviewed metadata for internal tools, but not necessarily draft or schema-admin material.

### app_common_reviewer
May inspect draft and review_pending rows and may update review-oriented metadata fields according to workflow.

### app_common_publisher
May activate reviewed metadata for publication by managing effective windows, active flags, and publication-safe transitions.

### app_common_schema_admin
May apply DDL and structural changes. This role is separate from ordinary metadata operation.

## Write discipline
Direct insert / update / delete from untrusted clients is not allowed.
Trusted server-side flows, internal review surfaces, or controlled migration paths must be used.

## RLS guidance
When SQL RLS is later implemented, it should follow:
- base tables protected
- client-safe published subset exposed through controlled read path
- internal workflows separated from public read path



<!-- ============================================================ -->
<!-- SOURCE: /data/data/com.termux/files/home/01.civilization-system/12.common-os/100.security/000040_APP_COMMON_CLIENT_READ_AND_PUBLISH_BOUNDARY_CANONICAL.md -->
<!-- ============================================================ -->

# APP_COMMON CLIENT READ AND PUBLISH BOUNDARY CANONICAL

status: canonical
system: CommonOS
layer: security
schema: app_common

## Purpose
This document defines the boundary between raw app_common metadata storage and client-delivered published metadata.

## Boundary rule
Clients should not be assumed to read raw base tables directly. A controlled publication path is preferred.

## Preferred publication pattern
1. metadata is authored or revised internally
2. review is completed
3. publication safety is confirmed
4. active and effective window is set
5. published subset becomes readable to client-facing surfaces

## Safe publication examples
- theme registry rows already adopted for runtime
- token values already approved
- locale translations for active UI
- queue visual rules for active product surfaces
- reviewed component variants already in supported rollout

## Not for broad client publication
- draft rows
- review_pending rows
- reviewer comments
- internal migration notes
- staging-only variants
- internal-only verify materials unless explicitly intended for tool clients

## Security rule
Service role keys, database secrets, privileged prompts, and authoritative business decision logic remain outside app_common publication scope.

