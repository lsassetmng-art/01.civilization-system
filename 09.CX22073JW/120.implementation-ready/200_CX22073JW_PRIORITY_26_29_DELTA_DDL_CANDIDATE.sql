-- ============================================================
-- CX22073JW Priority 26-29 Delta DDL Candidate
-- status: implementation-ready-candidate
-- owner: Boss
-- prepared_by: Zero
-- reviewer: 佐藤（DB担当）
-- policy:
--   - additive only
--   - do not rebuild existing normal layer
-- ============================================================

SET search_path TO "CX22073JW", public;

CREATE OR REPLACE FUNCTION "CX22073JW".set_updated_at()
RETURNS trigger
LANGUAGE plpgsql
AS $$
BEGIN
  NEW.updated_at := now();
  RETURN NEW;
END;
$$;

-- ------------------------------------------------------------
-- 26. multilingual / term dictionary
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS "CX22073JW".locale_master (
  locale_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  locale_code text NOT NULL UNIQUE,
  display_name text NOT NULL,
  language_code text NOT NULL,
  region_code text NULL,
  sort_order integer NOT NULL DEFAULT 0,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS "CX22073JW".translation_key_master (
  translation_key_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  translation_key_code text NOT NULL UNIQUE,
  domain_code text NULL,
  description text NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS "CX22073JW".translation_text (
  translation_text_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  translation_key_id uuid NOT NULL,
  locale_id uuid NOT NULL,
  translated_text text NOT NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_translation_text_key
    FOREIGN KEY (translation_key_id)
    REFERENCES "CX22073JW".translation_key_master(translation_key_id),
  CONSTRAINT fk_translation_text_locale
    FOREIGN KEY (locale_id)
    REFERENCES "CX22073JW".locale_master(locale_id),
  CONSTRAINT uq_translation_text_key_locale
    UNIQUE (translation_key_id, locale_id)
);

CREATE TABLE IF NOT EXISTS "CX22073JW".term_alias_dictionary (
  term_alias_dictionary_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  canonical_term text NOT NULL,
  alias_text text NOT NULL,
  locale_id uuid NULL,
  domain_code text NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS "CX22073JW".display_name_locale_variant (
  display_name_locale_variant_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  object_type text NOT NULL,
  object_code text NOT NULL,
  locale_id uuid NOT NULL,
  display_name text NOT NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_display_name_locale_variant_locale
    FOREIGN KEY (locale_id)
    REFERENCES "CX22073JW".locale_master(locale_id),
  CONSTRAINT uq_display_name_locale_variant
    UNIQUE (object_type, object_code, locale_id)
);

-- ------------------------------------------------------------
-- 27. currency / amount reference
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS "CX22073JW".currency_master (
  currency_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  currency_code text NOT NULL UNIQUE,
  display_name text NOT NULL,
  symbol text NULL,
  decimal_places integer NOT NULL DEFAULT 0,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS "CX22073JW".currency_display_rule (
  currency_display_rule_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  currency_id uuid NOT NULL,
  locale_id uuid NOT NULL,
  symbol_position text NOT NULL,
  thousands_separator text NULL,
  decimal_separator text NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_currency_display_rule_currency
    FOREIGN KEY (currency_id)
    REFERENCES "CX22073JW".currency_master(currency_id),
  CONSTRAINT fk_currency_display_rule_locale
    FOREIGN KEY (locale_id)
    REFERENCES "CX22073JW".locale_master(locale_id),
  CONSTRAINT uq_currency_display_rule
    UNIQUE (currency_id, locale_id)
);

CREATE TABLE IF NOT EXISTS "CX22073JW".locale_currency_preference (
  locale_currency_preference_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  locale_id uuid NOT NULL,
  currency_id uuid NOT NULL,
  is_default boolean NOT NULL DEFAULT false,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_locale_currency_preference_locale
    FOREIGN KEY (locale_id)
    REFERENCES "CX22073JW".locale_master(locale_id),
  CONSTRAINT fk_locale_currency_preference_currency
    FOREIGN KEY (currency_id)
    REFERENCES "CX22073JW".currency_master(currency_id),
  CONSTRAINT uq_locale_currency_preference
    UNIQUE (locale_id, currency_id)
);

CREATE TABLE IF NOT EXISTS "CX22073JW".currency_rounding_rule (
  currency_rounding_rule_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  currency_id uuid NOT NULL,
  rounding_mode text NOT NULL,
  rounding_unit numeric(18,6) NOT NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_currency_rounding_rule_currency
    FOREIGN KEY (currency_id)
    REFERENCES "CX22073JW".currency_master(currency_id),
  CONSTRAINT uq_currency_rounding_rule_currency
    UNIQUE (currency_id)
);

CREATE TABLE IF NOT EXISTS "CX22073JW".fx_reference_rate (
  fx_reference_rate_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  base_currency_id uuid NOT NULL,
  quote_currency_id uuid NOT NULL,
  reference_rate numeric(18,6) NOT NULL,
  reference_date date NOT NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_fx_reference_rate_base_currency
    FOREIGN KEY (base_currency_id)
    REFERENCES "CX22073JW".currency_master(currency_id),
  CONSTRAINT fk_fx_reference_rate_quote_currency
    FOREIGN KEY (quote_currency_id)
    REFERENCES "CX22073JW".currency_master(currency_id),
  CONSTRAINT uq_fx_reference_rate
    UNIQUE (base_currency_id, quote_currency_id, reference_date)
);

-- ------------------------------------------------------------
-- 28. unit / conversion / locale
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS "CX22073JW".unit_category_master (
  unit_category_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  unit_category_code text NOT NULL UNIQUE,
  display_name text NOT NULL,
  description text NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS "CX22073JW".unit_master (
  unit_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  unit_code text NOT NULL UNIQUE,
  unit_category_id uuid NOT NULL,
  display_name text NOT NULL,
  symbol text NULL,
  is_base_unit boolean NOT NULL DEFAULT false,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_unit_master_category
    FOREIGN KEY (unit_category_id)
    REFERENCES "CX22073JW".unit_category_master(unit_category_id)
);

CREATE TABLE IF NOT EXISTS "CX22073JW".unit_conversion_rule (
  unit_conversion_rule_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  from_unit_id uuid NOT NULL,
  to_unit_id uuid NOT NULL,
  conversion_factor numeric(18,8) NOT NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_unit_conversion_rule_from
    FOREIGN KEY (from_unit_id)
    REFERENCES "CX22073JW".unit_master(unit_id),
  CONSTRAINT fk_unit_conversion_rule_to
    FOREIGN KEY (to_unit_id)
    REFERENCES "CX22073JW".unit_master(unit_id),
  CONSTRAINT uq_unit_conversion_rule
    UNIQUE (from_unit_id, to_unit_id)
);

CREATE TABLE IF NOT EXISTS "CX22073JW".purchasable_unit_reference (
  purchasable_unit_reference_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  object_type text NOT NULL,
  object_code text NOT NULL,
  unit_id uuid NOT NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_purchasable_unit_reference_unit
    FOREIGN KEY (unit_id)
    REFERENCES "CX22073JW".unit_master(unit_id),
  CONSTRAINT uq_purchasable_unit_reference
    UNIQUE (object_type, object_code, unit_id)
);

CREATE TABLE IF NOT EXISTS "CX22073JW".locale_unit_preference (
  locale_unit_preference_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  locale_id uuid NOT NULL,
  unit_category_id uuid NOT NULL,
  preferred_unit_id uuid NOT NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_locale_unit_preference_locale
    FOREIGN KEY (locale_id)
    REFERENCES "CX22073JW".locale_master(locale_id),
  CONSTRAINT fk_locale_unit_preference_category
    FOREIGN KEY (unit_category_id)
    REFERENCES "CX22073JW".unit_category_master(unit_category_id),
  CONSTRAINT fk_locale_unit_preference_unit
    FOREIGN KEY (preferred_unit_id)
    REFERENCES "CX22073JW".unit_master(unit_id),
  CONSTRAINT uq_locale_unit_preference
    UNIQUE (locale_id, unit_category_id)
);

-- ------------------------------------------------------------
-- 29. jurisdiction / region difference
-- ------------------------------------------------------------
CREATE TABLE IF NOT EXISTS "CX22073JW".jurisdiction_master (
  jurisdiction_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  jurisdiction_code text NOT NULL UNIQUE,
  display_name text NOT NULL,
  description text NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS "CX22073JW".region_master (
  region_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  region_code text NOT NULL UNIQUE,
  jurisdiction_id uuid NOT NULL,
  display_name text NOT NULL,
  description text NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_region_master_jurisdiction
    FOREIGN KEY (jurisdiction_id)
    REFERENCES "CX22073JW".jurisdiction_master(jurisdiction_id)
);

CREATE TABLE IF NOT EXISTS "CX22073JW".procedure_scope_master (
  procedure_scope_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  procedure_scope_code text NOT NULL UNIQUE,
  display_name text NOT NULL,
  description text NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now()
);

CREATE TABLE IF NOT EXISTS "CX22073JW".legal_region_requirement (
  legal_region_requirement_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  jurisdiction_id uuid NOT NULL,
  region_id uuid NULL,
  procedure_scope_id uuid NOT NULL,
  requirement_summary text NOT NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_legal_region_requirement_jurisdiction
    FOREIGN KEY (jurisdiction_id)
    REFERENCES "CX22073JW".jurisdiction_master(jurisdiction_id),
  CONSTRAINT fk_legal_region_requirement_region
    FOREIGN KEY (region_id)
    REFERENCES "CX22073JW".region_master(region_id),
  CONSTRAINT fk_legal_region_requirement_scope
    FOREIGN KEY (procedure_scope_id)
    REFERENCES "CX22073JW".procedure_scope_master(procedure_scope_id)
);

CREATE TABLE IF NOT EXISTS "CX22073JW".public_office_reference (
  public_office_reference_id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  jurisdiction_id uuid NOT NULL,
  region_id uuid NULL,
  office_name text NOT NULL,
  office_type text NULL,
  reference_note text NULL,
  status text NOT NULL DEFAULT 'active',
  created_at timestamptz NOT NULL DEFAULT now(),
  updated_at timestamptz NOT NULL DEFAULT now(),
  CONSTRAINT fk_public_office_reference_jurisdiction
    FOREIGN KEY (jurisdiction_id)
    REFERENCES "CX22073JW".jurisdiction_master(jurisdiction_id),
  CONSTRAINT fk_public_office_reference_region
    FOREIGN KEY (region_id)
    REFERENCES "CX22073JW".region_master(region_id)
);

-- ------------------------------------------------------------
-- triggers
-- ------------------------------------------------------------
DROP TRIGGER IF EXISTS trg_locale_master_set_updated_at ON "CX22073JW".locale_master;
CREATE TRIGGER trg_locale_master_set_updated_at BEFORE UPDATE ON "CX22073JW".locale_master FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_translation_key_master_set_updated_at ON "CX22073JW".translation_key_master;
CREATE TRIGGER trg_translation_key_master_set_updated_at BEFORE UPDATE ON "CX22073JW".translation_key_master FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_translation_text_set_updated_at ON "CX22073JW".translation_text;
CREATE TRIGGER trg_translation_text_set_updated_at BEFORE UPDATE ON "CX22073JW".translation_text FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_term_alias_dictionary_set_updated_at ON "CX22073JW".term_alias_dictionary;
CREATE TRIGGER trg_term_alias_dictionary_set_updated_at BEFORE UPDATE ON "CX22073JW".term_alias_dictionary FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_display_name_locale_variant_set_updated_at ON "CX22073JW".display_name_locale_variant;
CREATE TRIGGER trg_display_name_locale_variant_set_updated_at BEFORE UPDATE ON "CX22073JW".display_name_locale_variant FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_currency_master_set_updated_at ON "CX22073JW".currency_master;
CREATE TRIGGER trg_currency_master_set_updated_at BEFORE UPDATE ON "CX22073JW".currency_master FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_currency_display_rule_set_updated_at ON "CX22073JW".currency_display_rule;
CREATE TRIGGER trg_currency_display_rule_set_updated_at BEFORE UPDATE ON "CX22073JW".currency_display_rule FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_locale_currency_preference_set_updated_at ON "CX22073JW".locale_currency_preference;
CREATE TRIGGER trg_locale_currency_preference_set_updated_at BEFORE UPDATE ON "CX22073JW".locale_currency_preference FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_currency_rounding_rule_set_updated_at ON "CX22073JW".currency_rounding_rule;
CREATE TRIGGER trg_currency_rounding_rule_set_updated_at BEFORE UPDATE ON "CX22073JW".currency_rounding_rule FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_fx_reference_rate_set_updated_at ON "CX22073JW".fx_reference_rate;
CREATE TRIGGER trg_fx_reference_rate_set_updated_at BEFORE UPDATE ON "CX22073JW".fx_reference_rate FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_unit_category_master_set_updated_at ON "CX22073JW".unit_category_master;
CREATE TRIGGER trg_unit_category_master_set_updated_at BEFORE UPDATE ON "CX22073JW".unit_category_master FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_unit_master_set_updated_at ON "CX22073JW".unit_master;
CREATE TRIGGER trg_unit_master_set_updated_at BEFORE UPDATE ON "CX22073JW".unit_master FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_unit_conversion_rule_set_updated_at ON "CX22073JW".unit_conversion_rule;
CREATE TRIGGER trg_unit_conversion_rule_set_updated_at BEFORE UPDATE ON "CX22073JW".unit_conversion_rule FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_purchasable_unit_reference_set_updated_at ON "CX22073JW".purchasable_unit_reference;
CREATE TRIGGER trg_purchasable_unit_reference_set_updated_at BEFORE UPDATE ON "CX22073JW".purchasable_unit_reference FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_locale_unit_preference_set_updated_at ON "CX22073JW".locale_unit_preference;
CREATE TRIGGER trg_locale_unit_preference_set_updated_at BEFORE UPDATE ON "CX22073JW".locale_unit_preference FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_jurisdiction_master_set_updated_at ON "CX22073JW".jurisdiction_master;
CREATE TRIGGER trg_jurisdiction_master_set_updated_at BEFORE UPDATE ON "CX22073JW".jurisdiction_master FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_region_master_set_updated_at ON "CX22073JW".region_master;
CREATE TRIGGER trg_region_master_set_updated_at BEFORE UPDATE ON "CX22073JW".region_master FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_procedure_scope_master_set_updated_at ON "CX22073JW".procedure_scope_master;
CREATE TRIGGER trg_procedure_scope_master_set_updated_at BEFORE UPDATE ON "CX22073JW".procedure_scope_master FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_legal_region_requirement_set_updated_at ON "CX22073JW".legal_region_requirement;
CREATE TRIGGER trg_legal_region_requirement_set_updated_at BEFORE UPDATE ON "CX22073JW".legal_region_requirement FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

DROP TRIGGER IF EXISTS trg_public_office_reference_set_updated_at ON "CX22073JW".public_office_reference;
CREATE TRIGGER trg_public_office_reference_set_updated_at BEFORE UPDATE ON "CX22073JW".public_office_reference FOR EACH ROW EXECUTE FUNCTION "CX22073JW".set_updated_at();

-- ------------------------------------------------------------
-- indexes
-- ------------------------------------------------------------
CREATE INDEX IF NOT EXISTS idx_translation_text_key ON "CX22073JW".translation_text(translation_key_id);
CREATE INDEX IF NOT EXISTS idx_translation_text_locale ON "CX22073JW".translation_text(locale_id);
CREATE INDEX IF NOT EXISTS idx_term_alias_dictionary_canonical_term ON "CX22073JW".term_alias_dictionary(canonical_term);
CREATE INDEX IF NOT EXISTS idx_display_name_locale_variant_object ON "CX22073JW".display_name_locale_variant(object_type, object_code);

CREATE INDEX IF NOT EXISTS idx_currency_display_rule_currency ON "CX22073JW".currency_display_rule(currency_id);
CREATE INDEX IF NOT EXISTS idx_currency_display_rule_locale ON "CX22073JW".currency_display_rule(locale_id);
CREATE INDEX IF NOT EXISTS idx_fx_reference_rate_base_quote ON "CX22073JW".fx_reference_rate(base_currency_id, quote_currency_id);

CREATE INDEX IF NOT EXISTS idx_unit_master_category ON "CX22073JW".unit_master(unit_category_id);
CREATE INDEX IF NOT EXISTS idx_unit_conversion_rule_from_to ON "CX22073JW".unit_conversion_rule(from_unit_id, to_unit_id);
CREATE INDEX IF NOT EXISTS idx_locale_unit_preference_locale ON "CX22073JW".locale_unit_preference(locale_id);

CREATE INDEX IF NOT EXISTS idx_region_master_jurisdiction ON "CX22073JW".region_master(jurisdiction_id);
CREATE INDEX IF NOT EXISTS idx_legal_region_requirement_scope ON "CX22073JW".legal_region_requirement(procedure_scope_id);
CREATE INDEX IF NOT EXISTS idx_public_office_reference_jurisdiction_region ON "CX22073JW".public_office_reference(jurisdiction_id, region_id);
