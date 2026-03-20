#!/data/data/com.termux/files/usr/bin/bash

ROOT=~/01.civilization-system
OUT=$ROOT/DESIGN_MASTER_INDEX.md

echo "# ============================================================" > $OUT
echo "# CIVILIZATION SYSTEM DESIGN MASTER INDEX" >> $OUT
echo "# ============================================================" >> $OUT
echo "" >> $OUT

echo "Generated:" >> $OUT
date >> $OUT
echo "" >> $OUT

echo "Root:" >> $OUT
echo "$ROOT" >> $OUT
echo "" >> $OUT

echo "# ============================================================" >> $OUT
echo "# DESIGN FILE LIST" >> $OUT
echo "# ============================================================" >> $OUT
echo "" >> $OUT

find $ROOT -type f -name "*.md" \
| sort \
>> $OUT

echo "" >> $OUT
echo "# ============================================================" >> $OUT
echo "# END" >> $OUT
echo "# ============================================================" >> $OUT

echo "MASTER INDEX GENERATED:"
echo "$OUT"

