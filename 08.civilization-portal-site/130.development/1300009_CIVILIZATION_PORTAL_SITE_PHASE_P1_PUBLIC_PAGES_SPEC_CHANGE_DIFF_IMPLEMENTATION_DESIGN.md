# ============================================================
# CIVILIZATION PORTAL SITE PHASE P1 PUBLIC PAGES
# SPEC CHANGE DIFF IMPLEMENTATION DESIGN
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
仕様変更
- トップ画面に AIチャット入口を設ける
- ページ文言を DB 取得にする
- アプリ一覧を DB 駆動階層表示にする
を前提に、
P1 公開ページ実装設計の差分を定義する文書である。

# ============================================================
# 2. 差分対象
# ============================================================

差分対象ページは次の通りとする。

- /
- /civilization
- /os
- /os/{os_code}
- /guide

# ============================================================
# 3. トップページ差分
# ============================================================

トップページには、
全アプリ共通ヘルプデスクとして
AIチャット入口を表示する。

追加対象:
- AI helpdesk section
- AI helpdesk CTA
- AI helpdesk short guidance

トップページ文言は固定埋込ではなく、
copy service を通じて DB から取得する。

トップページ表示ブロック例:
- hero
- featured applications or groups
- AI helpdesk entry
- notice summary
- quick guide links

# ============================================================
# 4. Civilization紹介ページ差分
# ============================================================

Civilization紹介ページの説明文は、
DB copy 取得へ切り替える。

対象:
- title
- introductory body
- Civilization ID explanation
- Portal / CivilizationOS / 各OS の関係説明

# ============================================================
# 5. OS一覧ページ差分
# ============================================================

OS一覧ページは、
固定 mock 一覧表示ではなく、
DB 駆動階層表示を前提とする。

最低要件:
- tree root 取得
- child node 展開
- display_name 表示
- description 表示
- status 表示
- target 導線表示

node_type に応じた表示例:
- group
- os
- application
- helpdesk
- page

# ============================================================
# 6. OS詳細ページ差分
# ============================================================

OS詳細ページ文言は DB copy 取得を前提とする。

対象:
- page title
- summary
- eligibility description
- caution text
- CTA text

また、
関連アプリや関連グループを
DB tree から参照可能にする余地を持つ。

# ============================================================
# 7. Guideページ差分
# ============================================================

Guideページ文言は DB copy 取得を前提とする。

対象:
- intro text
- step labels
- login guidance
- signup guidance
- helpdesk guidance

Guide では、
AI helpdesk へ誘導する導線を設けてもよい。

# ============================================================
# 8. 追加サービス前提
# ============================================================

P1 差分を成立させるため、
少なくとも次の service interface を想定する。

- copy service
- app tree service
- helpdesk entry service

最低責務:
copy service:
- page_code / section_code / locale_code で文言取得

app tree service:
- parent node 単位で child node 取得
- 表示順付き取得

helpdesk entry service:
- top page 用 helpdesk entry 取得

# ============================================================
# 9. fallback 方針
# ============================================================

開発初期は fallback を許可する。

ただし原則は次の通りとする。

- fixed text は暫定 fallback
- DB copy を正本とする
- fixed app list は暫定 fallback
- DB tree を正本とする

# ============================================================
# 10. P1 差分タスク
# ============================================================

P1-diff-1:
- top page に AI helpdesk section を追加

P1-diff-2:
- top page copy を DB key 駆動へ変更

P1-diff-3:
- civilization page copy を DB key 駆動へ変更

P1-diff-4:
- os list を DB tree 駆動描画へ変更

P1-diff-5:
- os detail copy を DB key 駆動へ変更

P1-diff-6:
- guide page copy を DB key 駆動へ変更

# ============================================================
# 11. 差分完了条件
# ============================================================

- トップ画面に AIチャット入口がある
- P1 公開ページ文言が DB 取得前提構造になっている
- OS一覧が DB tree を受け取れる構造になっている
- fixed 文言 / fixed 一覧が正本扱いされていない
