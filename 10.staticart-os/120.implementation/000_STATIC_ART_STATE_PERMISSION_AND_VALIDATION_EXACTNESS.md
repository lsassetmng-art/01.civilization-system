# ============================================================
# STATIC ART STATE PERMISSION AND VALIDATION EXACTNESS
# ============================================================

status: implementation-ready-exactness
layer: implementation
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Lifecycle States

- draft
- files_uploaded
- metadata_completed
- self_check_passed
- review_pending
- approved
- rejected
- published_marketplace
- published_library_only
- delisted
- restricted
- replaced
- archived

## 2. Sales States

- not_for_sale
- for_sale
- preorder
- sale_paused
- sold_out_limited
- sale_ended

## 3. Subscription States

- not_included
- included_active
- included_scheduled
- included_paused
- included_ended

## 4. Entitlement States

- none
- sample_only
- subscription_access
- owned_permanent
- owned_and_subscription_access
- blocked_by_region
- blocked_by_age_policy
- blocked_by_rights_change

## 5. Permission Rules

### Creator
May:
- create and edit own drafts
- submit for review
- manage metadata, rights, sales, and subscription settings for allowed assets

May not:
- approve review as admin
- override restriction without admin authority

### Buyer / Reader / Subscriber
May:
- browse marketplace
- open owned or subscribed assets
- manage own favorites, bookmarks, and progress

May not:
- mutate asset master
- mutate rights or publish state

### Admin
May:
- review, approve, reject, restrict, and delist
- inspect audit and projection reason codes

## 6. Validation Rules

Asset creation requires:
- valid assetType
- creatorId
- initialLanguage

Marketplace publication requires:
- files present
- metadata present in at least one language
- rights configured
- review approved

Subscription inclusion requires:
- sales or distribution eligibility configured
- subscriptionEligible true
- creator or publisher opt-in where required

Reader progress save requires:
- valid full-open entitlement
- publishing asset type

Viewer progress save requires:
- valid full-open entitlement
- visual asset type
