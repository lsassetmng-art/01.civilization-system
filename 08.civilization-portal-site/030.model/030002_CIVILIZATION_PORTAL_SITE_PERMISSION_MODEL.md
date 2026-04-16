# ============================================================
# CIVILIZATION PORTAL SITE PERMISSION MODEL
# ============================================================

status: canonical-design
layer: model
domain: permission
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site の入口権限制御モデルを定義する。

# ============================================================
# 2. 判定軸
# ============================================================

- login status
- entity type
- affiliation summary
- account status
- contract tier
- beta eligibility
- age / legal / region flags
- publish status
- maintenance status

# ============================================================
# 3. 重要原則
# ============================================================

- 表示可否と遷移可否は分離する。
- Portal Site は入口前段判定のみを行う。
- 各OS内部の詳細権限は各OSが別途判定する。

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
