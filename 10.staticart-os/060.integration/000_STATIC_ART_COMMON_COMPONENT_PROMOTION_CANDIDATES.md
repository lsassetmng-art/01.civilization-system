
============================================================

STATIC ART COMMON COMPONENT PROMOTION CANDIDATES

============================================================

status: candidate-ledger
layer: integration
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

1. Purpose

This document lists the common component promotion candidates discovered after the implementation-ready design of StaticArtOS.

These components are candidates for promotion into shared application-level common components when they are proven reusable across multiple systems.

2. Promotion Policy

A component should be promoted only when:

its responsibility is stable

its API surface is stable

its state model is reusable

its permission rules are reusable

its UI or behavior is not overly StaticArtOS-specific

at least one other application can realistically adopt it


3. Common Component Candidate List

3.1 Asset Upload Common

Purpose:

reusable asset upload initiation

draft creation entry

file attachment orchestration


Expected reuse:

any asset-centric application with upload-first behavior


3.2 Asset Metadata Editor Common

Purpose:

title

subtitle

description

localization block editing

category and tag assignment


Expected reuse:

creator apps

publishing apps

marketplace apps

archive apps


3.3 Rights Policy Editor Common

Purpose:

exhibition permission

derivative permission

commercial permission

region scope

age policy


Expected reuse:

asset and content applications with policy-driven visibility


3.4 Sales Offer Editor Common

Purpose:

base price

base currency

sale type

sale period

listing status


Expected reuse:

marketplace-connected applications


3.5 Subscription Eligibility Editor Common

Purpose:

subscription inclusion flag

start / end window

creator opt-in

inclusion notes


Expected reuse:

subscription-supported content applications


3.6 Marketplace Listing Common

Purpose:

tab-based listing

card rendering

badge rendering

owned / included rendering


Expected reuse:

commerce-facing catalog applications


3.7 Marketplace Filter Panel Common

Purpose:

category filter

tag filter

language filter

creator filter

price range filter

ownership filter

subscription inclusion filter


Expected reuse:

search-heavy and discovery-heavy applications


3.8 Marketplace Sort Panel Common

Purpose:

newest

oldest

popularity

best selling

price ascending / descending

title ascending / descending


Expected reuse:

marketplace and asset discovery applications


3.9 Product Card Common

Purpose:

thumbnail

title

creator

type badge

price

owned badge

included badge

sample badge


Expected reuse:

catalog and commerce surfaces


3.10 Product Detail Summary Common

Purpose:

hero summary

creator summary

rights summary

price summary

subscription summary

action rendering


Expected reuse:

product detail surfaces across content marketplaces


3.11 Owned Badge Common

Purpose:

render permanent ownership state consistently


Expected reuse:

owned-library and purchase-driven systems


3.12 Subscription Included Badge Common

Purpose:

render included-in-subscription state consistently


Expected reuse:

subscription-based content systems


3.13 Sample Access Common

Purpose:

sample-open action

sample availability badge

sample eligibility rendering


Expected reuse:

preview-supported catalog systems


3.14 Library Shelf Common

Purpose:

owned content shelf

continue shelf

favorites shelf

downloaded shelf


Expected reuse:

library-oriented or content consumption systems


3.15 Continue Reading / Continue Viewing Common

Purpose:

resume cards

last-opened rendering

progress snippet rendering


Expected reuse:

content continuity systems


3.16 Bookmark Common

Purpose:

bookmark create

bookmark list

bookmark removal


Expected reuse:

reader and viewer experiences


3.17 Favorite Toggle Common

Purpose:

toggle favorite state

reflect favorite badge state


Expected reuse:

discovery, library, and collection systems


3.18 Reader Progress Sync Common

Purpose:

save progress

sync version

continue projection trigger


Expected reuse:

reading systems


3.19 Viewer Progress Sync Common

Purpose:

save last-opened

save view progress

continue projection trigger


Expected reuse:

viewing systems


3.20 Multilingual Label Common

Purpose:

label-key-based multilingual rendering

fallback language behavior


Expected reuse:

all multilingual apps


3.21 Multicurrency Price Display Common

Purpose:

base currency rendering

display currency rendering

historical amount label rendering


Expected reuse:

all commerce-connected apps


3.22 Review Queue Common

Purpose:

pending review list

review action buttons

approve / reject / rework / restrict behavior


Expected reuse:

governance-heavy applications


3.23 Restriction Policy Summary Common

Purpose:

blocked reason summary

restriction explanation rendering

denial reason badges


Expected reuse:

policy-driven access systems


3.24 Exhibition Eligibility Badge Common

Purpose:

render whether an asset is eligible for exhibition usage


Expected reuse:

creator systems and exhibition-connected systems


4. Promotion Priority

Priority A

Asset Metadata Editor Common

Rights Policy Editor Common

Marketplace Listing Common

Marketplace Filter Panel Common

Product Card Common

Library Shelf Common

Multilingual Label Common

Multicurrency Price Display Common


Priority B

Sales Offer Editor Common

Subscription Eligibility Editor Common

Sample Access Common

Review Queue Common

Favorite Toggle Common

Continue Reading / Continue Viewing Common


Priority C

Reader Progress Sync Common

Viewer Progress Sync Common

Restriction Policy Summary Common

Exhibition Eligibility Badge Common


5. Final Note

These are promotion candidates, not yet promoted shared components.

Promotion should be executed only after:

contract stability

adoption readiness

cross-app validation

naming and ownership review
