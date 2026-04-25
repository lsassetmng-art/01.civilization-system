#!/data/data/com.termux/files/usr/bin/bash
set -eu

printf '\n============================================================\n'
printf 'STATICART PHASE4_5 ENV CHECK\n'
printf '============================================================\n'

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not set"
  exit 1
fi

echo "OK: PERSONA_DATABASE_URL is set"

if [ -n "${DATABASE_URL:-}" ]; then
  echo "INFO: DATABASE_URL is also set"
  echo "INFO: StaticArtOS Phase4_5 Persona-side repository work still assumes PERSONA_DATABASE_URL only"
else
  echo "INFO: DATABASE_URL is not set"
fi
