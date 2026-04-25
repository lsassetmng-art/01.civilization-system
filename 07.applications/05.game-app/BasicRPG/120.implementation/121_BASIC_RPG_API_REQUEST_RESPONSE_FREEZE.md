# ============================================================
# BASIC RPG API REQUEST RESPONSE FREEZE
# ============================================================

status: draft
layer: implementation
system: applications
category: game-app
application: BasicRPG
owner: Boss
prepared_by: Zero

api_examples:

POST /api/rpg/profile/bootstrap
request:
{
  "sessionToken": "string",
  "locale": "ja-JP",
  "displayCurrency": "JPY"
}

response:
{
  "playerId": "uuid",
  "displayName": "string",
  "chapterNo": 1,
  "accountLevel": 1,
  "stamina": { "current": 60, "max": 60 },
  "wallet": { "softGold": 500, "premiumGem": 0, "paidGem": 0, "freeGem": 0 },
  "selectedLocale": "ja-JP",
  "selectedDisplayCurrency": "JPY"
}

POST /api/rpg/quest/accept
request:
{
  "playerId": "uuid",
  "questCode": "CH01-Q01"
}

response:
{
  "questProgressId": "uuid",
  "questState": "accepted",
  "battleSourceCode": "CH01-Q01-B01"
}

POST /api/rpg/battle/resolve
request:
{
  "playerId": "uuid",
  "battleType": "quest",
  "sourceCode": "CH01-Q01-B01",
  "partyHeroOwnedIds": ["uuid","uuid","uuid"],
  "seedValue": "string",
  "actionLog": []
}

response:
{
  "battleSessionId": "uuid",
  "resultCode": "victory",
  "rewards": [
    { "rewardType": "soft_gold", "rewardCode": "SOFT_GOLD", "quantity": 120 },
    { "rewardType": "item", "rewardCode": "POTION_S", "quantity": 2 }
  ],
  "questState": "completed_unclaimed"
}

POST /api/rpg/store/purchase/record
request:
{
  "playerId": "uuid",
  "catalogCode": "ADVENTURER_PASS_MONTHLY",
  "billingChannel": "apple",
  "storeTransactionId": "string",
  "displayCurrencyCode": "JPY",
  "displayPriceAmount": "800"
}

response:
{
  "purchaseOrderId": "uuid",
  "purchaseState": "recorded",
  "entitlementState": "active"
}
