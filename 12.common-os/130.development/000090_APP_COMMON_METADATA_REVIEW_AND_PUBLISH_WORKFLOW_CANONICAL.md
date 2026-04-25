# APP_COMMON METADATA REVIEW AND PUBLISH WORKFLOW CANONICAL

status: canonical
system: CommonOS
layer: development
schema: app_common

## Purpose
This document defines the operational workflow from draft metadata to reviewed and published metadata.

## Workflow
1. draft metadata is created
2. review_pending is assigned when ready for review
3. reviewer validates boundary, naming, and publication safety
4. row becomes reviewed when accepted
5. publisher controls is_active and effective window
6. published metadata becomes readable by approved client-facing paths

## Review focus
- CommonOS boundary fit
- naming quality
- metadata safety
- client publication safety
- compatibility with existing active metadata
- deprecation / transition need

## Publishing rule
Publishing is not a separate truth outside the row. Publishing is represented operationally by:
- review_status reviewed
- is_active true
- active effective window
- inclusion in approved read path
