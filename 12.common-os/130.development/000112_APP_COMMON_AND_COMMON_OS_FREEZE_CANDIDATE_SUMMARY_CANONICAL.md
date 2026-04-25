# APP_COMMON AND COMMON OS FREEZE CANDIDATE SUMMARY CANONICAL

status: canonical
system: CommonOS
layer: development

## Purpose
This document summarizes the current freeze-candidate state of CommonOS and app_common design work.

## Current freeze-candidate scope
- CommonOS as shared foundation canon
- app_common as shared mutable metadata schema candidate
- shared UI / token / shell / queue presentation direction
- application common component canon
- reviewed canonical DDL Tier1
- RLS / published-read SQL drafts
- execution-ready migration bundle draft
- rollout batch and apply gate canon

## Fixed boundaries
- CommonOS owns shared foundation
- app_common owns shared mutable metadata direction only
- domain business canon remains in each OS / app / ERP
- secrets, pricing logic, entitlement logic, access logic, approval authority logic, and transaction truth remain outside CommonOS client-delivered scope

## Fixed current-wave common components
- Screen Shell Common
- State Panel Common
- Action Button Common
- Multilingual Label Common
- Multicurrency Price Display Common
- Review Queue Common
- Asset Upload Common
- Product Card Common
- Library Shelf Common
- Marketplace Listing Common
- Marketplace Filter Panel Common
- Rights Policy Editor Common
- Product Detail Summary Common
- Owned Badge Common
- Subscription Included Badge Common
- Bookmark Common
- Favorite Toggle Common
- and the already-fixed non-UI shared bases under CommonOS review

## Minimum implementation baseline
- Button family
- input family
- Card / List / Table
- Dialog / Modal / Confirm UI
- App Shell
- Offline Queue Status UI
- Sync Retry UI
- Progress / Conflict presentation base

## Ready-next interpretation
CommonOS is ready to be used as an adoption baseline in target OS / app planning work, even if every shared component is not yet fully implemented.
