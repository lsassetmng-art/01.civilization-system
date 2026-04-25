# ============================================================
# STREAMING SCHEDULER QUEUE RETRY EXACT MAPPING OVERVIEW
# ============================================================

status: canonical-draft
system: streaming-os
domain: scheduler-queue-retry-exact-mapping
owner: Boss
prepared_by: Zero

purpose:
Defines exact scheduler,
queue,
priority,
and retry mapping
for major StreamingOS runtime job groups.

summary:
This domain fixes how runtime jobs
are grouped into queues,
how they are scheduled,
how retry behaves,
and how priority differs by job family,
without collapsing semantic runtime ownership.

