# TALENT GROWTH DESIGN DECISION NOTE
# SCREEN API DB PACKAGE FIXED

status: draft-decision-note
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. decision
TalentGrowth では、
endpoint inventory 固定の次に、
screen-by-screen API mapping,
DB table to endpoint mapping,
implementation phase package split を固定した。

# 1. meaning
- 各画面がどのAPIを叩くか固定した
- 各テーブルがどのendpoint群に責務を持つか固定した
- phase単位の実装束を固定した
- 高機微アクセスの break-glass 統制も別紙で固定した

# 2. fixed focus
- screen -> API
- API -> table
- phase -> package
- sensitive access control

# 3. next candidate
次の深掘り候補は以下である。
- business event / outbox / notification design fixed
- batch / cron / snapshot job design fixed
- frontend state / cache / offline policy fixed
