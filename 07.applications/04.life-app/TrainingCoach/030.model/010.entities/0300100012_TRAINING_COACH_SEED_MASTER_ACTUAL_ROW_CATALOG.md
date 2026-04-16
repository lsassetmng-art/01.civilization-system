# ============================================================
# TRAINING COACH SEED MASTER ACTUAL ROW CATALOG
# ============================================================

status: canonical-draft
phase: design-consolidation
system: TrainingCoach
layer: 030.model
owner: Boss
prepared_by: Zero
db_reviewer: 佐藤

purpose:
  - seed 対象マスタの実際の初期行候補を整理する
  - どのカテゴリ、種目、安全注意、難易度ルールを初期投入するか明確化する
  - 実装前のカタログ参照資料とする

seed_scope_policy:
  - 初期リリースに必要な最小行のみを置く
  - aggressive / advanced 種目は初期 seed に含めない
  - safety notice のない種目は初期投入しない
  - text guide のみで成立する行を優先する

exercise_category_rows:

- exercise_category_code: yoga
  display_name_key: TC_CATEGORY_yoga_name
  sort_order: 10
  is_active: true

- exercise_category_code: stretch
  display_name_key: TC_CATEGORY_stretch_name
  sort_order: 20
  is_active: true

- exercise_category_code: cardio
  display_name_key: TC_CATEGORY_cardio_name
  sort_order: 30
  is_active: true

- exercise_category_code: strength
  display_name_key: TC_CATEGORY_strength_name
  sort_order: 40
  is_active: true

- exercise_category_code: equipment
  display_name_key: TC_CATEGORY_equipment_name
  sort_order: 50
  is_active: true

- exercise_category_code: daily_activity
  display_name_key: TC_CATEGORY_daily_activity_name
  sort_order: 60
  is_active: true

exercise_item_rows:

- exercise_item_code: yoga_morning_breath
  exercise_category_code: yoga
  exercise_name_key: TC_EXERCISE_yoga_morning_breath_name
  guidance_level: standard
  default_reps: null
  default_sets: null
  default_seconds: 180
  is_active: true

- exercise_item_code: yoga_easy_sun_flow
  exercise_category_code: yoga
  exercise_name_key: TC_EXERCISE_yoga_easy_sun_flow_name
  guidance_level: standard
  default_reps: null
  default_sets: 1
  default_seconds: 300
  is_active: true

- exercise_item_code: stretch_neck
  exercise_category_code: stretch
  exercise_name_key: TC_EXERCISE_stretch_neck_name
  guidance_level: standard
  default_reps: null
  default_sets: 1
  default_seconds: 120
  is_active: true

- exercise_item_code: stretch_shoulder
  exercise_category_code: stretch
  exercise_name_key: TC_EXERCISE_stretch_shoulder_name
  guidance_level: standard
  default_reps: null
  default_sets: 1
  default_seconds: 180
  is_active: true

- exercise_item_code: stretch_hamstring
  exercise_category_code: stretch
  exercise_name_key: TC_EXERCISE_stretch_hamstring_name
  guidance_level: standard
  default_reps: null
  default_sets: 1
  default_seconds: 180
  is_active: true

- exercise_item_code: cardio_walk_indoor
  exercise_category_code: cardio
  exercise_name_key: TC_EXERCISE_cardio_walk_indoor_name
  guidance_level: minimal
  default_reps: null
  default_sets: 1
  default_seconds: 600
  is_active: true

- exercise_item_code: cardio_light_step
  exercise_category_code: cardio
  exercise_name_key: TC_EXERCISE_cardio_light_step_name
  guidance_level: minimal
  default_reps: null
  default_sets: 1
  default_seconds: 300
  is_active: true

- exercise_item_code: strength_squat_basic
  exercise_category_code: strength
  exercise_name_key: TC_EXERCISE_strength_squat_basic_name
  guidance_level: detailed
  default_reps: 10
  default_sets: 2
  default_seconds: null
  is_active: true

- exercise_item_code: strength_wall_push
  exercise_category_code: strength
  exercise_name_key: TC_EXERCISE_strength_wall_push_name
  guidance_level: detailed
  default_reps: 8
  default_sets: 2
  default_seconds: null
  is_active: true

- exercise_item_code: equipment_band_row_basic
  exercise_category_code: equipment
  exercise_name_key: TC_EXERCISE_equipment_band_row_basic_name
  guidance_level: detailed
  default_reps: 10
  default_sets: 2
  default_seconds: null
  is_active: true

- exercise_item_code: daily_short_mobility_break
  exercise_category_code: daily_activity
  exercise_name_key: TC_EXERCISE_daily_short_mobility_break_name
  guidance_level: minimal
  default_reps: null
  default_sets: 1
  default_seconds: 180
  is_active: true

