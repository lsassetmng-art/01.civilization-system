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
