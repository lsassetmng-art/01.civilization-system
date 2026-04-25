# ============================================================
# STATIC ART OS PERSONA REFERENCE REGISTRY QUEUE RUNNER POLICY
# ============================================================

status: active-exact-design
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

purpose:
Define the policy for runners that initialize, refresh, and audit the
Persona reference actual block storage / registry / queue layer.

core_rule:
- runner design is filesystem/control-plane only
- runner must not blur authored block source, queue views, and execution evidence
- runner must be safe to inspect before use
- runner must prefer reproducibility over manual hidden state
- runner must not imply Persona truth ownership or DB mutation

runner_types:
- initialization runner
- refresh runner
- consistency audit runner
- optional helper launcher

runner_principles:
- deterministic outputs from deterministic inputs
- dry-run first where meaningful
- anomaly surfacing over silent normalization
- ledger first, queue second, index third
- storage topology is canonical for stage location
- ledger is canonical for operational status
- queue files are derived views

forbidden_runner_behavior:
- writing into execution evidence root as authored block source-of-truth
- mutating block meaning silently
- silently repairing lineage without report
- marking executed without evidence linkage
- promoting review_ready to approved without explicit reviewed state
- treating queue files as more authoritative than ledger

policy_judgement:
- runner policy exists to make operational control artifacts safe, reproducible, and auditable
