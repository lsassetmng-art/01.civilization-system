-- ============================================================
-- CX22073JW Priority 26-29 Post-Apply Audit SQL
-- status: implementation-ready-candidate
-- owner: Boss
-- prepared_by: Zero
-- reviewer: 佐藤（DB担当）
-- ============================================================

SET search_path TO "CX22073JW", public;

\echo '============================================================'
\echo '1. priority 26-29 table existence'
\echo '============================================================'
WITH required_tables AS (
  SELECT *
  FROM (VALUES
    ('locale_master'),
    ('translation_key_master'),
    ('translation_text'),
    ('term_alias_dictionary'),
    ('display_name_locale_variant'),
    ('currency_master'),
    ('currency_display_rule'),
    ('locale_currency_preference'),
    ('currency_rounding_rule'),
    ('fx_reference_rate'),
    ('unit_category_master'),
    ('unit_master'),
    ('unit_conversion_rule'),
    ('purchasable_unit_reference'),
    ('locale_unit_preference'),
    ('jurisdiction_master'),
    ('region_master'),
    ('procedure_scope_master'),
    ('legal_region_requirement'),
    ('public_office_reference')
  ) AS v(table_name)
)
SELECT
  r.table_name,
  CASE WHEN t.table_name IS NOT NULL THEN 'yes' ELSE 'no' END AS actual_exists
FROM required_tables r
LEFT JOIN information_schema.tables t
  ON t.table_schema = 'CX22073JW'
 AND t.table_name = r.table_name
 AND t.table_type = 'BASE TABLE'
ORDER BY r.table_name;

\echo ''
\echo '============================================================'
\echo '2. priority 26-29 index existence'
\echo '============================================================'
SELECT
  indexname,
  tablename
FROM pg_indexes
WHERE schemaname = 'CX22073JW'
  AND indexname IN (
    'idx_translation_text_key',
    'idx_translation_text_locale',
    'idx_term_alias_dictionary_canonical_term',
    'idx_display_name_locale_variant_object',
    'idx_currency_display_rule_currency',
    'idx_currency_display_rule_locale',
    'idx_fx_reference_rate_base_quote',
    'idx_unit_master_category',
    'idx_unit_conversion_rule_from_to',
    'idx_locale_unit_preference_locale',
    'idx_region_master_jurisdiction',
    'idx_legal_region_requirement_scope',
    'idx_public_office_reference_jurisdiction_region'
  )
ORDER BY indexname;

\echo ''
\echo '============================================================'
\echo '3. key seed existence'
\echo '============================================================'
SELECT 'locales' AS check_name, COUNT(*) AS actual_count
FROM "CX22073JW".locale_master
WHERE locale_code IN ('ja-JP','en-US')
UNION ALL
SELECT 'currencies', COUNT(*)
FROM "CX22073JW".currency_master
WHERE currency_code IN ('JPY','USD')
UNION ALL
SELECT 'unit_categories', COUNT(*)
FROM "CX22073JW".unit_category_master
WHERE unit_category_code IN ('mass','volume','length')
UNION ALL
SELECT 'units', COUNT(*)
FROM "CX22073JW".unit_master
WHERE unit_code IN ('g','kg','ml','l','cm','m')
UNION ALL
SELECT 'jurisdictions', COUNT(*)
FROM "CX22073JW".jurisdiction_master
WHERE jurisdiction_code IN ('jp')
UNION ALL
SELECT 'regions', COUNT(*)
FROM "CX22073JW".region_master
WHERE region_code IN ('jp_chiba')
UNION ALL
SELECT 'procedure_scopes', COUNT(*)
FROM "CX22073JW".procedure_scope_master
WHERE procedure_scope_code IN ('inheritance_general','end_of_life_general')
ORDER BY check_name;

\echo ''
\echo '============================================================'
\echo '4. quick linkage audit'
\echo '============================================================'
SELECT
  'translation_text_missing_key_or_locale' AS check_name,
  COUNT(*) AS issue_count
FROM "CX22073JW".translation_text tt
LEFT JOIN "CX22073JW".translation_key_master tkm
  ON tkm.translation_key_id = tt.translation_key_id
LEFT JOIN "CX22073JW".locale_master lm
  ON lm.locale_id = tt.locale_id
WHERE tkm.translation_key_id IS NULL
   OR lm.locale_id IS NULL
UNION ALL
SELECT
  'currency_display_rule_missing_fk',
  COUNT(*)
FROM "CX22073JW".currency_display_rule cdr
LEFT JOIN "CX22073JW".currency_master cm
  ON cm.currency_id = cdr.currency_id
LEFT JOIN "CX22073JW".locale_master lm
  ON lm.locale_id = cdr.locale_id
WHERE cm.currency_id IS NULL
   OR lm.locale_id IS NULL
UNION ALL
SELECT
  'unit_conversion_rule_missing_fk',
  COUNT(*)
FROM "CX22073JW".unit_conversion_rule ucr
LEFT JOIN "CX22073JW".unit_master fu
  ON fu.unit_id = ucr.from_unit_id
LEFT JOIN "CX22073JW".unit_master tu
  ON tu.unit_id = ucr.to_unit_id
WHERE fu.unit_id IS NULL
   OR tu.unit_id IS NULL
UNION ALL
SELECT
  'legal_region_requirement_missing_fk',
  COUNT(*)
FROM "CX22073JW".legal_region_requirement lrr
LEFT JOIN "CX22073JW".jurisdiction_master jm
  ON jm.jurisdiction_id = lrr.jurisdiction_id
LEFT JOIN "CX22073JW".procedure_scope_master psm
  ON psm.procedure_scope_id = lrr.procedure_scope_id
WHERE jm.jurisdiction_id IS NULL
   OR psm.procedure_scope_id IS NULL;
