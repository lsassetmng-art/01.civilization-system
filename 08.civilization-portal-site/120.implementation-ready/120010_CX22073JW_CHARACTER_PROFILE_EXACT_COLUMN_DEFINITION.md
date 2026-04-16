# ============================================================
# CX22073JW CHARACTER_PROFILE EXACT COLUMN DEFINITION
# ============================================================

status: draft-additive
layer: implementation-ready
schema: CX22073JW
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
CX22073JW.character_profile の exact column 定義を固定する。

# ============================================================
# 2. 役割
# ============================================================

character_profile は、
人物情報の正本である。

対象:
- Civilization人物
- 現実人物
- 歴史人物
- アプリ内人物
- OS内案内役
- シナリオ登場人物

# ============================================================
# 3. テーブル定義
# ============================================================

table_name:
- CX22073JW.character_profile

primary_key:
- character_profile_id uuid

columns:
- character_profile_id uuid not null
- entity_id uuid not null
- character_code text not null
- display_name text not null
- official_name text null
- short_bio text null
- character_type text not null
- origin_type text not null
- gender_code text null
- species_type text null
- role_title text null
- occupation_code text null
- affiliation_country_code text null
- affiliation_company_code text null
- affiliation_org_code text null
- rank_or_position text null
- age integer null
- birth_year integer null
- birth_year_precision text null
- death_year integer null
- death_year_precision text null
- era_label text null
- life_status text not null
- importance_level text null
- portrait_asset_id uuid null
- canonical_article_id uuid null
- public_status text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

foreign_keys:
- entity_id -> CX22073JW.entity_master.entity_id
- canonical_article_id -> CX22073JW.article.article_id

unique_candidates:
- character_code
- entity_id

# ============================================================
# 4. 固定追加項目
# ============================================================

必須前提として持つ:
- affiliation_country_code
- affiliation_company_code
- age
- birth_year
- death_year

# ============================================================
# 5. 推奨 code 値例
# ============================================================

character_type examples:
- human
- ai_human
- ai_robot
- historical_person
- civilization_character
- fictional_character

origin_type examples:
- real_world
- civilization_world
- mixed_reference

life_status examples:
- alive
- deceased
- unknown

birth_year_precision / death_year_precision examples:
- exact
- approximate
- century_only
- unknown

public_status examples:
- public
- internal
- hidden

# ============================================================
# 6. 原則
# ============================================================

- 人物情報の正本は character_profile とする
- シナリオ再生側は人物本文を持たず参照する
- 所属国家 / 所属企業は code を最初から持つ
- 年齢は補助表示用であり、生年 / 死亡年も保持する
