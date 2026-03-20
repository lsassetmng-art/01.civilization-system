#!/data/data/com.termux/files/usr/bin/bash

ROOT=~/01.civilization-system
OUT=$ROOT/CIVILIZATION_SYSTEM_FULL_CANONICAL.md

echo "# ============================================================" > $OUT
echo "# CIVILIZATION SYSTEM FULL CANONICAL DESIGN" >> $OUT
echo "# ============================================================" >> $OUT
echo "" >> $OUT

date >> $OUT

echo "" >> $OUT
echo "# ============================================================" >> $OUT
echo "# DESIGN DOCUMENTS" >> $OUT
echo "# ============================================================" >> $OUT

find $ROOT -type f -name "*.md" \
| grep -v INDEX \
| grep -v MASTER \
| grep -v FULL \
| sort \
| while read file
do

echo "" >> $OUT
echo "# ============================================================" >> $OUT
echo "# SOURCE: $file" >> $OUT
echo "# ============================================================" >> $OUT
echo "" >> $OUT

cat "$file" >> $OUT

echo "" >> $OUT

done

echo "" >> $OUT
echo "# ============================================================" >> $OUT
echo "# END OF CANONICAL DESIGN" >> $OUT
echo "# ============================================================" >> $OUT

echo ""
echo "FULL CANONICAL CREATED:"
echo "$OUT"

