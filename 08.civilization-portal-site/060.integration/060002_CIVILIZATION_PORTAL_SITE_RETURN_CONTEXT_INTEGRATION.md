# ============================================================
# CIVILIZATION PORTAL SITE RETURN CONTEXT INTEGRATION
# ============================================================

status: canonical-design
layer: integration
domain: return-context
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、認証復帰文脈の統合原則を定義する。

# ============================================================
# 2. 保持項目
# ============================================================

- requested_os_code
- return_target
- request_timestamp

# ============================================================
# 3. 原則
# ============================================================

- 未ログイン遷移要求時は復帰文脈を保存する。
- 認証後は復帰文脈を解決する。
- 原則として元の対象OS Web入口へ戻す。

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

# ============================================================
# R13 Exact Login Return Context
# ============================================================

R13 Portal -> CivilizationOS login handoff では次を保持する。

- locale_code
- language_code
- after_login_path
- return_to
- requested_os_code

Civilization:
- requested_os_code = civilization
- after_login_path = /civilization-menu

AI Worker:
- requested_os_code = aiworker
- after_login_path = /civilization-menu

AIWorkerOS の外部 origin は復帰文脈から受け取らず、
CivilizationOS server-side 設定で解決する。

詳細:
- 060005_CIVILIZATION_PORTAL_TO_CIVILIZATIONOS_LOGIN_HANDOFF_REPAIR_DESIGN.md
