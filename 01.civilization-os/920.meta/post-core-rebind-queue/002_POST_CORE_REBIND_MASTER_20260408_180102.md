# ============================================================
# POST CORE REBIND MASTER
# ============================================================

status: canonical
prepared_by: Zero
owner: Boss
generated_at: 2026-04-08 18:01:02

input_state:
- core semantic finalized
- rebind target domains: 0

artifacts:
- queue_tsv: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/920.meta/post-core-rebind-queue/000_POST_CORE_REBIND_QUEUE_20260408_180102.tsv
- queue_md: /data/data/com.termux/files/home/01.civilization-system/01.civilization-os/920.meta/post-core-rebind-queue/001_POST_CORE_REBIND_QUEUE_20260408_180102.md

meaning:
This master defines the domain-level rebind queue to be rebuilt
after core semantic completion.

next_action:
Use this queue as the source for batch bible / rebind regeneration.
