# ============================================================
# CIVILIZATION PORTAL SITE DB LOGICAL SCHEMA
# ============================================================

status: canonical-design
layer: implementation-ready
domain: db-logical-schema
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Portal Site の論理schema概要を定義する。

# ============================================================
# 2. 論理schema
# ============================================================

Portal Site の論理 schema は `portal` を採用する。

# ============================================================
# 3. 主要論理テーブル
# ============================================================

- portal.os_category_master
- portal.segment_master
- portal.os_master
- portal.asset
- portal.os_listing
- portal.os_launch_rule
- portal.notice
- portal.feature_slot
- portal.copy
- portal.maintenance
- portal.personalized_launcher_state
- portal.admin_audit_log

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
