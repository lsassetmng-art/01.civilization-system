# ============================================================
# BATTLE RESOLUTION RUNTIME
# ============================================================

runtime_sequence:
1. resolve party snapshot
2. resolve enemy formation
3. create battle session
4. execute turn order
5. record action log
6. compute result
7. grant rewards if valid
8. update quest/dungeon progression
9. write audit trail

failure_rules:
- invalid formation -> reject before start
- duplicate reward attempt -> reject
- inconsistent seed/version -> invalidate result
