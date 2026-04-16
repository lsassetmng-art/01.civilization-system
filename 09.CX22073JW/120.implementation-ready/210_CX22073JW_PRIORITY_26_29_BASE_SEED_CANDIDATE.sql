-- ============================================================
-- CX22073JW Priority 26-29 Base Seed Candidate
-- status: implementation-ready-candidate
-- owner: Boss
-- prepared_by: Zero
-- reviewer: 佐藤（DB担当）
-- ============================================================

SET search_path TO "CX22073JW", public;

BEGIN;

-- ------------------------------------------------------------
-- 26. locale / translation seed
-- ------------------------------------------------------------
INSERT INTO "CX22073JW".locale_master (
  locale_code,
  display_name,
  language_code,
  region_code,
  sort_order,
  status
)
VALUES
  ('ja-JP', 'Japanese (Japan)', 'ja', 'JP', 10, 'active'),
  ('en-US', 'English (United States)', 'en', 'US', 20, 'active')
ON CONFLICT (locale_code) DO UPDATE
SET
  display_name = EXCLUDED.display_name,
  language_code = EXCLUDED.language_code,
  region_code = EXCLUDED.region_code,
  sort_order = EXCLUDED.sort_order,
  status = EXCLUDED.status,
  updated_at = now();

INSERT INTO "CX22073JW".translation_key_master (
  translation_key_code,
  domain_code,
  description,
  status
)
VALUES
  ('common.currency', 'common', 'Common label for currency', 'active'),
  ('common.unit', 'common', 'Common label for unit', 'active'),
  ('legal.region', 'legal', 'Common label for legal region', 'active')
ON CONFLICT (translation_key_code) DO UPDATE
SET
  domain_code = EXCLUDED.domain_code,
  description = EXCLUDED.description,
  status = EXCLUDED.status,
  updated_at = now();

INSERT INTO "CX22073JW".translation_text (
  translation_key_id,
  locale_id,
  translated_text,
  status
)
SELECT
  tk.translation_key_id,
  lm.locale_id,
  v.translated_text,
  'active'
FROM (
  VALUES
    ('common.currency', 'ja-JP', '通貨'),
    ('common.currency', 'en-US', 'Currency'),
    ('common.unit', 'ja-JP', '単位'),
    ('common.unit', 'en-US', 'Unit'),
    ('legal.region', 'ja-JP', '法域・地域'),
    ('legal.region', 'en-US', 'Jurisdiction / Region')
) AS v(translation_key_code, locale_code, translated_text)
JOIN "CX22073JW".translation_key_master tk
  ON tk.translation_key_code = v.translation_key_code
JOIN "CX22073JW".locale_master lm
  ON lm.locale_code = v.locale_code
ON CONFLICT (translation_key_id, locale_id) DO UPDATE
SET
  translated_text = EXCLUDED.translated_text,
  status = EXCLUDED.status,
  updated_at = now();

-- ------------------------------------------------------------
-- 27. currency seed
-- ------------------------------------------------------------
INSERT INTO "CX22073JW".currency_master (
  currency_code,
  display_name,
  symbol,
  decimal_places,
  status
)
VALUES
  ('JPY', 'Japanese Yen', '¥', 0, 'active'),
  ('USD', 'US Dollar', '$', 2, 'active')
ON CONFLICT (currency_code) DO UPDATE
SET
  display_name = EXCLUDED.display_name,
  symbol = EXCLUDED.symbol,
  decimal_places = EXCLUDED.decimal_places,
  status = EXCLUDED.status,
  updated_at = now();

INSERT INTO "CX22073JW".currency_display_rule (
  currency_id,
  locale_id,
  symbol_position,
  thousands_separator,
  decimal_separator,
  status
)
SELECT
  cm.currency_id,
  lm.locale_id,
  v.symbol_position,
  v.thousands_separator,
  v.decimal_separator,
  'active'
FROM (
  VALUES
    ('JPY', 'ja-JP', 'prefix', ',', '.'),
    ('USD', 'en-US', 'prefix', ',', '.')
) AS v(currency_code, locale_code, symbol_position, thousands_separator, decimal_separator)
JOIN "CX22073JW".currency_master cm
  ON cm.currency_code = v.currency_code
JOIN "CX22073JW".locale_master lm
  ON lm.locale_code = v.locale_code
