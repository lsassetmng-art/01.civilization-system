# ============================================================
# CIVILIZATION PORTAL SITE API EXACT CONTRACT
# ============================================================

status: canonical-design
layer: implementation-ready
domain: api-exact-contract
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site API の exact contract 参照文書である。

# ============================================================
# 2. API区分
# ============================================================

- 公開情報API
- CivilizationOS 認証参照API
- 遷移判定API
- ランチャーAPI
- 管理API

# ============================================================
# 3. 遷移判定API 要件
# ============================================================

- 遷移可能か
- ログインが必要か
- 拒否理由
- メンテ理由
- 次に取るべき行動
- return context token

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
