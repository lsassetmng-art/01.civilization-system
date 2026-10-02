# Knowledge Domain Brain Expansion Candidate

## Status

- DB_WRITE=NO
- DDL_APPLY=NO
- PATCH=NO
- API_POST=NO
- GIT_PUSH=NO
- This is a design expansion note only.

---

# 1. Core decision

Artist, architecture, IT, manga, video creator, business, education, science, legal/safety, and other domains should not be implemented as isolated robot-specific databases.

Correct model:

- CX22073JW stores non-agentic knowledge domain reference data.
- AIWorkerOS stores robot read policies, capability profiles, execution control, analysis results, quality reviews, and deliverable packaging.
- Consuming apps store only request/result/review metadata.

---

# 2. Knowledge domain taxonomy candidates

## 2.1 artist_brain

Purpose:
- visual expression
- music
- illustration
- design
- color
- composition
- style
- creative presentation

Candidate CX reference:
- cx22073jw.artist_medium_taxonomy
- cx22073jw.artist_style_reference
- cx22073jw.artist_technique_reference
- cx22073jw.artist_color_palette_reference
- cx22073jw.artist_music_theory_reference
- cx22073jw.artist_video_direction_reference
- cx22073jw.artist_quality_rubric_reference
- cx22073jw.artist_rights_risk_reference

---

## 2.2 architecture_brain

Purpose:
- building design
- space planning
- zoning
- circulation
- interior
- landscape
- material
- safety/code caution

Candidate CX reference:
- cx22073jw.architecture_style_reference
- cx22073jw.architecture_space_planning_reference
- cx22073jw.architecture_building_type_reference
- cx22073jw.architecture_material_reference
- cx22073jw.architecture_structure_basic_reference
- cx22073jw.architecture_environment_design_reference
- cx22073jw.architecture_code_safety_caution
- cx22073jw.architecture_interior_design_reference
- cx22073jw.architecture_landscape_design_reference
- cx22073jw.architecture_presentation_reference

Boundary:
- final construction, structural safety, fire safety, and legal compliance require human expert review.

---

## 2.3 it_technology_brain

Purpose:
- software design
- implementation
- database
- API
- UI
- test
- security
- operations
- guardrails

Candidate CX reference:
- cx22073jw.it_software_architecture_reference
- cx22073jw.it_api_design_reference
- cx22073jw.it_database_design_reference
- cx22073jw.it_ui_ux_reference
- cx22073jw.it_testing_reference
- cx22073jw.it_security_reference
- cx22073jw.it_operation_reference
- cx22073jw.it_development_guardrail_reference

AIWorkerOS relation:
- guardrail decision and mistake-prevention execution should remain in AIWorkerOS Guardrail Knowledge DB.
- CX22073JW may provide technical background/reference only.

---

## 2.4 manga_comic_brain

Purpose:
- manga planning
- character design
- panel layout
- storyboard/name
- dialogue
- visual pacing
- serialization structure
- genre conventions

Candidate CX reference:
- cx22073jw.manga_genre_reference
- cx22073jw.manga_panel_layout_reference
- cx22073jw.manga_storyboard_reference
- cx22073jw.manga_character_design_reference
- cx22073jw.manga_dialogue_reference
- cx22073jw.manga_visual_pacing_reference
- cx22073jw.manga_background_reference
- cx22073jw.manga_rights_risk_reference

Related domains:
- artist_brain
- writing_story_brain
- rights_safety_brain
- marketing_brain

Boundary:
- avoid direct imitation of existing manga artists, characters, titles, or copyrighted settings.

---

## 2.5 video_creator_brain

Purpose:
- video planning
- script
- storyboard
- shooting
- editing
- thumbnail
- BGM/SE
- short video
- streaming content
- platform optimization

Candidate CX reference:
- cx22073jw.video_content_planning_reference
- cx22073jw.video_script_reference
- cx22073jw.video_storyboard_reference
- cx22073jw.video_editing_reference
- cx22073jw.video_thumbnail_reference
- cx22073jw.video_audio_direction_reference
- cx22073jw.video_platform_format_reference
- cx22073jw.video_rights_risk_reference

