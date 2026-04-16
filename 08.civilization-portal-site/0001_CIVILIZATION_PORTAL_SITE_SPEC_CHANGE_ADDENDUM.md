# ============================================================
# CIVILIZATION PORTAL SITE SPEC CHANGE ADDENDUM
# AI HELPDESK ENTRY / DB COPY / DB APP HIERARCHY
# ============================================================

status: draft-additive
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
Civilization Portal Site の仕様変更を
追補設計として固定する文書である。

今回の変更は次の3点である。

- すべてのアプリのヘルプデスクとして AIチャット入口をトップ画面に設ける
- ページ文言は DB から取得して表示する
- アプリ一覧は階層表示とし、DB を使った動的表示にする

# ============================================================
# 2. 変更要点
# ============================================================

Portal Site は、
単なる公開入口に加えて、
全アプリ共通のヘルプデスク入口を持つ。

トップ画面には、
AIチャット入口を常設し、
利用者がアプリ横断で問い合わせ可能な導線を提供する。

また、
Portal Site の公開文言は固定埋込ではなく、
DB から取得して表示する方式へ変更する。

さらに、
アプリ一覧 / OS 一覧 / 関連導線は、
静的固定表示ではなく、
DB 管理された階層構造に従って
動的表示する方式へ変更する。

# ============================================================
# 3. 変更影響領域
# ============================================================

- architecture
- model
- integration
- policy
- implementation-ready
- development

# ============================================================
# 4. 追補参照
# ============================================================

- 020.architecture/020004_CIVILIZATION_PORTAL_SITE_AI_HELPDESK_AND_DYNAMIC_NAV_ARCHITECTURE.md
- 030.model/030004_CIVILIZATION_PORTAL_SITE_DYNAMIC_COPY_AND_APP_TREE_MODEL.md
- 060.integration/060004_CIVILIZATION_PORTAL_SITE_DB_DRIVEN_COPY_AND_APP_TREE_INTEGRATION.md
- 080.policy/080004_CIVILIZATION_PORTAL_SITE_AI_HELPDESK_AND_DB_DISPLAY_POLICY.md
- 120.implementation-ready/120005_CIVILIZATION_PORTAL_SITE_DB_DRIVEN_COPY_AND_APP_TREE_EXACT_SPEC.md
- 130.development/1300008_CIVILIZATION_PORTAL_SITE_SPEC_CHANGE_IMPLEMENTATION_DESIGN.md

# ============================================================
# 5. 原則
# ============================================================

- additive only
- 既存正本を破壊しない
- 固定文言ではなく DB 配信文言を正とする
- 固定アプリ一覧ではなく DB 駆動階層を正とする
- AIチャット入口は全アプリ共通ヘルプデスク入口として扱う
