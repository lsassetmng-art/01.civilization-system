# ============================================================
# STATIC ART CORE FLOW INTEGRATED
# ============================================================

status: integrated-canonical
layer: flow
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Creator Upload Flow

1. creator starts draft
2. creator selects asset type
3. files are uploaded
4. metadata is completed
5. preview and sample are configured
6. rights are configured
7. sales and subscription settings are configured
8. self-check is executed
9. review is submitted
10. approval or rework decision is returned
11. asset becomes published when approved

## 2. Marketplace Purchase Flow

1. user enters marketplace
2. user switches tab
3. user filters and sorts
4. user opens product detail
5. user opens sample if desired
6. user starts purchase
7. successful purchase event is received
8. entitlement is written as owned_permanent
9. library projection is refreshed
10. product detail changes to owned state
11. read or view action becomes available

## 3. Subscription Access Flow

1. user has active subscription
2. asset is subscription eligible
3. product detail shows included-in-subscription
4. user opens full content without permanent purchase
5. usage measurement is recorded
6. progress is saved
7. if subscription ends, full access is recalculated

## 4. Library Flow

1. entitlement state changes
2. library projection refresh runs
3. asset appears or disappears in My Library
4. continue reading or viewing is recalculated
5. favorites remain stored independent of entitlement
6. downloaded visibility recalculates by current entitlement and local cache

## 5. Reader and Viewer Flow

1. entitled user opens asset
2. correct surface is selected by asset type
3. last-opened location is restored when available
4. user reads or views
5. progress and last-opened are saved
6. bookmarks, notes, or highlights are saved when relevant
7. Continue Reading or Continue Viewing projections are refreshed

## 6. Restriction and Delist Flow

1. rights or policy change occurs
2. asset is reviewed for restriction impact
3. marketplace visibility is recalculated
4. library access is recalculated
5. projection eligibility is recalculated
6. denial reasons are stored for audit

## 7. Exhibition Projection Flow

1. asset is published and eligible
2. rights and entitlement rules are resolved
3. projection record is refreshed
4. CivilizationOS queries projection data
5. Exhibition Builder displays eligible assets only
