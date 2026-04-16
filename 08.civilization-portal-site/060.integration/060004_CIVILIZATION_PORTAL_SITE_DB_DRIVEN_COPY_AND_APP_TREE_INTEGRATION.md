# ============================================================
# CIVILIZATION PORTAL SITE DB DRIVEN COPY AND APP TREE INTEGRATION
# ============================================================

status: draft-additive
layer: integration
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
DB 駆動文言表示と
DB 駆動アプリ階層表示の integration を定義する。

# ============================================================
# 2. copy integration
# ============================================================

Portal Site は、
ページ表示時に copy service を通じて
対象 locale / page / section の文言を取得する。

取得対象:
- title
- description
- CTA text
- help text
- helpdesk section text

# ============================================================
# 3. app tree integration
# ============================================================

Portal Site は、
navigation service または tree service を通じて
公開対象 node を取得し、
階層構造に従って描画する。

取得条件:
- locale
- publish_status
- visibility_status
- parent_node
- viewer context

# ============================================================
# 4. AI helpdesk integration
# ============================================================

トップ画面の AIヘルプデスク入口は、
固定埋込ではなく、
DB から取得した helpdesk entry または copy + target 情報で構成可能とする。

# ============================================================
# 5. integration 原則
# ============================================================

- copy は DB 正本取得とする
- app tree は DB 正本取得とする
- fallback は限定的に許可するが、固定文言常用は避ける
- helpdesk 入口も DB 管理可能にする
