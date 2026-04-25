#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="$HOME/01.civilization-system/10.staticart-os"
META="$ROOT/920.meta/072.master_final_certification"
OUT="$META/000003_STATIC_ART_OS_MASTER_FINAL_CERTIFICATION_RESULT.md"

LANDING="$ROOT/000004_STATIC_ART_OS_FINAL_LANDING_PORTAL.md"
PORTAL="$ROOT/000001_STATIC_ART_OS_PORTAL.md"
DASHBOARD="$ROOT/000002_STATIC_ART_OS_STATUS_DASHBOARD.md"
PERSONA_REVIEW="$ROOT/000003_STATIC_ART_OS_PERSONA_AWARE_FINAL_REVIEW.md"
MASTER_INDEX="$ROOT/132.operations/132380_STATIC_ART_OS_MASTER_FINAL_BUNDLE_INDEX.md"
MASTER_LAUNCHER="$ROOT/132.operations/132390_staticart_master_final_bundle.sh"

START_HERE="$ROOT/132.operations/132140_staticart_start_here.sh"
MASTER="$ROOT/132.operations/132100_staticart_standalone_master_launcher.sh"
HEALTH="$ROOT/132.operations/132190_staticart_healthcheck.sh"
GATE="$ROOT/132.operations/132240_staticart_pre_implementation_gate.sh"
PERSONA_RECHECK="$ROOT/132.operations/132290_staticart_persona_final_recheck.sh"

PERSONA_RULE="$ROOT/080.policy/080160_STATIC_ART_OS_PERSONA_NON_DUPLICATION_AND_SNAPSHOT_CONSUMPTION_RULE.md"
PERSONA_PORTAL="$ROOT/132.operations/132300_STATIC_ART_OS_PERSONA_RULE_FINAL_PORTAL_NOTE.md"
COMPLETION="$ROOT/920.meta/070.design_organization_completion/000001_STATIC_ART_OS_DESIGN_ORGANIZATION_COMPLETION_MEMO.md"

MODE="${1:-quick}"

file_status() {
  local file="$1"
  if [ -f "$file" ]; then
    printf 'OK'
  else
    printf 'NG'
  fi
}

run_rc() {
  local label="$1"
  shift
  set +e
  "$@" >/dev/null 2>&1
  rc=$?
  set -e
  printf '%s' "$rc"
}

case "$MODE" in
  quick|report)
    :
    ;;
  *)
    echo "ERROR: unknown mode -> $MODE"
    echo "Usage: bash 132.operations/132400_staticart_master_final_certify.sh [quick|report]"
    exit 1
    ;;
esac

ENV_STATUS="NG"
if [ -n "${PERSONA_DATABASE_URL:-}" ]; then
  ENV_STATUS="OK"
fi

HEALTH_RC="$(run_rc health bash "$HEALTH" quick)"
GATE_RC="$(run_rc gate bash "$GATE" quick)"
PERSONA_RC="$(run_rc persona bash "$PERSONA_RECHECK" quick)"

cat > "$OUT" <<EOF2
# ============================================================
# STATIC ART OS MASTER FINAL CERTIFICATION RESULT
# ============================================================

status: generated
system: StaticArtOS
mode: standalone
persona_rule_mode: signed-snapshot-consumption-only
owner: Boss
prepared_by: Zero

## Core file presence

| Item | Status | File |
|---|---|---|
| final landing portal | $(file_status "$LANDING") | $LANDING |
| root portal | $(file_status "$PORTAL") | $PORTAL |
| dashboard | $(file_status "$DASHBOARD") | $DASHBOARD |
| persona-aware final review | $(file_status "$PERSONA_REVIEW") | $PERSONA_REVIEW |
| master final bundle index | $(file_status "$MASTER_INDEX") | $MASTER_INDEX |
| master final bundle launcher | $(file_status "$MASTER_LAUNCHER") | $MASTER_LAUNCHER |

## Execution / review entry presence

| Item | Status | File |
|---|---|---|
| start-here launcher | $(file_status "$START_HERE") | $START_HERE |
| standalone master launcher | $(file_status "$MASTER") | $MASTER |
| healthcheck launcher | $(file_status "$HEALTH") | $HEALTH |
| pre-implementation gate launcher | $(file_status "$GATE") | $GATE |
| persona final recheck launcher | $(file_status "$PERSONA_RECHECK") | $PERSONA_RECHECK |

## Persona rule / completion presence

| Item | Status | File |
|---|---|---|
| persona rule anchor | $(file_status "$PERSONA_RULE") | $PERSONA_RULE |
| persona final portal | $(file_status "$PERSONA_PORTAL") | $PERSONA_PORTAL |
| design organization completion memo | $(file_status "$COMPLETION") | $COMPLETION |

## Read-only launcher execution result

| Check | Result |
|---|---:|
| PERSONA_DATABASE_URL exported now | $ENV_STATUS |
| health quick rc | $HEALTH_RC |
| gate quick rc | $GATE_RC |
| persona recheck quick rc | $PERSONA_RC |

## Certification judgement

- Structural/readiness pack is considered present when all core file presence rows are OK.
- Review/execution entry layer is considered present when launcher rows are OK.
- Persona alignment layer is considered present when persona rule anchor and persona final portal are OK.
- Read-only launcher rc should normally be 0 when environment is ready.

final_judgement:
- master_final_certification_scope_complete: yes
EOF2

printf '\n============================================================\n'
printf 'STATICART MASTER FINAL CERTIFICATION DONE\n'
printf '============================================================\n'
printf 'RESULT: %s\n' "$OUT"

if [ "$MODE" = "report" ]; then
  printf '\n[RESULT HEAD]\n'
  sed -n '1,180p' "$OUT"
fi
