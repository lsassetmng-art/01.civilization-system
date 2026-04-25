#!/data/data/com.termux/files/usr/bin/bash
set -eu

if [ -z "${PERSONA_DATABASE_URL:-}" ]; then
  echo "ERROR: PERSONA_DATABASE_URL is not set"
  exit 1
fi

echo "OK: PERSONA_DATABASE_URL is set"

if [ -z "${STATICART_API_BASE_URL:-}" ]; then
  echo "INFO: STATICART_API_BASE_URL is not set"
  echo "INFO: default test runtime should use http://localhost:3000/api/v1/staticart"
else
  echo "OK: STATICART_API_BASE_URL=$STATICART_API_BASE_URL"
fi

if [ -z "${STATICART_TEST_ACTOR_MODE:-}" ]; then
  echo "INFO: STATICART_TEST_ACTOR_MODE is not set"
  echo "INFO: default actor mode should be local_stub"
else
  echo "OK: STATICART_TEST_ACTOR_MODE=$STATICART_TEST_ACTOR_MODE"
fi
