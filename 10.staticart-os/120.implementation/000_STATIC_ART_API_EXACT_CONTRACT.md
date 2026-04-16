# ============================================================
# STATIC ART API EXACT CONTRACT
# ============================================================

status: implementation-ready-api
layer: implementation
system: StaticArtOS
schema: staticart
owner: Boss
prepared_by: Zero
language: English

## 1. Create Asset Draft

POST /v1/staticart/assets/draft

request:
{
  "assetType": "ebook",
  "creatorId": "creator_001",
  "publisherId": "publisher_001",
  "initialLanguage": "en"
}

response:
{
  "assetId": "ast_0001",
  "lifecycleState": "draft",
  "allowedNextActions": [
    "uploadFiles",
    "saveMetadata"
  ]
}

## 2. Save Metadata

PUT /v1/staticart/assets/{assetId}/metadata

request:
{
  "localizations": [
    {
      "languageCode": "en",
      "title": "The Quiet Museum",
      "subtitle": "Collected Static Works",
      "shortDescription": "A curated digital booklet.",
      "longDescription": "Full long description here."
    }
  ],
  "categoryIds": ["cat_booklet"],
  "tagIds": ["tag_curated", "tag_visual"]
}

response:
{
  "assetId": "ast_0001",
  "metadataCompleted": true,
  "allowedNextActions": [
    "saveRights",
    "saveSales",
    "uploadPreview"
  ]
}

## 3. Save Commercial Settings

PUT /v1/staticart/assets/{assetId}/commercial-settings

request:
{
  "rights": {
    "exhibitionAllowed": true,
    "commercialUseAllowed": false,
    "derivativeAllowed": false,
    "regionScope": ["JP", "US"],
    "ageRating": "general"
  },
  "sales": {
    "saleType": "buy_now",
    "baseCurrency": "USD",
    "basePrice": 9.99,
    "status": "for_sale"
  },
  "subscription": {
    "subscriptionEligible": true,
    "subscriptionStartAt": "2026-05-01T00:00:00Z",
    "subscriptionEndAt": null
  }
}

response:
{
  "assetId": "ast_0001",
  "rightsSaved": true,
  "salesSaved": true,
  "subscriptionSaved": true,
  "allowedNextActions": [
    "submitForReview"
  ]
}

## 4. Submit Review

POST /v1/staticart/assets/{assetId}/submit-review

request:
{
  "reviewTypes": [
    "metadata",
    "rights",
    "marketplace",
    "subscription"
  ]
}

response:
{
  "assetId": "ast_0001",
  "lifecycleState": "review_pending",
  "reviewStatus": "pending"
}

## 5. Marketplace List

GET /v1/staticart/marketplace/list?tab=ebook&sort=best_selling&subscriptionIncluded=true&language=en

response:
{
  "tab": "ebook",
  "sort": "best_selling",
  "filtersApplied": {
    "subscriptionIncluded": true,
    "language": "en"
  },
  "items": [
    {
      "assetId": "ast_0001",
      "title": "The Quiet Museum",
      "creatorName": "Studio North",
      "assetType": "ebook",
      "price": {
        "amount": 9.99,
        "currency": "USD"
      },
      "badges": [
        "subscription_included",
        "sample_available"
      ],
      "ownedState": "none",
      "thumbnailUrl": "..."
    }
  ],
  "nextCursor": "cur_002"
}

## 6. Product Detail

GET /v1/staticart/assets/{assetId}/detail

response:
{
  "assetId": "ast_0001",
  "assetType": "ebook",
  "title": "The Quiet Museum",
  "subtitle": "Collected Static Works",
  "description": "Full long description here.",
  "creator": {
    "creatorId": "creator_001",
    "displayName": "Studio North"
  },
  "rightsSummary": {
    "exhibitionAllowed": true,
    "commercialUseAllowed": false,
    "ageRating": "general"
  },
  "sales": {
    "saleType": "buy_now",
    "price": {
      "amount": 9.99,
      "currency": "USD"
    }
  },
  "subscription": {
    "included": true
  },
  "sampleAvailable": true,
  "ownedState": "none",
  "allowedActions": [
    "openSample",
    "purchase"
  ]
}

## 7. Reflect Purchase

POST /v1/staticart/entitlements/reflect-purchase

request:
{
  "externalTransactionId": "txn_10001",
  "userId": "usr_001",
  "assetId": "ast_0001",
  "entitlementType": "owned_permanent",
  "purchasedAt": "2026-04-16T08:00:00Z"
}

response:
{
  "assetId": "ast_0001",
  "userId": "usr_001",
  "entitlementState": "owned_permanent",
  "libraryVisible": true,
  "allowedActions": [
    "openReader",
    "favorite",
    "addBookmark"
  ]
}

## 8. Save Reader Progress

POST /v1/staticart/reader/progress

request:
{
  "userId": "usr_001",
  "assetId": "ast_0001",
  "currentLocator": "epubcfi(/6/8!/4/2/16)",
  "progressPercent": 42.3,
  "deviceType": "iphone"
}

response:
{
  "saved": true,
  "syncVersion": 18,
  "continueReadingVisible": true
}
