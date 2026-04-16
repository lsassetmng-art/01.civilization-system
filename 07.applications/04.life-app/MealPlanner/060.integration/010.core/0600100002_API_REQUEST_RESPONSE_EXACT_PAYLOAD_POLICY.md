# API Request / Response Exact Payload Policy

## 1. 目的
MealPlanner の主要 API について、request / response の exact payload を固定し、
画面・実装・DB設計のぶれを抑える。

## 2. 共通原則
- request / response は JSON を正とする
- キー名は snake_case を正とする
- 日付は YYYY-MM-DD
- 日時は ISO-8601
- 通貨は currency_code
- meal_category は breakfast / lunch / dinner / snack
- plan_horizon は daily / weekly / monthly
- budget_tier は saving / standard / generous
- source_type は system_seed / cx22073jw_base / user_private / user_published
- publication_status は private / draft / review_pending / published / rejected

## 3. API分類
- plan APIs
- menu APIs
- shopping APIs
- pantry APIs
- export APIs
- publish APIs
- settings APIs

## 4. エラーレスポンス共通
{
  "success": false,
  "error": {
    "code": "string",
    "message": "string",
    "details": {}
  }
}

## 5. 正常レスポンス共通
{
  "success": true,
  "data": {}
}
