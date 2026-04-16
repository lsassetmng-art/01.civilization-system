# TALENT GROWTH DESIGN DECISION NOTE
# FRONTEND STATE SYNC FIXED

status: draft-decision-note
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. decision
TalentGrowth では、
event / outbox / batch 設計の次に、
frontend state,
cache,
offline,
screen refresh,
sync conflict recovery
を固定した。

# 1. meaning
- frontend state layer を分割した
- cache TTL と stale policy を固定した
- offline allowed / not allowed を画面責務に沿って固定した
- sync / conflict / retry / recovery の境界を固定した

# 2. fixed focus
- server truth first
- selective offline
- no offline finalization
- visible sync status
- explicit conflict handling

# 3. next candidate
次の深掘り候補は以下である。
- screen-by-screen field definition fixed
- exact validation matrix per endpoint fixed
- KPI / analytics formula fixed
