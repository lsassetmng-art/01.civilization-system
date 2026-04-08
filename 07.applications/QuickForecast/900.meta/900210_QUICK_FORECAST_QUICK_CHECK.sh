#!/data/data/com.termux/files/usr/bin/bash
set -e

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/QuickForecast"

echo "=== ROOT FILES ==="
find "$BASE" -maxdepth 1 -type f | sort
echo

echo "=== LAYER FILE COUNTS ==="
for d in \
  010.constitution \
  020.architecture \
  030.model \
  040.runtime \
  050.flow \
  060.integration \
  070.operations \
  080.policy \
  090.interface \
  100.security \
  110.infrastructure \
  120.implementation \
  130.development \
  900.meta
do
  printf "%-22s : " "$d"
  find "$BASE/$d" -maxdepth 1 -type f | wc -l
done
echo

echo "=== OVERVIEW FILES ==="
find \
  "$BASE/010.constitution" \
  "$BASE/020.architecture" \
  "$BASE/030.model" \
  "$BASE/040.runtime" \
  "$BASE/050.flow" \
  "$BASE/060.integration" \
  "$BASE/070.operations" \
  "$BASE/080.policy" \
  "$BASE/090.interface" \
  "$BASE/100.security" \
  "$BASE/110.infrastructure" \
  "$BASE/120.implementation" \
  "$BASE/130.development" \
  "$BASE/900.meta" \
  -maxdepth 1 -type f -name '*OVERVIEW.md' | sort
echo

echo "=== INDEX FILES ==="
find \
  "$BASE/010.constitution" \
  "$BASE/020.architecture" \
  "$BASE/030.model" \
  "$BASE/040.runtime" \
  "$BASE/050.flow" \
  "$BASE/060.integration" \
  "$BASE/070.operations" \
  "$BASE/080.policy" \
  "$BASE/090.interface" \
  "$BASE/100.security" \
  "$BASE/110.infrastructure" \
  "$BASE/120.implementation" \
  "$BASE/130.development" \
  "$BASE/900.meta" \
  -maxdepth 1 -type f -name '*INDEX.md' | sort
echo

echo "=== BOOK FILES ==="
ls -lh \
  "$BASE/00_QUICK_FORECAST_INTEGRATED.md" \
  "$BASE/00_QUICK_FORECAST_INTEGRATED_REBUILT.md"
