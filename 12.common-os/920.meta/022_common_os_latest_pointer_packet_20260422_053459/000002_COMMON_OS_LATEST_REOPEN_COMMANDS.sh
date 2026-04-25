#!/data/data/com.termux/files/usr/bin/bash
set -eu

ROOT="/data/data/com.termux/files/home/01.civilization-system/12.common-os"
META_ROOT="/data/data/com.termux/files/home/01.civilization-system/12.common-os/920.meta"

echo "============================================================"
echo "COMMON OS REOPEN COMMANDS"
echo "ROOT=$ROOT"
echo "META_ROOT=$META_ROOT"
echo "============================================================"

echo "[ROOT KEY FILES]"
printf '%s\n'   "$ROOT/00_COMMON_OS_FULL_INTEGRATED.md"   "$ROOT/020.architecture/00_COMMON_OS_ARCHITECTURE_INTEGRATED.md"   "$ROOT/030.model/00_COMMON_OS_MODEL_INTEGRATED.md"   "$ROOT/080.policy/00_COMMON_OS_POLICY_INTEGRATED.md"   "$ROOT/100.security/00_COMMON_OS_SECURITY_INTEGRATED.md"   "$ROOT/120.implementation/00_COMMON_OS_IMPLEMENTATION_INTEGRATED.md"   "$ROOT/130.development/00_COMMON_OS_DEVELOPMENT_INTEGRATED.md"

echo "============================================================"
echo "[ROOT TREE MAXDEPTH2]"
find "$ROOT" -maxdepth 2 -type f | sort

echo "============================================================"
echo "[MODEL FILES]"
find "$ROOT/030.model" -maxdepth 1 -type f | sort

echo "============================================================"
echo "[DEVELOPMENT FILES]"
find "$ROOT/130.development" -maxdepth 1 -type f | sort

echo "============================================================"
echo "[LATEST META DIRS]"
find "$META_ROOT" -maxdepth 1 -type d | sort | tail -n 20

echo "============================================================"
