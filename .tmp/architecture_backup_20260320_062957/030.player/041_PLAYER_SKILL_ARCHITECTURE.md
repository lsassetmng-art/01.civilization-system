# ============================================================
# PLAYER SKILL ARCHITECTURE
# ============================================================

status: canonical
layer: architecture

definition:
Player skill represents acquired capability gained through explicit sources.

purpose:
- track skill acquisition and growth
- separate skill source from skill effect
- support education, certification, training, and work progression

skill_types:
- academic
- professional
- technical
- social
- interview
- management

skill_sources:
- text_content
- certification_pass
- training_completion
- work_experience
- practice_history

core_entities:
- player_skill
- skill_source_record
- skill_progress_event

player_skill:
- player_id
- skill_id
- skill_level
- last_updated_at

skill_source_record:
- source_record_id
- player_id
- skill_id
- source_type
- source_ref_id
- granted_value
- created_at

source_type:
- TEXT
- CERTIFICATION
- TRAINING
- WORK
- PRACTICE

rules:
- skill must not be granted silently
- every skill gain requires explicit source record
- paid text, certification pass, and training completion are valid formal sources
- practice history may contribute preparation or partial growth only if system rules allow it
- official certification pass may unlock stronger skill grants than practice attempts

event_flow:
- text_content_consumed
- certification_result_published
- training_completed
- skill_gain_requested
- skill_gain_applied
- skill_profile_recalculated

constitution_alignment:
- no direct mutation
- explicit source lineage required
- auditability preserved

final_rule:
All skill acquisition must be explicitly sourced, event-driven, and auditable.
