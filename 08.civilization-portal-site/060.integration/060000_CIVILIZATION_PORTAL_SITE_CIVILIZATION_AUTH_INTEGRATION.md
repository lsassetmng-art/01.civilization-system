# ============================================================
# CIVILIZATION PORTAL SITE CIVILIZATION AUTH INTEGRATION
# ============================================================

status: canonical-design
layer: integration
domain: civilization-auth
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site と CivilizationOS 認証参照の統合原則を定義する。

# ============================================================
# 2. 参照対象
# ============================================================

- session summary
- profile summary
- login URL
- signup URL
- logout

# ============================================================
# 3. 統合原則
# ============================================================

- Portal Site は認証正本を持たない。
- 認証は CivilizationOS のみが担う。
- Portal Site は認証結果を参照して入口制御を行う。

# ============================================================
# 99. 上位参照
# ============================================================

本個別文書を読む際の上位参照は次の通りとする。

root:
- ../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

layer:
- 同一レイヤの *_OVERVIEW.md
- 同一レイヤの *_INDEX.md

原則として、
個別文書で詳細を確認し、
必要に応じて同一レイヤの overview / index へ戻り、
さらに必要に応じてルート正本へ戻る。
