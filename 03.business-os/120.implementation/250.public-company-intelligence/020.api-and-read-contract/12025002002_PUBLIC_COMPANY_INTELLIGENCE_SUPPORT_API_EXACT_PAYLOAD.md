# ============================================================
# PUBLIC COMPANY INTELLIGENCE SUPPORT API EXACT PAYLOAD
# ============================================================

status: canonical
system: business-os
layer: implementation
domain: public-company-intelligence
owner: Boss
prepared_by: Zero
db_reviewer_required:
- 佐藤（DB担当）
authority_source:
- /data/data/com.termux/files/home/01.civilization-system/03.business-os/920.meta/9201491_BUSINESS_PUBLIC_COMPANY_INTELLIGENCE_IMPLEMENTATION_READY_CLOSURE_PACK.md

endpoints:
- GET /business/public-company-intelligence/company-profile
- GET /business/public-company-intelligence/officer-profile
- POST /business/public-company-intelligence/normalize/company-candidate
- POST /business/public-company-intelligence/review/decision

exact_request_example_normalize_company_candidate:
```json
{
  "source_type": "official_site",
  "source_url": "https://example.co.jp/company",
  "observed_company_name": "Example Co., Ltd.",
  "observed_corporate_identifier": "1234567890123",
  "observed_domain": "example.co.jp",
  "observed_phone_number": "03-1111-2222",
  "observed_postal_address": "Tokyo-to Example 1-2-3",
  "observed_representative_name": "Taro Example",
  "safe_review_mode": true
}
```

exact_response_example_normalize_company_candidate:
```json
{
  "normalized_company_key_candidate": "jp:1234567890123",
  "confidence_score": 0.97,
  "recommended_action": "review_required",
  "matched_existing_profile": {
    "company_public_profile_id": "uuid",
    "canonical_company_name": "EXAMPLE CO., LTD."
  },
  "reason_codes": ["consumer_safe_review_request"],
  "warnings": []
}
```

exact_request_example_review_decision:
```json
{
  "review_queue_id": "uuid",
  "decision": "approve",
  "reviewer_note": "Representative and corporate number matched official filing.",
  "publish_mode": "active",
  "override_reason_code": "strong_source_conflict"
}
```

exact_response_example_review_decision:
```json
{
  "review_queue_id": "uuid",
  "decision": "approve",
  "resulting_profile_state": "active",
  "resulting_projection_refresh_state": "queued",
  "audit_id": "uuid"
}
```

exact_read_response_minimum_company_profile:
```json
{
  "company_public_profile_id": "uuid",
  "normalized_company_key": "jp:1234567890123",
  "canonical_company_name": "EXAMPLE CO., LTD.",
  "corporate_number": "1234567890123",
  "listed_status": "listed",
  "market_name": "TSE Prime",
  "website_url": "https://example.co.jp",
  "ir_url": "https://example.co.jp/ir",
  "phone_number": "03-1111-2222",
  "postal_address": "Tokyo-to Example 1-2-3",
  "representative_name": "Taro Example",
  "profile_state": "active",
  "confidence_score": 0.97,
  "freshness_at": "2026-04-16T00:00:00+09:00",
  "warnings": [],
  "matched_sources": [],
  "officers": []
}
```

error_codes:
- invalid_query
- invalid_payload
- company_not_found
- officer_not_found
- ambiguous_company_match
- ambiguous_officer_match
- review_queue_not_found
- merge_prohibited
- source_projection_unavailable
- unauthorized

rules:
- review decision endpoint requires governed reviewer capability
- consumer apps may call normalize helper but cannot force active publish
- warnings and confidence must remain visible to consumers
