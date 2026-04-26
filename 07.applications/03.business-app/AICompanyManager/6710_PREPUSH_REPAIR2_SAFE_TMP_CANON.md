# AICompanyManager Pre-Push Repair2 Safe Tmp Canon

phase: Phase DI-DL repair2
status: prepush-repair2-safe-tmp-canon

## 1. 修正内容

自己grepによる誤検出を廃止する。

## 2. 一時ファイル方針

一時ログは HOME/.tmp 配下に限定する。

## 3. 検証方針

previous test を再帰実行せず、final bundle の受入条件を直接検証する。

## 4. Safety

This repair does not execute:
- DB WRITE
- RLS APPLY
- psql
- REAL API CONNECT
- LIVE AIWORKEROS CALL
- GIT PUSH
