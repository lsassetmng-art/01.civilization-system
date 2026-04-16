-- ============================================================
-- CX22073JW AND SCENARIO INTEGRATED DDL DRAFT
-- draft-additive / not applied
-- ============================================================

-- This file intentionally acts as an integrated handoff shell.
-- Apply order:
-- 1. 120012_CX22073JW_CORE_AND_CHARACTER_PROFILE_DDL_DRAFT.sql
-- 2. 120013_SCENARIO_CORE_DDL_DRAFT.sql

-- Cross-schema reference policy:
-- scenario side may reference CX22073JW identifiers logically.
-- physical foreign keys across schemas can be added later after
-- final DB environment policy is fixed.

-- planned logical references:
-- scenario.scenario_master.canonical_article_id
--   -> CX22073JW.article.article_id
--
-- scenario.scenario_character_binding.character_entity_id
--   -> CX22073JW.entity_master.entity_id
--
-- scenario.scenario_event_binding.timeline_event_id
--   -> CX22073JW.timeline_event.timeline_event_id
