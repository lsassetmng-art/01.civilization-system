# ============================================================
# CIVILIZATION RETAIL COMMERCE ARCHITECTURE
# ============================================================

status: canonical
layer: 020.architecture
system: civilization-os
owner: Boss
prepared_by: Zero

purpose:
Define the official retail commerce architecture
for CivilizationOS digital retail.

This architecture covers:
- seller onboarding
- product listing and publication
- moderation and suspension
- price setting
- sale / discount / coupon / bundle
- purchase and entitlement grant
- refund / revoke / cancellation
- review and rating
- seller revenue allocation and settlement
- third-party product retail distribution

This architecture explicitly assumes:
- retail commerce is digital-only
- supported products are Civilization-internal digital goods
- real-world physical goods marketplace is out of scope


# ============================================================
# 1. CORE PRINCIPLE
# ============================================================

Retail commerce must separate:

- product truth
- rightsholder truth
- listing truth
- seller truth
- purchase truth
- entitlement truth
- review truth
- revenue allocation truth

Core principle:

a product may be owned by one entity
and sold by another entity

Product rightsholder and retail seller
must not be assumed identical.


# ============================================================
# 2. SELLER PRINCIPLE
# ============================================================

A seller in retail commerce may be:
- a Civilization company
- another seller-eligible entity where lawful

Seller eligibility must be determined separately
from product existence and product ownership.

A seller may:
- create listing drafts
- publish approved listings
- run campaigns where allowed
- receive revenue allocation
- be suspended if violating policy


# ============================================================
# 3. RIGHTSHOLDER PRINCIPLE
# ============================================================

A product may have one or more rightsholders.

Rightsholder truth defines:
- who owns the product-side rights
- who may authorize distribution
- who may receive revenue share
- who may revoke or restrict distribution where lawful

Rightsholder is not always the same as seller.


# ============================================================
# 4. DISTRIBUTION MODE PRINCIPLE
# ============================================================

Retail distribution must distinguish at minimum:

- self_sale
- retail_resale
- retail_agency_sale
- exclusive_distribution
- multi_retail_distribution

Meaning:

self_sale:
rightsholder and seller are the same

retail_resale:
seller is authorized to resell the product

retail_agency_sale:
seller acts as sales channel or agent for rightsholder

exclusive_distribution:
one seller has exclusive distribution right

multi_retail_distribution:
multiple sellers may sell the same product lawfully


# ============================================================
# 5. LISTING PRINCIPLE
# ============================================================

A product and a listing are distinct.

Product truth defines:
- what the thing is
- its origin OS
- its entitlement and license model
- its rightsholder basis

Listing truth defines:
- who is currently selling it
- which storefront data is shown
- what price is active
- what campaign state is active
- whether it is published, hidden, suspended, or archived


# ============================================================
# 6. PRICE PRINCIPLE
# ============================================================

Retail pricing must distinguish:
- base price
- active sale price
- coupon-adjusted price
- bundle-adjusted price
- final purchase price

These must not collapse into one price only.

Price behavior must be explicit
and compatible with nation-currency rules where relevant.


# ============================================================
# 7. PURCHASE PRINCIPLE
# ============================================================

Purchase must distinguish:
- purchase intent
- price resolution
- payment completion
- purchase record
- entitlement grant
- post-purchase state

Entitlement must not be treated as granted
before purchase completion unless policy explicitly allows it.


# ============================================================
# 8. REVENUE PRINCIPLE
# ============================================================

Revenue distribution must distinguish:
- gross purchase amount
- platform fee
- tax or public levy where modeled
- seller share
- rightsholder share
- co-rightsholder share where modeled
- refund adjustment
- reserve/holdback where modeled

Revenue allocation truth is separate from storefront price display.

A seller may receive only distribution fee or channel fee
in agency-style distribution.


# ============================================================
# 9. MODERATION / ENFORCEMENT PRINCIPLE
# ============================================================

Retail commerce must support:
- listing hold
- listing suspension
- product delisting
- seller suspension
- distribution-right suspension
- entitlement hold or revoke where lawful
- review moderation
- campaign invalidation

Moderation state must be explicit.


# ============================================================
# 10. FINAL ARCHITECTURAL RULE
# ============================================================

Retail commerce in CivilizationOS must be:
- digital-only
- listing-aware
- rightsholder-aware
- seller-aware
- entitlement-aware
- moderation-aware
- revenue-aware
- explicit in state transitions

Core summary:

- another company's product may be sold by a retail company
- rightsholder and seller are distinct roles
- distribution mode must be explicit
- revenue allocation must support multi-party distribution
