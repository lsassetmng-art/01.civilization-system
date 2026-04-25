# ============================================================
# LIFE APP PRICING CANONICAL FREEZE
# ============================================================

status: canonical-freeze
owner: Boss
prepared_by: Zero
generated_at: 2026-04-21
scope: 07.applications/04.life-app

canonical_pricing:
  LifePlanner:
    - Free 0円
    - Family 500円
  LegalSupport:
    - Free 0円
    - PlusFamily 500円
  CareerLaunch:
    - Free 0円
    - Pro 500円

freeze_rules:
  - この文書を価格正本の優先参照とする
  - stale pricing は以後 canonical として扱わない
  - 実装・台帳・統合版・課金表記は本 freeze に合わせる
