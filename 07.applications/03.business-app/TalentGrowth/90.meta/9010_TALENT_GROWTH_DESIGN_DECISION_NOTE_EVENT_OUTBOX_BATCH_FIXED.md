# TALENT GROWTH DESIGN DECISION NOTE
# EVENT OUTBOX BATCH FIXED

status: draft-decision-note
system: TalentGrowth
formal_name_ja: 人材成長支援・人材評価システム
owner: Boss
prepared_by: Zero

# 0. decision
TalentGrowth では、
screen/API/DB mapping 固定の次に、
business event,
outbox,
notification,
batch / cron / snapshot,
delivery retry policy
を固定した。

# 1. meaning
- state change と通知を分離した
- outbox append-first を固定した
- batch / cron / snapshot の job registry を固定した
- retry / dead letter / escalation の考え方を固定した

# 2. fixed focus
- tg_outbox_event
- tg_notification
- tg_notification_delivery
- expiry detection jobs
- snapshot refresh jobs
- recommendation refresh jobs
- export async jobs

# 3. next candidate
次の深掘り候補は以下である。
- frontend state / cache / offline policy fixed
- screen-by-screen field definition fixed
- exact validation matrix per endpoint fixed