Related domains:
- artist_brain
- music/audio
- marketing_brain
- rights_safety_brain

---

## 2.6 writing_story_brain

Purpose:
- novels
- scripts
- worldbuilding
- dialogue
- plot
- character arc
- scenario writing
- copywriting

Candidate CX reference:
- cx22073jw.writing_genre_reference
- cx22073jw.writing_plot_structure_reference
- cx22073jw.writing_character_arc_reference
- cx22073jw.writing_dialogue_reference
- cx22073jw.writing_worldbuilding_reference
- cx22073jw.writing_copywriting_reference
- cx22073jw.writing_quality_rubric_reference

---

## 2.7 game_design_brain

Purpose:
- game concept
- level design
- game balance
- quest
- item
- character
- reward
- UI
- tutorial
- worldbuilding

Candidate CX reference:
- cx22073jw.game_design_genre_reference
- cx22073jw.game_mechanics_reference
- cx22073jw.game_level_design_reference
- cx22073jw.game_balance_reference
- cx22073jw.game_reward_design_reference
- cx22073jw.game_ui_reference
- cx22073jw.game_worldbuilding_reference

Related domains:
- artist_brain
- writing_story_brain
- it_technology_brain
- marketing_brain

---

## 2.8 business_marketing_brain

Purpose:
- product planning
- brand
- advertising
- LP
- SNS
- sales funnel
- customer analysis
- pricing support

Candidate CX reference:
- cx22073jw.business_product_planning_reference
- cx22073jw.business_marketing_strategy_reference
- cx22073jw.business_brand_reference
- cx22073jw.business_copywriting_reference
- cx22073jw.business_sales_funnel_reference
- cx22073jw.business_customer_analysis_reference
- cx22073jw.business_pricing_reference

Boundary:
- financial/legal decisions require proper review where applicable.

---

## 2.9 legal_rights_safety_brain

Purpose:
- copyright caution
- trademark caution
- portrait/voice caution
- contract caution
- commercial use caution
- content safety
- human review requirements

Candidate CX reference:
- cx22073jw.legal_copyright_caution_reference
- cx22073jw.legal_trademark_caution_reference
- cx22073jw.legal_portrait_voice_caution_reference
- cx22073jw.legal_contract_caution_reference
- cx22073jw.legal_commercial_use_caution_reference
- cx22073jw.safety_content_boundary_reference
- cx22073jw.human_review_requirement_reference

AIWorkerOS relation:
- final runtime block/allow/escalation logic belongs to AIWorkerOS.
- CX22073JW stores reference/caution background only.

---

## 2.10 education_training_brain

Purpose:
- curriculum
- lesson design
- quiz
- explanation
- training plan
- skill evaluation

Candidate CX reference:
- cx22073jw.education_curriculum_reference
- cx22073jw.education_lesson_design_reference
- cx22073jw.education_quiz_design_reference
- cx22073jw.education_explanation_reference
- cx22073jw.education_training_program_reference
- cx22073jw.education_evaluation_reference

---

## 2.11 science_engineering_brain

Purpose:
- science
- engineering
- manufacturing
- material
- machine
- robotics
- experiment caution

Candidate CX reference:
- cx22073jw.science_domain_reference
- cx22073jw.engineering_design_reference
- cx22073jw.manufacturing_process_reference
- cx22073jw.material_science_reference
- cx22073jw.mechanical_design_reference
- cx22073jw.robotics_reference
- cx22073jw.experiment_safety_caution_reference

Boundary:
- dangerous experiments, weapons, harmful engineering, and real-world hazardous procedures require strict safety handling.

---

## 2.12 healthcare_wellness_brain

Purpose:
- general wellness
- lifestyle
- health education
- caution and escalation

Candidate CX reference:
- cx22073jw.health_general_reference
- cx22073jw.wellness_lifestyle_reference
- cx22073jw.health_caution_reference
- cx22073jw.health_expert_review_requirement_reference

