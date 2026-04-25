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
