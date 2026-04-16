# ============================================================
# CIVILIZATION PORTAL SITE INTEGRATED TO SPLIT MAPPING
# ============================================================

status: canonical-design-support
layer: meta
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md の章構成と、
分割文書群との対応関係を固定するための対応表である。

本書の目的は、
統合正本と分割正本の対応を明確化し、
将来の見直し、分解、再統合、
レビュー、追加設計時に参照しやすくすることにある。

# ============================================================
# 2. ルート正本
# ============================================================

統合正本:
- 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

上位案内:
- 000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- 000_CIVILIZATION_PORTAL_SITE_INDEX.md

# ============================================================
# 3. INTEGRATED 章と分割文書の対応
# ============================================================

## 3.1 文書目的
INTEGRATED:
- 1. 文書目的

対応:
- ルート正本内保持
- 分割なし

## 3.2 システム定義
INTEGRATED:
- 2. システム定義

主対応:
- 020.architecture/020000_CIVILIZATION_PORTAL_SITE_ARCHITECTURE.md
- 080.policy/080000_CIVILIZATION_PORTAL_SITE_ENTRY_POLICY.md

## 3.3 Civilization 全体構造における位置づけ
INTEGRATED:
- 3. Civilization 全体構造における位置づけ

主対応:
- 020.architecture/020000_CIVILIZATION_PORTAL_SITE_ARCHITECTURE.md
- 020.architecture/020003_CIVILIZATION_PORTAL_SITE_CIVILIZATIONOS_BOUNDARY_ARCHITECTURE.md

## 3.4 基本原則
INTEGRATED:
- 4. 基本原則

主対応:
- 080.policy/080000_CIVILIZATION_PORTAL_SITE_ENTRY_POLICY.md
- 080.policy/080001_CIVILIZATION_PORTAL_SITE_OS_LINK_POLICY.md
- 080.policy/080002_CIVILIZATION_PORTAL_SITE_PERMISSION_POLICY.md
- 080.policy/080003_CIVILIZATION_PORTAL_SITE_PUBLIC_INFORMATION_POLICY.md

## 3.5 責務境界
INTEGRATED:
- 5. 責務境界

主対応:
- 020.architecture/020003_CIVILIZATION_PORTAL_SITE_CIVILIZATIONOS_BOUNDARY_ARCHITECTURE.md
- 020.architecture/020000_CIVILIZATION_PORTAL_SITE_ARCHITECTURE.md

## 3.6 利用者整理
INTEGRATED:
- 6. 利用者整理

主対応:
- 030.model/030002_CIVILIZATION_PORTAL_SITE_PERMISSION_MODEL.md

## 3.7 Webページ構成
INTEGRATED:
- 7. Webページ構成

主対応:
- 020.architecture/020001_CIVILIZATION_PORTAL_SITE_SCREEN_ARCHITECTURE.md

## 3.8 公開情報設計
INTEGRATED:
- 8. 公開情報設計

主対応:
- 080.policy/080003_CIVILIZATION_PORTAL_SITE_PUBLIC_INFORMATION_POLICY.md
- 120.implementation-ready/120000_CIVILIZATION_PORTAL_SITE_SCREEN_FIELD_SPEC.md

## 3.9 マイランチャー
INTEGRATED:
- 9. マイランチャー

主対応:
- 020.architecture/020001_CIVILIZATION_PORTAL_SITE_SCREEN_ARCHITECTURE.md
- 120.implementation-ready/120000_CIVILIZATION_PORTAL_SITE_SCREEN_FIELD_SPEC.md

## 3.10 OSカード定義
INTEGRATED:
- 10. OSカード定義

主対応:
- 030.model/030001_CIVILIZATION_PORTAL_SITE_OS_CARD_MODEL.md

## 3.11 遷移原則
INTEGRATED:
- 11. 遷移原則

主対応:
- 020.architecture/020002_CIVILIZATION_PORTAL_SITE_NAVIGATION_ARCHITECTURE.md
- 080.policy/080001_CIVILIZATION_PORTAL_SITE_OS_LINK_POLICY.md

## 3.12 OS Web入口遷移フロー
INTEGRATED:
- 12. OS Web入口遷移フロー

主対応:
- 050.flow/050001_CIVILIZATION_PORTAL_SITE_OS_LAUNCH_FLOW.md
- 060.integration/060001_CIVILIZATION_PORTAL_SITE_OS_LAUNCH_INTEGRATION.md

## 3.13 認証復帰原則
INTEGRATED:
- 13. 認証復帰原則

主対応:
- 050.flow/050002_CIVILIZATION_PORTAL_SITE_AUTH_RETURN_FLOW.md
- 060.integration/060002_CIVILIZATION_PORTAL_SITE_RETURN_CONTEXT_INTEGRATION.md

## 3.14 権限制御原則
INTEGRATED:
- 14. 権限制御原則

主対応:
- 030.model/030002_CIVILIZATION_PORTAL_SITE_PERMISSION_MODEL.md
- 080.policy/080002_CIVILIZATION_PORTAL_SITE_PERMISSION_POLICY.md

## 3.15 管理運用原則
INTEGRATED:
- 15. 管理運用原則

