# ============================================================
# CIVILIZATION PORTAL SITE SYSTEM INDEX REFLECTION NOTE
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
Civilization Portal Site を Civilization System 全体から
見つけやすくするための
上位 index 反映方針を整理する補助文書である。

本書の目的は、
Portal Site を docs 配下に埋もれさせず、
Civilization 全体の公開入口システムとして
独立トップ階層に置いた理由と、
今後上位 index に反映すべき要点を固定することにある。

# ============================================================
# 2. 現在の正式配置
# ============================================================

Civilization Portal Site の正式配置先は次とする。

- /data/data/com.termux/files/home/01.civilization-system/08.civilization-portal-site

この配置は、
Portal Site を単なる文書置き場ではなく、
Civilization 全体の公開入口システムとして扱うためのものである。

# ============================================================
# 3. docs 配下に置かない理由
# ============================================================

Portal Site を 90.docs 配下に置かない理由は次の通りとする。

- docs 配下では設計書群に埋もれやすい。
- Portal Site は Civilization 全体の公開入口であり、単なる資料ではない。
- Portal Site は各OSへの唯一の公式Web導線を担う。
- Portal Site は CivilizationOS 認証導線と接続する上位システムである。
- 将来、設計書だけでなく運用資料や実装前資料が増えても独立配置の方が整理しやすい。

# ============================================================
# 4. applications 配下に置かない理由
# ============================================================

Portal Site を 07.applications 配下に置かない理由は次の通りとする。

- Portal Site は単独アプリではない。
- Portal Site は Civilization 全体の入口システムである。
- Portal Site は各OSおよび各アプリの上位にある導線システムである。
- applications 配下に置くと役割境界が曖昧になる。

# ============================================================
# 5. 独立トップ階層に置く理由
# ============================================================

Portal Site を独立トップ階層に置く理由は次の通りとする。

- Civilization 全体の公開入口として目立つ。
- 各OSと同列ではないが、各OSを束ねる上位入口として認識しやすい。
- docs や applications に埋もれない。
- 将来、Portal Site 自体の運用・設計・実装前仕様をまとめやすい。
- Civilization System 全体の構成上、公開入口の存在が明示される。

# ============================================================
# 6. 上位 index へ反映すべき要点
# ============================================================

Civilization System 全体の上位 index に反映すべき要点は次の通りとする。

- 08.civilization-portal-site は Civilization 全体の公開入口システムである。
- Portal Site は Webサイト / Webアプリとして設計される。
- 各OSへの唯一の公式Web導線は Portal Site が保持する。
- 新規登録と認証の正本は CivilizationOS が担う。
- 未ログイン時は CivilizationOS のWebログインへ誘導する。
- 認証後は原則として要求元の対象OS Web入口へ復帰する。
- OS間の直接リンクは禁止する。

# ============================================================
# 7. 上位 index に書くべき短縮説明
# ============================================================

上位 index に書く短縮説明は次でよい。

08.civilization-portal-site:
Civilization 全体の公開入口となる公式Webポータル。
各OSへの唯一の公式Web導線、
ログイン案内、
新規登録案内、
ログイン済み利用者向けWebランチャーを担う。

# ============================================================
# 8. 参照先
# ============================================================

Portal Site のルート正本は次の通りとする。

- ../000_CIVILIZATION_PORTAL_SITE_OVERVIEW.md
- ../000_CIVILIZATION_PORTAL_SITE_INDEX.md
- ../00_CIVILIZATION_PORTAL_SITE_INTEGRATED.md

Portal Site の詳細分割文書は各レイヤ配下を参照する。

- ../020.architecture
- ../030.model
- ../050.flow
- ../060.integration
- ../070.operations
- ../080.policy
- ../120.implementation-ready

# ============================================================
# 9. 現在状態
# ============================================================

本書は、
Civilization Portal Site を Civilization System 全体から
見つけやすくするための canonical-design-support 文書である。

本書は補助文書であり、
ルート正本や統合正本を置き換えるものではない。

実装、DDL、本番投入はまだ行わない。
