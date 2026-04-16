# ============================================================
# TEST PROGRESS RUNTIME
# ============================================================

status: canonical-draft
layer: runtime
application: App Development Studio

purpose:
Defines runtime handling of test progress.

runtime_steps:
1. initialize progress records from test items
2. update status/result during execution
3. link failed items to bugs
4. compute retest queue
5. publish progress summaries
