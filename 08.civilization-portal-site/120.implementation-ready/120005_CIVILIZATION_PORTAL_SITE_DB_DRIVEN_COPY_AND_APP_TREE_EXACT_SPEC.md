# ============================================================
# CIVILIZATION PORTAL SITE DB DRIVEN COPY AND APP TREE EXACT SPEC
# ============================================================

status: draft-additive
layer: implementation-ready
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
DB 駆動文言表示と
DB 駆動アプリ階層表示に関する
exact spec の入口文書である。

# ============================================================
# 2. copy exact minimum
# ============================================================

minimum_fields:
- copy_key
- locale_code
- page_code
- section_code
- text_value
- status
- effective_from
- effective_to

# ============================================================
# 3. app tree exact minimum
# ============================================================

minimum_fields:
- node_id
- parent_node_id
- node_code
- node_type
- display_name
- description
- sort_order
- visibility_status
- publish_status
- target_kind
- target_code

# ============================================================
# 4. helpdesk exact minimum
# ============================================================

minimum_fields:
- helpdesk_code
- display_name
- short_description
- route_or_target
- visibility_status
- support_scope

# ============================================================
# 5. rendering rules
# ============================================================

- トップ画面は AIヘルプデスク入口を表示する
- ページ文言は copy_key から取得する
- 一覧表示は tree node を親子関係で描画する
- 表示順は sort_order を使う