ON CONFLICT (currency_id, locale_id) DO UPDATE
SET
  symbol_position = EXCLUDED.symbol_position,
  thousands_separator = EXCLUDED.thousands_separator,
  decimal_separator = EXCLUDED.decimal_separator,
  status = EXCLUDED.status,
  updated_at = now();

INSERT INTO "CX22073JW".locale_currency_preference (
  locale_id,
  currency_id,
  is_default,
  status
)
SELECT
  lm.locale_id,
  cm.currency_id,
  true,
  'active'
FROM (
  VALUES
    ('ja-JP', 'JPY'),
    ('en-US', 'USD')
) AS v(locale_code, currency_code)
JOIN "CX22073JW".locale_master lm
  ON lm.locale_code = v.locale_code
JOIN "CX22073JW".currency_master cm
  ON cm.currency_code = v.currency_code
ON CONFLICT (locale_id, currency_id) DO UPDATE
SET
  is_default = EXCLUDED.is_default,
  status = EXCLUDED.status,
  updated_at = now();

INSERT INTO "CX22073JW".currency_rounding_rule (
  currency_id,
  rounding_mode,
  rounding_unit,
  status
)
SELECT
  cm.currency_id,
  v.rounding_mode,
  v.rounding_unit,
  'active'
FROM (
  VALUES
    ('JPY', 'round_half_up', 1.0),
    ('USD', 'round_half_up', 0.01)
) AS v(currency_code, rounding_mode, rounding_unit)
JOIN "CX22073JW".currency_master cm
  ON cm.currency_code = v.currency_code
ON CONFLICT (currency_id) DO UPDATE
SET
  rounding_mode = EXCLUDED.rounding_mode,
  rounding_unit = EXCLUDED.rounding_unit,
  status = EXCLUDED.status,
  updated_at = now();

-- ------------------------------------------------------------
-- 28. unit seed
-- ------------------------------------------------------------
INSERT INTO "CX22073JW".unit_category_master (
  unit_category_code,
  display_name,
  description,
  status
)
VALUES
  ('mass', 'Mass', 'Mass unit category', 'active'),
  ('volume', 'Volume', 'Volume unit category', 'active'),
  ('length', 'Length', 'Length unit category', 'active')
ON CONFLICT (unit_category_code) DO UPDATE
SET
  display_name = EXCLUDED.display_name,
  description = EXCLUDED.description,
  status = EXCLUDED.status,
  updated_at = now();

INSERT INTO "CX22073JW".unit_master (
  unit_code,
  unit_category_id,
  display_name,
  symbol,
  is_base_unit,
  status
)
SELECT
  v.unit_code,
  ucm.unit_category_id,
  v.display_name,
  v.symbol,
  v.is_base_unit,
  'active'
FROM (
  VALUES
    ('g',  'mass',   'Gram',       'g',  true),
    ('kg', 'mass',   'Kilogram',   'kg', false),
    ('ml', 'volume', 'Milliliter', 'ml', true),
    ('l',  'volume', 'Liter',      'L',  false),
    ('cm', 'length', 'Centimeter', 'cm', true),
    ('m',  'length', 'Meter',      'm',  false)
) AS v(unit_code, unit_category_code, display_name, symbol, is_base_unit)
JOIN "CX22073JW".unit_category_master ucm
  ON ucm.unit_category_code = v.unit_category_code
ON CONFLICT (unit_code) DO UPDATE
SET
  unit_category_id = EXCLUDED.unit_category_id,
  display_name = EXCLUDED.display_name,
  symbol = EXCLUDED.symbol,
  is_base_unit = EXCLUDED.is_base_unit,
  status = EXCLUDED.status,
  updated_at = now();

INSERT INTO "CX22073JW".unit_conversion_rule (
  from_unit_id,
  to_unit_id,
  conversion_factor,
  status
)
SELECT
  fu.unit_id,
  tu.unit_id,
  v.conversion_factor,
  'active'
FROM (
  VALUES
    ('kg', 'g', 1000.0),
    ('l',  'ml', 1000.0),
    ('m',  'cm', 100.0)
) AS v(from_unit_code, to_unit_code, conversion_factor)
JOIN "CX22073JW".unit_master fu
  ON fu.unit_code = v.from_unit_code
JOIN "CX22073JW".unit_master tu
  ON tu.unit_code = v.to_unit_code
ON CONFLICT (from_unit_id, to_unit_id) DO UPDATE
SET
  conversion_factor = EXCLUDED.conversion_factor,
  status = EXCLUDED.status,
  updated_at = now();

