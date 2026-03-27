# ============================================================
# LIFE EVENT RESULT PRESENTATION MODEL
# ============================================================

status: canonical
layer: model
scope: life-event-ui
component: life-event-result-presentation

owner: Boss
prepared_by: Zero


# ============================================================
# 1. RESULT PRESENTATION BLOCKS
# ============================================================

result_presentation_blocks:
- result_title
- result_status_banner
- narrative_summary
- gained_effects
- lost_resources
- relationship_changes
- status_changes
- unlocked_followup_events
- saved_memory_notice
- share_or_album_notice


# ============================================================
# 2. RESULT STATUS TYPES
# ============================================================

result_status_types:
- success
- partial_success
- neutral_completion
- ceremonial_completion
- failure
- critical_failure
- tragic_completion
- historic_completion


# ============================================================
# 3. PRESENTATION RULES
# ============================================================

presentation_rules:
- result_summary_must_reflect nation_and_religion_variation
- gained_and_lost_effects_must_be_explicitly listed
- hidden_roll_events_must_still_produce user-legible result explanation
- tragedy_and_funeral_results_must_support memorial tone
- success_and_prestige_results_must_support celebratory tone
- followup_unlocks_must_be_explicitly surfaced


# ============================================================
# 4. FINAL RULE
# ============================================================

Result presentation must explain
what happened,
what changed,
and what remains remembered.
