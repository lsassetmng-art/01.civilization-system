# CX22073JW Data Domain to Table Mapping
- project: CX22073JW
- document_type: data-domain-to-table-mapping
- status: canonical-draft
- owner: Boss
- prepared_by: Zero

## 1. Purpose
This document maps each major data domain to its representative tables.

## 2. Mapping

### 2-1. Knowledge Core
- `domain_master`
- `space_master`
- `scope_master`
- `article`
- `chunk`
- `faq`
- `caller_master`
- `caller_scope_binding`
- `disclaimer_master`
- `route_policy`

### 2-2. Entity / Character
- `entity_master`
- `character_profile`

### 2-3. Relation Knowledge
- `entity_alias`
- `relation_master`
- `article_entity_binding`

### 2-4. Academic Classification
- `discipline_master`
- `topic_master`
- `article_discipline_binding`
- `article_topic_binding`

### 2-5. Audience / Difficulty
- `difficulty_profile_master`
- `audience_profile_master`
- `article_profile_binding`

### 2-6. Summaries
- `space_summary`
- `scope_summary`
- `topic_summary`

### 2-7. Learning Path
- `prerequisite_relation`
- `learning_path`
- `learning_path_item`

### 2-8. Source / Review
- `source_master`
- `article_source`
- `review_status_master`
- `article_review_log`

### 2-9. Timeline / History
- `timeline_event`
- `event_relation`
- `event_entity_binding`

### 2-10. Retrieval Strategy
- `retrieval_profile`
- `scope_retrieval_binding`

### 2-11. Answer Style
- `answer_style_profile`
- `response_template`
- `scope_style_binding`

### 2-12. Improvement / Analytics
- `session_log`
- `answer_source_log`
- `question_pattern`
- `knowledge_gap_log`

### 2-13. Registry / Governance
- `dataset_registry`
- `source_registry`
- `taxonomy_registry`
- `publication_review_registry`
- `version_history_registry`

### 2-14. Health Reference
- `health_metric_master`
- `health_measurement_condition_master`
- `health_reference_profile`
- `health_reference_source`
- `health_reference_range`

### 2-15. Health Score
- `health_score_profile`
- `health_score_metric_weight`
- `health_score_rule_set`
- `health_score_metric_band`
- `health_score_total_band`
- `health_score_comment_template`
- `health_score_composite_rule`

### 2-16. Food / Nutrition
- `food_item_master`
- `food_alias`
- `nutrient_master`
- `food_nutrient_fact`
- `ingredient_category_master`
- `ingredient_allergen`
- `ingredient_dietary_tag`
- `ingredient_price_band`

### 2-17. Intake Reference
- `nutrition_reference_profile`
- `nutrition_reference_item_master`
- `nutrition_reference_source`
- `nutrition_intake_reference`

### 2-18. Exercise Reference
- `exercise_master`
- `exercise_bodypart_map`
- `exercise_caution_template`

### 2-19. Lifestyle Benchmark
- current:
  - `health_population_average`
  - `health_guidance_template`
- future candidate:
  - `lifestyle_reference_profile`
  - `lifestyle_benchmark_reference`
  - `habit_score_band`
  - `habit_comment_template`

### 2-20. Recipe / Meal Plan
- `recipe_template_master`
- `recipe_template_item`
- `meal_plan_template`
- `meal_plan_template_slot`

### 2-21. Legal Support
- `legal_topic_master`
- `legal_document_type_master`
- `legal_consultation_checklist_template`

### 2-22. Inheritance Support
- `inheritance_asset_category_master`
- `inheritance_checklist_template`

### 2-23. End-of-Life Support
- `end_of_life_preference_category_master`

### 2-24. Life Event Template
- `life_event_template_master`

### 2-25. CareerLaunch Candidate Areas
reference/template side candidates:
- future resume template master
- future work history template master
- future motivation template master
- future interview preparation checklist template
- future thank-you message template
- future advisor share policy template
- future persona/background option master

## 3. Conclusion
This mapping is the bridge between architecture-level domains and model-level assets.
