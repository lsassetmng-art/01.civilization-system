# ============================================================
# PERSONA BUILDER UI ITEM TABLE
# ============================================================

status: canonical
scope: persona.builder.ui.item.table
system: persona-os
owner: Boss
prepared_by: Zero


# PURPOSE

Define the official UI item structure
for Persona Builder.


# SECTION A: IDENTITY

fields:
- internal_name
- display_name
- alias
- age
- gender
- occupation
- title
- affiliation
- language
- birthplace_or_background
- first_person_style
- second_person_style


# SECTION B: INTRODUCTION

fields:
- short_introduction
- tagline
- profile_story
- backstory
- public_description
- marketplace_short_pitch
- marketplace_long_description


# SECTION C: PERSONALITY

fields:
- personality_summary
- trait_tags
- values
- goals
- likes
- dislikes
- strengths
- weaknesses
- fears_or_avoid_tendencies
- comfort_topics
- stress_topics


# SECTION D: FEATURES

fields:
- visual_features
- symbolic_features
- signature_items
- theme_color
- motif
- iconic_expression
- voice_features
- speaking_features


# SECTION E: CAPABILITY

qualifications:
- qualification_add
- qualification_selection_from_civilization_master
- qualification_level
- qualification_status
- acquired_at
- expires_at
- verification_status
- public_visibility

skills:
- skill_add
- skill_selection_from_persona_skill_master
- skill_level
- acquisition_source_type
- acquisition_source_ref
- verification_status
- runtime_usage_flag
- public_visibility
- specialty_note

specialties:
- specialties
- role_suitability
- supported_work_domains


# SECTION F: RUNTIME BEHAVIOR

fields:
- cognition_tendency
- response_style
- behavior_tendency
- emotional_tendency
- communication_tendency
- boundary_settings
- escalation_tendency
- decision_style
- caution_level
- initiative_level


# SECTION G: VISUAL

fields:
- avatar
- visual_asset_binding
- expression_mapping
- visual_state_mapping
- animation_profile
- visual_manifest_candidate
- public_image_set
- release_visual_summary


# SECTION H: VOICE

fields:
- voice_profile
- tone_style
- speech_rhythm
- speed
- pitch_tendency
- voice_release_visibility
- tts_mapping_if_used


# SECTION I: PUBLIC / RELEASE

fields:
- public_profile_visibility
- snapshot_exposure_fields
- release_summary
- package_summary
- distribution_tags
- marketplace_tags
- audience_note
- content_rating
- release_region_or_scope
- release_restrictions


# SECTION J: GOVERNANCE

fields:
- draft_status
- validation_status
- approval_status
- rework_instruction
- publish_preparation_status
- audit_trail_visibility
- material_change_flag


# CAPABILITY RULE

Qualification truth source:
- CivilizationOS qualification master

Skill truth source:
- PersonaOS skill master
- Persona-owned skill records

Civilization training, education, work experience,
and learning events may trigger skill gain or growth,
but Persona skill truth remains in PersonaOS.


# FINAL DEFINITION

Persona Builder must expose structured edit surfaces for:
identity, introduction, personality, features, capability,
runtime behavior, visual, voice, public/release, and governance.
