# ============================================================
# CIVILIZATION PORTAL SITE P1 COPY KEYS AND APP TREE RENDERING
# IMPLEMENTATION DESIGN
# ============================================================

status: draft-additive
layer: development
phase: P1
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
P1 公開ページにおける
copy key 設計と app tree rendering 設計を定義する。

# ============================================================
# 2. copy key minimum set
# ============================================================

top:
- top.hero.title
- top.hero.description
- top.ai_helpdesk.title
- top.ai_helpdesk.description
- top.ai_helpdesk.cta
- top.quick_links.title

civilization:
- civilization.page.title
- civilization.page.description
- civilization.id.title
- civilization.id.body

os list:
- os.list.page.title
- os.list.page.description

os detail:
- os.detail.title
- os.detail.description
- os.detail.eligibility
- os.detail.cta

guide:
- guide.page.title
- guide.page.description
- guide.step.1
- guide.step.2
- guide.step.3

# ============================================================
# 3. app tree rendering minimum rules
# ============================================================

- root node から開始する
- child node は sort_order で並べる
- visibility_status が visible の node のみ表示する
- publish_status が published の node を優先する
- node_type に応じて renderer を分ける

# ============================================================
# 4. node renderer examples
# ============================================================

group:
- セクション見出し
- 子要素群の container

os:
- OS card renderer

application:
- application card renderer

helpdesk:
- helpdesk entry renderer

page:
- page link renderer

# ============================================================
# 5. helpdesk rendering
# ============================================================

AI helpdesk renderer は少なくとも次を表示する。

- display_name
- short_description
- CTA
- target route

# ============================================================
# 6. 開発原則
# ============================================================

- 最初は mock source で renderer を成立させる
- 後から service を差し替えても page 構造を崩さない
- copy key 名を page 固有直書きにしすぎない
