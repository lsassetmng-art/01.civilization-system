-- ============================================================
-- CX22073JW Priority 26-29 Verification SQL
-- status: implementation-ready-candidate
-- owner: Boss
-- prepared_by: Zero
-- reviewer: 佐藤（DB担当）
-- ============================================================

SET search_path TO "CX22073JW", public;

\echo '============================================================'
\echo '1. multilingual / term dictionary counts'
\echo '============================================================'
SELECT 'locale_master' AS table_name, COUNT(*) AS row_count FROM "CX22073JW".locale_master
UNION ALL
SELECT 'translation_key_master', COUNT(*) FROM "CX22073JW".translation_key_master
UNION ALL
SELECT 'translation_text', COUNT(*) FROM "CX22073JW".translation_text
UNION ALL
SELECT 'term_alias_dictionary', COUNT(*) FROM "CX22073JW".term_alias_dictionary
UNION ALL
SELECT 'display_name_locale_variant', COUNT(*) FROM "CX22073JW".display_name_locale_variant
ORDER BY table_name;

\echo ''
\echo '============================================================'
\echo '2. currency / amount reference counts'
\echo '============================================================'
SELECT 'currency_master' AS table_name, COUNT(*) AS row_count FROM "CX22073JW".currency_master
UNION ALL
SELECT 'currency_display_rule', COUNT(*) FROM "CX22073JW".currency_display_rule
UNION ALL
SELECT 'locale_currency_preference', COUNT(*) FROM "CX22073JW".locale_currency_preference
UNION ALL
SELECT 'currency_rounding_rule', COUNT(*) FROM "CX22073JW".currency_rounding_rule
UNION ALL
SELECT 'fx_reference_rate', COUNT(*) FROM "CX22073JW".fx_reference_rate
ORDER BY table_name;

\echo ''
\echo '============================================================'
\echo '3. unit / conversion / locale counts'
\echo '============================================================'
SELECT 'unit_category_master' AS table_name, COUNT(*) AS row_count FROM "CX22073JW".unit_category_master
UNION ALL
SELECT 'unit_master', COUNT(*) FROM "CX22073JW".unit_master
UNION ALL
SELECT 'unit_conversion_rule', COUNT(*) FROM "CX22073JW".unit_conversion_rule
UNION ALL
SELECT 'purchasable_unit_reference', COUNT(*) FROM "CX22073JW".purchasable_unit_reference
UNION ALL
SELECT 'locale_unit_preference', COUNT(*) FROM "CX22073JW".locale_unit_preference
ORDER BY table_name;

\echo ''
\echo '============================================================'
\echo '4. jurisdiction / region difference counts'
\echo '============================================================'
SELECT 'jurisdiction_master' AS table_name, COUNT(*) AS row_count FROM "CX22073JW".jurisdiction_master
UNION ALL
SELECT 'region_master', COUNT(*) FROM "CX22073JW".region_master
UNION ALL
SELECT 'procedure_scope_master', COUNT(*) FROM "CX22073JW".procedure_scope_master
UNION ALL
SELECT 'legal_region_requirement', COUNT(*) FROM "CX22073JW".legal_region_requirement
UNION ALL
SELECT 'public_office_reference', COUNT(*) FROM "CX22073JW".public_office_reference
ORDER BY table_name;

\echo ''
\echo '============================================================'
\echo '5. expected minimum seed counts'
\echo '============================================================'
SELECT 'expected_locales' AS check_name, 2 AS expected_count, COUNT(*) AS actual_count
FROM "CX22073JW".locale_master
WHERE locale_code IN ('ja-JP','en-US')
UNION ALL
SELECT 'expected_currencies', 2, COUNT(*)
FROM "CX22073JW".currency_master
WHERE currency_code IN ('JPY','USD')
UNION ALL
SELECT 'expected_unit_categories', 3, COUNT(*)
FROM "CX22073JW".unit_category_master
WHERE unit_category_code IN ('mass','volume','length')
UNION ALL
SELECT 'expected_units', 6, COUNT(*)
FROM "CX22073JW".unit_master
WHERE unit_code IN ('g','kg','ml','l','cm','m')
UNION ALL
SELECT 'expected_jurisdictions', 1, COUNT(*)
FROM "CX22073JW".jurisdiction_master
WHERE jurisdiction_code IN ('jp')
UNION ALL
SELECT 'expected_regions', 1, COUNT(*)
FROM "CX22073JW".region_master
WHERE region_code IN ('jp_chiba')
UNION ALL
SELECT 'expected_procedure_scopes', 2, COUNT(*)
FROM "CX22073JW".procedure_scope_master
WHERE procedure_scope_code IN ('inheritance_general','end_of_life_general')
ORDER BY check_name;