INSERT INTO "CX22073JW".locale_unit_preference (
  locale_id,
  unit_category_id,
  preferred_unit_id,
  status
)
SELECT
  lm.locale_id,
  ucm.unit_category_id,
  um.unit_id,
  'active'
FROM (
  VALUES
    ('ja-JP', 'mass',   'g'),
    ('ja-JP', 'volume', 'ml'),
    ('en-US', 'mass',   'g'),
    ('en-US', 'volume', 'ml')
) AS v(locale_code, unit_category_code, unit_code)
JOIN "CX22073JW".locale_master lm
  ON lm.locale_code = v.locale_code
JOIN "CX22073JW".unit_category_master ucm
  ON ucm.unit_category_code = v.unit_category_code
JOIN "CX22073JW".unit_master um
  ON um.unit_code = v.unit_code
ON CONFLICT (locale_id, unit_category_id) DO UPDATE
SET
  preferred_unit_id = EXCLUDED.preferred_unit_id,
  status = EXCLUDED.status,
  updated_at = now();

-- ------------------------------------------------------------
-- 29. jurisdiction / region seed
-- ------------------------------------------------------------
INSERT INTO "CX22073JW".jurisdiction_master (
  jurisdiction_code,
  display_name,
  description,
  status
)
VALUES
  ('jp', 'Japan', 'Japan jurisdiction', 'active')
ON CONFLICT (jurisdiction_code) DO UPDATE
SET
  display_name = EXCLUDED.display_name,
  description = EXCLUDED.description,
  status = EXCLUDED.status,
  updated_at = now();

INSERT INTO "CX22073JW".region_master (
  region_code,
  jurisdiction_id,
  display_name,
  description,
  status
)
SELECT
  'jp_chiba',
  jm.jurisdiction_id,
  'Chiba',
  'Chiba region',
  'active'
FROM "CX22073JW".jurisdiction_master jm
WHERE jm.jurisdiction_code = 'jp'
ON CONFLICT (region_code) DO UPDATE
SET
  jurisdiction_id = EXCLUDED.jurisdiction_id,
  display_name = EXCLUDED.display_name,
  description = EXCLUDED.description,
  status = EXCLUDED.status,
  updated_at = now();

INSERT INTO "CX22073JW".procedure_scope_master (
  procedure_scope_code,
  display_name,
  description,
  status
)
VALUES
  ('inheritance_general', 'Inheritance General', 'General inheritance procedure scope', 'active'),
  ('end_of_life_general', 'End of Life General', 'General end-of-life procedure scope', 'active')
ON CONFLICT (procedure_scope_code) DO UPDATE
SET
  display_name = EXCLUDED.display_name,
  description = EXCLUDED.description,
  status = EXCLUDED.status,
  updated_at = now();

INSERT INTO "CX22073JW".legal_region_requirement (
  jurisdiction_id,
  region_id,
  procedure_scope_id,
  requirement_summary,
  status
)
SELECT
  jm.jurisdiction_id,
  rm.region_id,
  psm.procedure_scope_id,
  v.requirement_summary,
  'active'
FROM (
  VALUES
    ('jp', 'jp_chiba', 'inheritance_general', 'Check municipality and family registry requirements.'),
    ('jp', 'jp_chiba', 'end_of_life_general', 'Check local office procedures and documentation guidance.')
) AS v(jurisdiction_code, region_code, procedure_scope_code, requirement_summary)
JOIN "CX22073JW".jurisdiction_master jm
  ON jm.jurisdiction_code = v.jurisdiction_code
JOIN "CX22073JW".region_master rm
  ON rm.region_code = v.region_code
JOIN "CX22073JW".procedure_scope_master psm
  ON psm.procedure_scope_code = v.procedure_scope_code;

INSERT INTO "CX22073JW".public_office_reference (
  jurisdiction_id,
  region_id,
  office_name,
  office_type,
  reference_note,
  status
)
SELECT
  jm.jurisdiction_id,
  rm.region_id,
  'Sample Municipal Office',
  'municipal_office',
  'Reference office placeholder for regional procedure guidance.',
  'active'
FROM "CX22073JW".jurisdiction_master jm
JOIN "CX22073JW".region_master rm
  ON rm.jurisdiction_id = jm.jurisdiction_id
WHERE jm.jurisdiction_code = 'jp'
  AND rm.region_code = 'jp_chiba';

COMMIT;
