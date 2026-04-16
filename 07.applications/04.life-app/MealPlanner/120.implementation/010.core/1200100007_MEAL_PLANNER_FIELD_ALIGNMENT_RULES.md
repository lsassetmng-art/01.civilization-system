# MealPlanner Field Alignment Rules

## 1. alignment_goal
API, Screen, DB の field semantics を一致させる。

## 2. exact_alignment_rules
- household_id:
  - always required across API / DB / Screen context
- meal_plan_id:
  - required after plan creation
- meal_slot_id:
  - required for update / history record / slot-specific actions
- budget_tier:
  - required and non_null everywhere it appears as a setting
- source_type:
  - required in persisted records and menu result displays
- publication_status:
  - required in persisted user_menu, optional in some read models
- menu_title_snapshot:
  - required in DB storage
- menu_title:
  - required in UI display
- ingredient_name_snapshot:
  - required in DB storage
- ingredient_name:
  - required in UI display and create/update payload fallbacks

## 3. null_vs_empty_array_rules
- likes / dislikes / allergy_tags:
  - DB nullable allowed
  - API response preferred []
- cuisine_tags / season_tags / dietary_tags:
  - DB nullable allowed
  - API response preferred []
- dietary_rules request:
  - omitted allowed
  - if present, prefer []
- pantry_items request:
  - omitted allowed
  - if present, prefer []

## 4. client_rules
- client must not send server_managed timestamps
- client must not send source_type override for cx22073jw_base items
- client must not send publication_status override on create
- client should omit unchanged optional fields on partial update
- client may send null only for nullable fields, not for required fields

## 5. server_rules
- server should reject required=null
- server should reject forbidden_on_create fields
- server should fill defaults for omitted optional fields when policy exists
- server should preserve snapshot text when external catalog changes