exercise_item_safety_notice_links:

- exercise_item_code: yoga_morning_breath
  safety_notice_codes:
    - TC_SAFE_001
    - TC_SAFE_003

- exercise_item_code: yoga_easy_sun_flow
  safety_notice_codes:
    - TC_SAFE_001
    - TC_SAFE_002
    - TC_SAFE_003

- exercise_item_code: stretch_neck
  safety_notice_codes:
    - TC_SAFE_001
    - TC_SAFE_002

- exercise_item_code: stretch_shoulder
  safety_notice_codes:
    - TC_SAFE_001
    - TC_SAFE_002

- exercise_item_code: stretch_hamstring
  safety_notice_codes:
    - TC_SAFE_001
    - TC_SAFE_002

- exercise_item_code: cardio_walk_indoor
  safety_notice_codes:
    - TC_SAFE_001
    - TC_SAFE_003

- exercise_item_code: cardio_light_step
  safety_notice_codes:
    - TC_SAFE_001
    - TC_SAFE_003

- exercise_item_code: strength_squat_basic
  safety_notice_codes:
    - TC_SAFE_001
    - TC_SAFE_002
    - TC_SAFE_003

- exercise_item_code: strength_wall_push
  safety_notice_codes:
    - TC_SAFE_001
    - TC_SAFE_002

- exercise_item_code: equipment_band_row_basic
  safety_notice_codes:
    - TC_SAFE_001
    - TC_SAFE_002
    - TC_SAFE_003

- exercise_item_code: daily_short_mobility_break
  safety_notice_codes:
    - TC_SAFE_001
    - TC_SAFE_003

difficulty_rule_rows:

- difficulty_rule_code: fatigue_4_light_mode
  rule_scope: daily_recommendation
  fatigue_level: 4
  body_condition: null
  readiness_hint: null
  recommendation_mode: light_mode_recommended
  difficulty_adjustment_type: decrease
  is_active: true

- difficulty_rule_code: fatigue_5_rest_mode
  rule_scope: daily_recommendation
  fatigue_level: 5
  body_condition: null
  readiness_hint: null
  recommendation_mode: rest_recommended
  difficulty_adjustment_type: rest
  is_active: true

- difficulty_rule_code: condition_bad_rest_mode
  rule_scope: daily_recommendation
  fatigue_level: null
  body_condition: bad
  readiness_hint: null
  recommendation_mode: rest_recommended
  difficulty_adjustment_type: rest
  is_active: true

- difficulty_rule_code: condition_tired_light_mode
  rule_scope: daily_recommendation
  fatigue_level: null
  body_condition: tired
  readiness_hint: null
  recommendation_mode: light_mode_recommended
  difficulty_adjustment_type: decrease
  is_active: true

- difficulty_rule_code: readiness_high_keep_normal
  rule_scope: daily_recommendation
  fatigue_level: null
  body_condition: null
  readiness_hint: high
  recommendation_mode: continue_normal
  difficulty_adjustment_type: keep
  is_active: true

guide_content_seed_rows:

- guide_content_code: guide_yoga_morning_breath_ja
  exercise_item_code: yoga_morning_breath
  locale: ja-JP
  title_key: TC_GUIDE_yoga_morning_breath_title
  body_text_key: TC_GUIDE_yoga_morning_breath_body
  media_type: text
  media_url: null
  version_no: 1
  is_active: true

- guide_content_code: guide_stretch_neck_ja
  exercise_item_code: stretch_neck
  locale: ja-JP
  title_key: TC_GUIDE_stretch_neck_title
  body_text_key: TC_GUIDE_stretch_neck_body
  media_type: text
  media_url: null
  version_no: 1
  is_active: true

- guide_content_code: guide_cardio_walk_indoor_ja
  exercise_item_code: cardio_walk_indoor
  locale: ja-JP
  title_key: TC_GUIDE_cardio_walk_indoor_title
  body_text_key: TC_GUIDE_cardio_walk_indoor_body
  media_type: text
  media_url: null
  version_no: 1
  is_active: true

- guide_content_code: guide_strength_squat_basic_ja
  exercise_item_code: strength_squat_basic
  locale: ja-JP
  title_key: TC_GUIDE_strength_squat_basic_title
  body_text_key: TC_GUIDE_strength_squat_basic_body
  media_type: text
  media_url: null
  version_no: 1
  is_active: true

notes:
  - 初期は ja-JP を正本 seed とする
  - en は copy 資産が揃った後に段階投入候補
  - 実際の table insert では code -> id 変換方針を別途決める