主対応:
- 070.operations/070000_CIVILIZATION_PORTAL_SITE_ADMIN_OPERATIONS.md
- 070.operations/070001_CIVILIZATION_PORTAL_SITE_NOTICE_OPERATIONS.md
- 070.operations/070002_CIVILIZATION_PORTAL_SITE_MAINTENANCE_OPERATIONS.md
- 070.operations/070003_CIVILIZATION_PORTAL_SITE_AUDIT_OPERATIONS.md

## 3.16 データモデル概要
INTEGRATED:
- 16. データモデル概要

主対応:
- 030.model/030003_CIVILIZATION_PORTAL_SITE_DATA_MODEL.md
- 120.implementation-ready/120002_CIVILIZATION_PORTAL_SITE_DB_LOGICAL_SCHEMA.md

## 3.17 API / 連携概要
INTEGRATED:
- 17. API / 連携概要

主対応:
- 060.integration/060000_CIVILIZATION_PORTAL_SITE_CIVILIZATION_AUTH_INTEGRATION.md
- 060.integration/060001_CIVILIZATION_PORTAL_SITE_OS_LAUNCH_INTEGRATION.md
- 060.integration/060002_CIVILIZATION_PORTAL_SITE_RETURN_CONTEXT_INTEGRATION.md
- 060.integration/060003_CIVILIZATION_PORTAL_SITE_API_CONTRACT_SUMMARY.md
- 120.implementation-ready/120001_CIVILIZATION_PORTAL_SITE_API_EXACT_CONTRACT.md

## 3.18 Webサイトマップ概要
INTEGRATED:
- 18. Webサイトマップ概要

主対応:
- 020.architecture/020001_CIVILIZATION_PORTAL_SITE_SCREEN_ARCHITECTURE.md
- 020.architecture/020002_CIVILIZATION_PORTAL_SITE_NAVIGATION_ARCHITECTURE.md

## 3.19 実装アーキテクチャ概要
INTEGRATED:
- 19. 実装アーキテクチャ概要

主対応:
- 020.architecture/020000_CIVILIZATION_PORTAL_SITE_ARCHITECTURE.md

## 3.20 DB論理 schema 概要
INTEGRATED:
- 20. DB論理 schema 概要

主対応:
- 120.implementation-ready/120002_CIVILIZATION_PORTAL_SITE_DB_LOGICAL_SCHEMA.md

## 3.21 API exact contract 概要
INTEGRATED:
- 21. API exact contract 概要

主対応:
- 120.implementation-ready/120001_CIVILIZATION_PORTAL_SITE_API_EXACT_CONTRACT.md

## 3.22 画面項目表概要
INTEGRATED:
- 22. 画面項目表概要

主対応:
- 120.implementation-ready/120000_CIVILIZATION_PORTAL_SITE_SCREEN_FIELD_SPEC.md

## 3.23 DB物理方針概要
INTEGRATED:
- 23. DB物理方針概要

主対応:
- 120.implementation-ready/120003_CIVILIZATION_PORTAL_SITE_DB_PHYSICAL_GUIDELINE.md

## 3.24 exact column 定義概要
INTEGRATED:
- 24. exact column 定義概要

主対応:
- 120.implementation-ready/120004_CIVILIZATION_PORTAL_SITE_EXACT_COLUMN_DEFINITION.md

## 3.25 現在状態
INTEGRATED:
- 25. 現在状態

対応:
- ルート正本内保持
- 各 overview / index にも状態記述あり

## 3.26 最終定義
INTEGRATED:
- 26. 最終定義

対応:
- ルート正本内保持
- overview と整合維持

## 3.27 詳細分割文書参照
INTEGRATED:
- 27. 詳細分割文書参照

対応:
- 本対応表
- 000_CIVILIZATION_PORTAL_SITE_INDEX.md

# ============================================================
# 4. レイヤ別の役割整理
# ============================================================

020.architecture:
- 全体構造
- Webページ構成
- 導線構造
- CivilizationOS 境界

030.model:
- ドメイン要素
- OSカード
- 入口権限制御
- データモデル

050.flow:
- ログイン導線
- OS Web入口遷移
- 認証復帰
- アクセス拒否
- メンテナンス導線

060.integration:
- CivilizationOS 認証参照
- 各OS Web入口連携
- 復帰文脈
- API区分

070.operations:
- 管理運用
- お知らせ運用
- メンテ運用
- 監査運用

080.policy:
- 入口原則
- OSリンク原則
- 権限制御原則
- 公開情報原則

120.implementation-ready:
- 画面項目表
- API exact contract
- DB論理 schema
- DB物理方針
- exact column 定義

# ============================================================
# 5. 解釈原則
# ============================================================

- ルート正本の本文基準は 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md とする。
- 分割文書は対応レイヤの詳細正本として扱う。
- ルート正本と分割文書に差がある場合、まずルート正本を確認する。
- 分割文書の修正は、必要に応じてルート正本との整合確認を伴う。
- 本対応表は、統合正本と分割正本の橋渡し文書として扱う。

# ============================================================
# 6. 現在状態
# ============================================================

本対応表は、Portal Site 設計の分割整理後の canonical design support 文書である。  
実装、DDL、本番投入はまだ行わない。
