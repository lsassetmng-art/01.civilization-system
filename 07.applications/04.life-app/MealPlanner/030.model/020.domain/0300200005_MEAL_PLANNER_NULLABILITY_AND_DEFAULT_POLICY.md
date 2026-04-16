# MealPlanner Nullability And Default Policy

## 1. required_non_null_by_default
原則として、以下は required + non_null を優先する
- identifiers
- foreign keys
- enum-like business state
- household boundary keys
- display snapshot fields
- created_at / updated_at などの監査列

## 2. nullable_allowed_domains
nullable を許可しやすい領域
- memo / note
- review_note
- changed_reason
- optional estimates
- expiry_date
- prep_time_minutes
- estimated_cost
- generated file_name before export completion
- reviewed_at before review completion

## 3. default_recommended_fields
- is_active: true
- strict_mode_flag: false
- salt_attention_flag: false
- protein_focus_flag: false
- changed_flag: false
- actual_status: planned
- opened_flag: false
- checked_flag: false
- lifeos_publish_flag: false
- usage_count: 0
- encoding: utf-8

## 4. api_response_default_shape
- optional array-like response fields:
  - prefer []
- optional object-like response fields:
  - may return null
- optional scalar text:
  - may return null
- optional numeric estimates:
  - may return null

## 5. caution
nullability は「未確定」を表すために使い、
「実装が面倒だから null 可」にしない。
