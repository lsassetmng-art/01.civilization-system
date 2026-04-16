# ============================================================
# CIVILIZATION PORTAL SITE EXACT COLUMN DEFINITION
# ============================================================

status: canonical-design
layer: implementation-ready
domain: exact-column-definition
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site DB の exact column 定義参照文書である。

# ============================================================
# 2. 対象
# ============================================================

- category master
- segment master
- os master
- asset
- os listing
- os launch rule
- notice
- feature slot
- copy
- maintenance
- personalized launcher state
- admin audit log

# ============================================================
# 3. 現在状態
# ============================================================

本設計は schema-definition level では implementation-ready である。  
ただし、実装自体はまだ開始しない。

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
