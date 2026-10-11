# ============================================================
# CIVILIZATION PORTAL SITE CIVILIZATIONOS BOUNDARY ARCHITECTURE
# ============================================================

status: canonical-design
layer: architecture
domain: civilizationos-boundary
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、Civilization Portal Site と CivilizationOS の責務境界を定義する。

# ============================================================
# 2. Civilization Portal Site が担うもの
# ============================================================

- 公開情報
- 世界観説明
- OSカタログ
- OS詳細説明
- ログイン導線
- 新規登録導線
- Webランチャー
- Web遷移前判定
- お知らせ
- メンテナンス案内
- 管理Web画面
- 監査補助

# ============================================================
# 3. CivilizationOS が担うもの
# ============================================================

- 新規登録正本
- 認証正本
- Civilization ID 発行正本
- ログイン後の文明シミュレーション世界本体

# ============================================================
# 4. 境界原則
# ============================================================

- Portal Site は認証正本を持たない。
- 認証は CivilizationOS のみが担う。
- Portal Site は認証結果を参照して入口制御を行う。
- CivilizationOS は Portal Site の代替導線とはならない。

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
# R13 CivilizationOS Login Handoff Repair
# ============================================================

Portal の Civilization / AI Worker 公開入口における未認証遷移は、
Portal 自身の mock `/login` を認証正本として使用してはならない。

正本の認証境界は CivilizationOS とし、
Portal は設定済み CivilizationOS Web `/login` へ復帰文脈を付けて
遷移する。

詳細:
- ../060.integration/060005_CIVILIZATION_PORTAL_TO_CIVILIZATIONOS_LOGIN_HANDOFF_REPAIR_DESIGN.md
