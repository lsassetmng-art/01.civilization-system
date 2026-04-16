# ============================================================
# CIVILIZATION PORTAL SITE DESIGN COMPLETE NOTE
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
Civilization Portal Site 設計書群が
実装前 canonical design として
完了状態に到達したことを記録する補助文書である。

本書の目的は、
設計完了時点の状態、
正本構成、
参照順、
今後の扱いを固定することにある。

# ============================================================
# 2. 設計完了の定義
# ============================================================

Civilization Portal Site 設計は、
次の条件を満たしたため、
実装前 canonical design として完了扱いとする。

- ルート正本が整備されている
- 統合正本が整備されている
- レイヤ別分割文書が整備されている
- 各レイヤの overview / index が整備されている
- 個別文書に上位参照が付与されている
- integrated と分割文書の対応表が整備されている
- 命名・番号・入口順の点検が完了している
- Webページ前提の設計として統一されている

# ============================================================
# 3. ルート正本
# ============================================================

Portal Site 設計のルート正本は次の通りとする。

- 00000_CIVILIZATION_PORTAL_SITE_ROOT_FILE_GUIDE.md
- 0000_CIVILIZATION_PORTAL_SITE_FOLDER_OVERVIEW.md
- 000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- 000_CIVILIZATION_PORTAL_SITE_INDEX.md
- 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

このうち本文正本は次とする。

- 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

# ============================================================
# 4. 分割レイヤ
# ============================================================

Portal Site 設計の分割レイヤは次の通りとする。

- 020.architecture
- 030.model
- 050.flow
- 060.integration
- 070.operations
- 080.policy
- 120.implementation-ready
- 900.meta

# ============================================================
# 5. Web前提の確定
# ============================================================

Portal Site は、
Civilization 全体の公開入口となる
Webサイト / Webアプリとして設計を固定する。

この前提により、次を確定する。

- 各OSへの導線は Webリンクとする。
- 各OS利用開始は Web入口への遷移とする。
- 未ログイン時は CivilizationOS のWebログインページへ誘導する。
- 認証後は原則として要求元の対象OS Web入口へ復帰させる。
- OS間の直接リンクは禁止する。

# ============================================================
# 6. 現在状態
# ============================================================

Portal Site 設計の現在状態は次の通りとする。

- 実装前 canonical design 完了
- 実装未着手
- DDL未実行
- 本番投入未実施

# ============================================================
# 7. 今後の扱い
# ============================================================

今後、Portal Site の実装を検討する場合は、
本設計書群を正本参照として扱う。

実装、DDL、画面開発、API開発、運用設計の具体化は、
本設計書群との整合確認を前提とする。

本段階では、
実装そのものはまだ開始しない。

# ============================================================
# 8. 推奨参照順
# ============================================================

推奨参照順は次の通りとする。

1. 00000_CIVILIZATION_PORTAL_SITE_ROOT_FILE_GUIDE.md
2. 0000_CIVILIZATION_PORTAL_SITE_FOLDER_OVERVIEW.md
3. 000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
4. 000_CIVILIZATION_PORTAL_SITE_INDEX.md
5. 00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md
6. 各レイヤ overview / index
7. 各個別文書
8. 900.meta の補助文書

# ============================================================
# 9. 補助文書
# ============================================================

Portal Site 設計の補助文書は次の通りとする。

- 900000_CIVILIZATION_PORTAL_SITE_INTEGRATED_TO_SPLIT_MAPPING.md
- 900001_CIVILIZATION_PORTAL_SITE_SYSTEM_INDEX_REFLECTION_NOTE.md
- 900002_CIVILIZATION_PORTAL_SITE_DESIGN_COMPLETE_NOTE.md

# ============================================================
# 10. 最終記録
# ============================================================

Civilization Portal Site 設計書群は、
Civilization 全体の公開入口システムに対する
実装前 canonical design として完了した。

本設計書群は、
今後の実装検討時に参照される正本である。

現時点では、
実装、DDL、本番投入はまだ行わない。
