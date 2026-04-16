#!/data/data/com.termux/files/usr/bin/bash
set -eu

BASE="/data/data/com.termux/files/home/01.civilization-system/07.applications/04.life-app/MealPlanner"
OUT_DIR="$HOME/.tmp/mealplanner-design-audit"
mkdir -p "$OUT_DIR"

OLD_WORDING_OUT="$OUT_DIR/010_old_wording_hits.txt"
IMPLEMENTATION_LEAK_OUT="$OUT_DIR/020_implementation_leak_hits.txt"
KEY_RULE_OUT="$OUT_DIR/030_key_rule_presence.txt"
SUMMARY_OUT="$OUT_DIR/040_summary.txt"

# ------------------------------------------------------------
# A. old wording / legacy wording
# ------------------------------------------------------------
{
  echo "============================================================"
  echo "A. old wording hits"
  echo "============================================================"
  grep -RInE 'plus|family|300円|700円|app_meal_planner|電話サポート|有人サポート|メールサポート' "$BASE" || true
} > "$OLD_WORDING_OUT"

# ------------------------------------------------------------
# B. implementation leak
# ------------------------------------------------------------
{
  echo "============================================================"
  echo "B. implementation leak hits"
  echo "============================================================"
  grep -RInE 'CREATE TABLE|ALTER TABLE|INSERT INTO|UPDATE life\.|psql|migration' "$BASE" || true
} > "$IMPLEMENTATION_LEAK_OUT"

# ------------------------------------------------------------
# C. key rule presence
# ------------------------------------------------------------
{
  echo "============================================================"
  echo "C. key rule presence"
  echo "============================================================"

  echo "[schema life]"
  grep -RInE 'schema は life|schema_name: life|- life$' "$BASE" || true
  echo

  echo "[pricing free paid 500]"
  grep -RInE '無料 / 有料500円|有料500円|500円 / 月|500円です' "$BASE" || true
  echo

  echo "[ai chat only]"
  grep -RInE 'AIチャットのみ|ai_chat_only' "$BASE" || true
  echo

  echo "[daily weekly monthly]"
  grep -RInE 'daily / weekly / monthly|日 / 週 / 月' "$BASE" || true
  echo

  echo "[cx22073jw boundary]"
  grep -RIn 'CX22073JW' "$BASE" || true
  echo

  echo "[snapshot-first]"
  grep -RInE 'snapshot-first|snapshot を' "$BASE" || true
} > "$KEY_RULE_OUT"

# ------------------------------------------------------------
# D. summary
# ------------------------------------------------------------
{
  echo "============================================================"
  echo "MealPlanner Design Audit Summary"
  echo "============================================================"
  echo "[old wording file] $OLD_WORDING_OUT"
  echo "[implementation leak file] $IMPLEMENTATION_LEAK_OUT"
  echo "[key rule file] $KEY_RULE_OUT"
  echo
  echo "Manual review points:"
  echo "- old wording hit が空か"
  echo "- implementation leak hit が空か"
  echo "- key rules が十分に拾えているか"
} > "$SUMMARY_OUT"
