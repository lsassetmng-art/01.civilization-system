# ============================================================
# CIVILIZATION PORTAL SITE DEVELOPMENT LAYER REFLECTION NOTE
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
130.development layer の追加を
Portal Site 設計書群全体にどう位置づけるかを
記録する補助文書である。

# ============================================================
# 2. development layer の位置づけ
# ============================================================

130.development は、
Portal Site の実装そのものではなく、
実装前の具体的な開発設計を扱う layer とする。

本 layer は次を固定する。

- 開発優先方針
- 開発フェーズ
- P0〜P4 実装設計
- ディレクトリ構成
- ファイル責務境界
- 実装着手順

# ============================================================
# 3. 上位設計との関係
# ============================================================

development layer は次の上位正本に従う。

- ../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

architecture / model / flow / integration / operations / policy /
implementation-ready の各layerで固定された内容を、
実装に落とす直前の具体設計へ展開する役割を持つ。

# ============================================================
# 4. 含む文書
# ============================================================

- ../130.development/13000000_CIVILIZATION_PORTAL_SITE_DEVELOPMENT_LAYER_OVERVIEW.md
- ../130.development/13000001_CIVILIZATION_PORTAL_SITE_DEVELOPMENT_LAYER_INDEX.md
- ../130.development/1300000_CIVILIZATION_PORTAL_SITE_DEVELOPMENT_OVERVIEW.md
- ../130.development/1300001_CIVILIZATION_PORTAL_SITE_DEVELOPMENT_INDEX.md
- ../130.development/1300002_CIVILIZATION_PORTAL_SITE_PHASE_P0_WEB_FOUNDATION_IMPLEMENTATION_DESIGN.md
- ../130.development/1300003_CIVILIZATION_PORTAL_SITE_PHASE_P1_PUBLIC_PAGES_IMPLEMENTATION_DESIGN.md
- ../130.development/1300004_CIVILIZATION_PORTAL_SITE_PHASE_P2_AUTH_ENTRY_IMPLEMENTATION_DESIGN.md
- ../130.development/1300005_CIVILIZATION_PORTAL_SITE_PHASE_P3_OS_ENTRY_DECISION_IMPLEMENTATION_DESIGN.md
- ../130.development/1300006_CIVILIZATION_PORTAL_SITE_PHASE_P4_LAUNCHER_IMPLEMENTATION_DESIGN.md
- ../130.development/1300007_CIVILIZATION_PORTAL_SITE_DIRECTORY_AND_FILE_STRUCTURE_IMPLEMENTATION_DESIGN.md

# ============================================================
# 5. 現在状態
# ============================================================

development layer は追加済みであり、
Portal Site 設計書群は
概念設計 / 詳細設計 / 実装前仕様 / 実装設計
まで揃った状態にある。

現時点では、
実コード作成、DDL実行、本番投入はまだ行わない。
