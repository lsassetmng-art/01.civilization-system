# ============================================================
# CIVILIZATION PORTAL SITE DYNAMIC COPY AND APP TREE MODEL
# ============================================================

status: draft-additive
layer: model
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
DB 駆動文言モデルと
アプリ階層表示モデルを定義する。

# ============================================================
# 2. copy model
# ============================================================

文言モデルは、
ページごとの固定文言ではなく、
キー駆動で取得可能な構造とする。

最低要素:
- copy_key
- locale_code
- page_code
- section_code
- text_value
- status
- effective_from
- effective_to

copy_key の例:
- top.hero.title
- top.hero.description
- top.ai_helpdesk.title
- top.ai_helpdesk.description
- os.list.title
- guide.intro.body

# ============================================================
# 3. app tree model
# ============================================================

アプリ階層表示は、
tree node モデルを正とする。

最低要素:
- node_id
- parent_node_id
- node_code
- node_type
- display_name
- description
- icon_asset_id
- sort_order
- visibility_status
- publish_status
- target_kind
- target_code

target_kind の例:
- os
- application
- page
- helpdesk
- external

# ============================================================
# 4. AI helpdesk model
# ============================================================

AIヘルプデスク入口は、
tree node とは別に、
helpdesk entry として識別可能であることが望ましい。

最低要素:
- helpdesk_code
- display_name
- short_description
- route_or_target
- visibility_status
- support_scope

support_scope の例:
- all_applications
- selected_applications
- os_specific

# ============================================================
# 5. モデル原則
# ============================================================

- 文言は copy_key 単位で取得する
- アプリ表示は tree node 単位で取得する
- AIヘルプデスク入口は全アプリ共通入口として識別可能にする
- locale 対応を前提とする
