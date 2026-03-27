# ============================================================
# LIFE EVENT HISTORY AND ALBUM MODEL
# ============================================================

status: canonical
layer: model
scope: life-event-ui
component: life-event-history-and-album

owner: Boss
prepared_by: Zero


# ============================================================
# 1. HISTORY FIELDS
# ============================================================

history_fields:
- life_event_record_id
- event_id
- actor_id
- event_family
- displayed_title
- displayed_summary
- nation_context
- religion_context
- selected_decoration_summary
- selected_item_summary
- result_state
- occurred_at
- memorial_or_album_class


# ============================================================
# 2. ALBUM CLASSES
# ============================================================

album_classes:
- ceremony_album
- family_album
- school_album
- career_album
- memorial_album
- succession_album
- historic_state_album


# ============================================================
# 3. HISTORY RULES
# ============================================================

history_rules:
- every committed_life_event_must_write a history record
- album-eligible events_may_create visual or symbolic keepsakes
- tragic events_may_write memorial class records instead of celebratory class records
- record_title_and_summary_must_use final varied template output
- selected_decorations_and_items_must_be recordable in summary form


# ============================================================
# 4. FINAL RULE
# ============================================================

Life events must remain replayable in memory
even when they cannot be replayed in state.