Boundary:
- no diagnosis
- no medical final judgment
- professional consultation required for medical decisions

---

## 2.13 finance_accounting_brain

Purpose:
- accounting
- finance
- budget
- cost
- management analysis
- reporting

Candidate CX reference:
- cx22073jw.finance_accounting_reference
- cx22073jw.finance_budget_reference
- cx22073jw.finance_cost_reference
- cx22073jw.finance_management_analysis_reference
- cx22073jw.finance_reporting_reference

Boundary:
- investment, tax, legal, and regulated financial decisions require review.

---

## 2.14 hr_operation_brain

Purpose:
- hiring
- HR
- evaluation
- workflow
- team operation
- training

Candidate CX reference:
- cx22073jw.hr_recruiting_reference
- cx22073jw.hr_evaluation_reference
- cx22073jw.hr_training_reference
- cx22073jw.operation_workflow_reference
- cx22073jw.operation_team_management_reference

---

## 2.15 culture_history_reference_brain

Purpose:
- history
- culture
- geography
- myth
- folklore
- setting support
- creative/business reference

Candidate CX reference:
- cx22073jw.history_reference
- cx22073jw.culture_reference
- cx22073jw.geography_reference
- cx22073jw.myth_reference
- cx22073jw.folklore_reference
- cx22073jw.setting_reference

Note:
- History and culture data should be detailed source-backed brain/reference material, not UI display-only data.

---

# 3. Robot-to-domain read policy model

Do not create one isolated database per robot type.

Use robot role/model/personality/capability profile to bind readable domains.

Examples:

## Manga creator robot

Reads:
- manga_comic_brain
- artist_brain
- writing_story_brain
- legal_rights_safety_brain
- marketing_brain, optional

Outputs:
- manga concept
- character sheet
- name/storyboard
- dialogue draft
- panel plan
- rights/similarity caution
- deliverable zip

## Video creator robot

Reads:
- video_creator_brain
- artist_brain
- music/audio references
- writing_story_brain
- marketing_brain
- legal_rights_safety_brain

Outputs:
- video plan
- script
- storyboard
- thumbnail direction
- edit plan
- BGM/SE direction
- platform format plan
- rights/safety summary

## IT technology robot

Reads:
- it_technology_brain
- guardrail knowledge via AIWorkerOS
- security reference
- operation reference

Outputs:
- design
- implementation plan
- code patch proposal
- test plan
- risk analysis
- handoff report

## Architecture design robot

Reads:
- architecture_brain
- artist_brain
- science_engineering_brain
- legal_rights_safety_brain

Outputs:
- concept design
- zoning
- flow plan
- material/style direction
- presentation direction
- safety/code caution
- human expert review requirement

---

# 4. Common AIWorkerOS control tables, future candidates

Rather than creating separate read policy tables per domain forever, prefer generic tables if compatible with existing schema.

Candidate generic model:

- aiworker.robot_knowledge_domain_capability
- aiworker.robot_knowledge_read_policy
- aiworker.request_knowledge_domain_usage
- aiworker.knowledge_domain_analysis_result
- aiworker.knowledge_domain_quality_review
- aiworker.knowledge_domain_safety_check
- aiworker.knowledge_domain_deliverable_plan

These can reference domain_code such as:

- artist
- architecture
- it_technology
- manga_comic
- video_creator
- writing_story
- game_design
- business_marketing
- legal_rights_safety
- education_training
- science_engineering
- healthcare_wellness
- finance_accounting
- hr_operation
- culture_history_reference

---

# 5. Next recommended phase

KNOWLEDGE-DOMAIN-BRAIN-1:

- Create no-apply DDL proposal for generic CX22073JW knowledge domain catalog/reference model.
- Include artist, architecture, IT, manga, video creator, and other domains as domain_code rows.
- Do not apply DB.
- AIレビュー only.

KNOWLEDGE-DOMAIN-BRAIN-2:

- Create no-apply DDL proposal for AIWorkerOS generic robot read policy and domain usage result model.
- Do not apply DB.
- AIレビュー only.

