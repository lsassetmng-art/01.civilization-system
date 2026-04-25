# APP_COMMON ROLE MAPPING DRAFT

status: canonical
system: CommonOS
layer: model
schema: app_common

## Purpose
This document maps conceptual app_common roles to likely operational responsibilities.

## Conceptual roles

### app_common_reader_public
Meaning:
- broad client-facing read of published metadata only

Typical realization:
- anon
- authenticated
- or equivalent public-read path through published views only

### app_common_reader_internal
Meaning:
- broader internal read for admin consoles, review dashboards, or internal support tools

### app_common_reviewer
Meaning:
- review metadata before publication
- inspect draft / review_pending content
- perform controlled metadata corrections during review

### app_common_publisher
Meaning:
- set active / effective transitions
- move reviewed metadata into publish-ready operational state

### app_common_schema_admin
Meaning:
- structural DDL and migration owner
- separate from ordinary review / publish operation

### service_role
Meaning:
- trusted server-side automation
- controlled workflow execution
- migration support where appropriate

## Core boundary
Role mapping is an operational choice. CommonOS canon defines the intent and separation of duties, not one mandatory production identity provider strategy.
