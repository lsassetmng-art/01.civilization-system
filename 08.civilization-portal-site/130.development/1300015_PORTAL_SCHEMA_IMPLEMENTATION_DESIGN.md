# ============================================================
# PORTAL SCHEMA IMPLEMENTATION DESIGN
# ============================================================

status: draft-additive
layer: development
schema: portal
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 実装方針
# ============================================================

portal schema は、
Portal Site の入口面・表示面の正本として先に整備する。

# ============================================================
# 2. 実装優先順
# ============================================================

1. copy_text
2. helpdesk_entry
3. nav_node
4. nav_node_target
5. page_section
6. page_section_item

# ============================================================
# 3. 接続方針
# ============================================================

- トップ画面の AIヘルプデスク入口は helpdesk_entry を使う
- 文言は copy_text を使う
- 一覧表示は nav_node / nav_node_target を使う
- ページ構成は page_section / page_section_item を使う
- 知識本文は portal では持たず CX22073JW を参照する
