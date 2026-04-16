# ============================================================
# CIVILIZATION PORTAL SITE DIRECTORY AND FILE STRUCTURE IMPLEMENTATION DESIGN
# ============================================================

status: canonical-design
layer: development
system: civilization-portal-site
owner: Boss
prepared_by: Zero

# ============================================================
# 1. 文書目的
# ============================================================

本書は、
Portal Site 実装のディレクトリ構成と
ファイル責務境界を定義する。

# ============================================================
# 2. 基本原則
# ============================================================

- app は URL入口に責務を限定する
- features は画面 / 機能責務を保持する
- components は再利用UIを保持する
- services は外部参照 / 呼出を保持する
- types は型正本とする
- mocks は実装初期の仮データ正本とする

# ============================================================
# 3. 想定ディレクトリ
# ============================================================

- app
- components/common
- components/layout
- components/navigation
- components/feedback
- features/public-home
- features/os-catalog
- features/auth-entry
- features/launcher
- services/civilization-auth
- services/os-launch
- services/return-context
- lib/routing
- types/os
- types/auth
- types/decision
- mocks/os
- mocks/notices
- mocks/launcher
- config
- styles
- public

# ============================================================
# 4. URL入口
# ============================================================

最低限の対象URLは次とする。

- /
- /civilization
- /os
- /os/{os_code}
- /guide
- /login
- /signup
- /auth/return
- /access-denied
- /maintenance
- /error
- /me/launcher
- /admin

# ============================================================
# 5. 完了条件
# ============================================================

- P0〜P4 を迷わず積める構成である
- route / feature / service / type の責務が混ざらない
- app が過剰に肥大化しない
