# ============================================================
# portal 設計書
# ワンブロック統合版
# ============================================================

status: canonical-draft
schema: portal
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
Civilization Portal Site における
portal schema の設計を
単独で参照できるように統合整理した文書である。

本書の目的は次の通りとする。

- portal schema の役割を固定する
- portal が持つべきテーブルを固定する
- 文言 / ナビ / helpdesk 入口 / page section の責務を固定する
- scenario との境界を固定する
- knowledge body を持たない原則を固定する

# ============================================================
# 2. schema 名
# ============================================================

入口・表示・ナビ正本 schema 名は次とする。

- portal

# ============================================================
# 3. portal の位置づけ
# ============================================================

portal は、
Civilization Portal Site の
入口面 / 表示面 / ナビ面の正本 schema である。

portal は次を扱う。

- ページ文言
- DB駆動ナビ階層
- 遷移先定義
- AIヘルプデスク入口UI
- ページセクション構成
- セクション内アイテム構成

portal は、
知識本文やストーリー本文そのものの正本ではない。

# ============================================================
# 4. portal の責務
# ============================================================

portal は次を担う。

- トップ画面の表示構成
- Civilization紹介ページの表示構成
- OS一覧ページの表示構成
- Guideページの表示構成
- DBから取得した文言の表示
- アプリ / OS / group の階層表示
- AIヘルプデスク入口表示
- 各入口の遷移先解決

# ============================================================
# 5. portal の主要テーブル
# ============================================================

- portal.copy_text
- portal.nav_node
- portal.nav_node_target
- portal.helpdesk_entry
- portal.page_section
- portal.page_section_item

# ============================================================
# 6. copy_text
# ============================================================

purpose:
- ページ文言の正本
- タイトル / 説明文 / CTA の保持

columns:
- copy_text_id uuid not null
- copy_key text not null
- locale_code text not null
- page_code text null
- section_code text null
- text_value text not null
- status text not null
- effective_from timestamptz null
- effective_to timestamptz null
- created_at timestamptz not null
- updated_at timestamptz not null

unique:
- (copy_key, locale_code, effective_from)

# ============================================================
# 7. nav_node
# ============================================================

purpose:
- DB駆動の階層ナビ本体
- group / os / application / helpdesk / page のノード表現

columns:
- nav_node_id uuid not null
- node_code text not null
- parent_nav_node_id uuid null
- node_type text not null
- display_name text not null
- description text null
- icon_asset_id uuid null
- sort_order integer not null default 0
- visibility_status text not null
- publish_status text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- parent_nav_node_id -> nav_node.nav_node_id

unique:
- node_code

# ============================================================
# 8. nav_node_target
# ============================================================

purpose:
- nav_node の遷移先定義

columns:
- nav_node_target_id uuid not null
- nav_node_id uuid not null
- target_kind text not null
- target_code text null
- internal_route text null
- external_url text null
- helpdesk_code text null
- open_mode text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- nav_node_id -> nav_node.nav_node_id

# ============================================================
# 9. helpdesk_entry
# ============================================================

purpose:
- AIヘルプデスク入口の正本

columns:
- helpdesk_entry_id uuid not null
- helpdesk_code text not null
- display_name text not null
- short_description text null
- route_or_target text not null
- support_scope text not null
- visibility_status text not null
- publish_status text not null
- sort_order integer not null default 0
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

unique:
- helpdesk_code

# ============================================================
# 10. page_section
# ============================================================

purpose:
- ページ内の表示ブロック定義

columns:
- page_section_id uuid not null
- page_code text not null
- section_code text not null
- section_type text not null
- title_copy_key text null
- description_copy_key text null
- sort_order integer not null default 0
- visibility_status text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

unique:
- (page_code, section_code)

# ============================================================
# 11. page_section_item
# ============================================================

purpose:
- page_section の中身定義

columns:
- page_section_item_id uuid not null
- page_section_id uuid not null
- item_type text not null
- ref_nav_node_id uuid null
- ref_helpdesk_entry_id uuid null
- ref_copy_key text null
- sort_order integer not null default 0
- visibility_status text not null
- status text not null
- created_at timestamptz not null
- updated_at timestamptz not null

fk:
- page_section_id -> page_section.page_section_id
- ref_nav_node_id -> nav_node.nav_node_id
- ref_helpdesk_entry_id -> helpdesk_entry.helpdesk_entry_id

# ============================================================
# 12. 基本関係
# ============================================================

- nav_node 1 --- n nav_node
- nav_node 1 --- n nav_node_target
- page_section 1 --- n page_section_item
- page_section_item n --- 1 nav_node
- page_section_item n --- 1 helpdesk_entry

# ============================================================
# 13. 初期構成の考え方
# ============================================================

top page:
- hero
- ai_helpdesk
- app_tree

初期 root node:
- civilization_root
- os_root
- application_root
- helpdesk_root

初期 helpdesk:
- portal_top_ai_helpdesk

初期 copy:
- top.hero.title
- top.hero.description
- top.ai_helpdesk.title
- top.ai_helpdesk.description
- top.ai_helpdesk.cta
