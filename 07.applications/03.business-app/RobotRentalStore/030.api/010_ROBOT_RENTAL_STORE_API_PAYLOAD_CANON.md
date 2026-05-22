# RobotRentalStore API Payload Canon

## 1. 方針
RobotRentalStoreはBusinessOSのレンタルAPIへ接続する。
今回のfoundationではAPI実装しない。

## 2. Candidate endpoints

### GET /api/v1/business/robot-rental/catalog
目的:
- レンタル可能ロボット一覧を取得

response example:
{
  "ok": true,
  "items": [
    {
      "model_code": "HD-R3",
      "model_name_ja": "ワーカー",
      "series_code": "HD",
      "manufacturer_code": "helios_dynamics",
      "role_codes": ["Worker"],
      "short_description": "汎用AIワーカー",
      "starting_price_jpy": 500,
      "rental_units": ["hour", "day", "month"],
      "safety_group": "business"
    }
  ]
}

### GET /api/v1/business/robot-rental/models/{model_code}
目的:
- ロボット詳細を取得

response example:
{
  "ok": true,
  "item": {
    "model_code": "MG-NORN-001",
    "model_name_ja": "ウルズ",
    "series_code": "MEGAMI",
    "role_codes": ["Advisor", "Worker", "Lover"],
    "personality_summary": "過去重視 / クーデレ系",
    "public_profile": {
      "height_cm": 188,
      "bust_cm": 94,
      "waist_cm": 62,
      "hip_cm": 90
    },
    "cx_reference": {
      "role_knowledge_available": true,
      "model_full_reference_available": true
    }
  }
}

### POST /api/v1/business/robot-rental/quote
目的:
- レンタル見積を作成

request example:
{
  "app_code": "RobotRentalStore",
  "model_code": "HD-R3",
  "role_code": "Worker",
  "rental_unit": "hour",
  "duration_quantity": 1,
  "quantity": 1,
  "use_free_ticket": false
}

response example:
{
  "ok": true,
  "quote": {
    "quote_id": "temporary-or-db-id",
    "model_code": "HD-R3",
    "role_code": "Worker",
    "subtotal_jpy": 500,
    "discount_jpy": 0,
    "total_jpy": 500,
    "expires_at": "ISO-8601"
  }
}

### POST /api/v1/business/robot-rental/contracts/confirm
目的:
- レンタル契約を確定

request example:
{
  "quote_id": "quote-id",
  "confirm": true,
  "payment_method_code": "app_default"
}

response example:
{
  "ok": true,
  "contract_id": "contract-id",
  "status_code": "confirmed"
}

## 3. 注意
- quoteは価格確認。
- confirmは契約確定。
- DB書込はconfirm以降。
- RLS/company/user identityは別フェーズで固定。
