# APP_COMMON REVIEWED CANONICAL DDL TIER1 NOTES

status: canonical
system: CommonOS
layer: model
schema: app_common

## Purpose
This document explains the intent of the first reviewed canonical DDL wave for app_common.

## Tier1 scope
Tier1 includes the first metadata tables needed to support:
- theme and token canon
- component catalog and variant metadata
- locale and copy metadata
- screen and form metadata
- search / filter / sort metadata
- offline / queue / sync metadata
- error and attachment presentation metadata
- verify and release templates
- client capability metadata
- component status and origin evidence metadata

## Explicit boundary
This DDL does not create:
- domain business truth
- ERP voucher truth
- pricing logic
- entitlement logic
- access logic
- secrets
- AI prompt canon
- domain outbox truth

## SQL design notes
- additive only
- schema name is app_common
- metadata records use code + version_no for logical uniqueness
- reviewed canonical lifecycle is represented with review_status
- component lifecycle is represented with canonical_status
- queue presentation uses queue_state enum
- origin evidence uses evidence_strength enum

## Current interpretation
This DDL is a canonical design asset under CommonOS model. It is not a declaration that the production DB target has already been chosen.
