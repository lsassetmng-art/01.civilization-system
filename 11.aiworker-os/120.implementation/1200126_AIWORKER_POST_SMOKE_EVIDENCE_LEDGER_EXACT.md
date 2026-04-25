# ============================================================
# AIWORKER POST SMOKE EVIDENCE LEDGER EXACT
# ============================================================

status: evidence-ledger
system: AiworkerOS
layer: 120.implementation
owner: Boss
prepared_by: Zero

purpose:
Freeze the evidence ledger for the completed AiworkerOS smoke run.

evidence_root:
- /data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/920.meta/940.aiworker_os_pkg_aiw_008_apply_and_smoke_20260421_154628

evidence_files:
- main_log:
  - /data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/920.meta/940.aiworker_os_pkg_aiw_008_apply_and_smoke_20260421_154628/logs/000_main.log
- apply_log:
  - /data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/920.meta/940.aiworker_os_pkg_aiw_008_apply_and_smoke_20260421_154628/logs/010_apply_pkg_aiw_008.log
- smoke_seed_verify_log:
  - /data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/920.meta/940.aiworker_os_pkg_aiw_008_apply_and_smoke_20260421_154628/logs/020_verify_smoke_seed_state.log
- smoke_assignment_apply_log:
  - /data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/920.meta/940.aiworker_os_pkg_aiw_008_apply_and_smoke_20260421_154628/logs/030_smoke_assignment_apply.log
- smoke_replay_redelivery_log:
  - /data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/920.meta/940.aiworker_os_pkg_aiw_008_apply_and_smoke_20260421_154628/logs/040_smoke_replay_redelivery.log
- quick_smoke_db_spotcheck_log:
  - /data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/920.meta/940.aiworker_os_pkg_aiw_008_apply_and_smoke_20260421_154628/logs/050_quick_smoke_db_checks.log
- summary_file:
  - /data/data/com.termux/files/home/01.civilization-system/11.aiworker-os/920.meta/940.aiworker_os_pkg_aiw_008_apply_and_smoke_20260421_154628/000_RESULT_SUMMARY.txt

evidence_interpretation:
- PKG-AIW-008 apply completed
- smoke seed verify completed
- assignment apply smoke flow completed
- replay/redelivery smoke flow completed
- quick smoke DB checks completed
- final run summary status recorded as:
  - SUCCESS

ledger_rule:
- post-smoke claims must point to concrete evidence files
- runtime-trial success claims without log references are not treated as canonical evidence
- later smoke retries must update this ledger or an explicit successor ledger
