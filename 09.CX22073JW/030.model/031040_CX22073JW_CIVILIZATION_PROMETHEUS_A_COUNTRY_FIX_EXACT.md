# CX22073JW Civilization Prometheus A Country Fix Exact

generated_at: 2026-05-03 06:03:02 +0900
status: PASS

## Correction

Civilization / Prometheus timeline country label corrected:

- old: N国 / n_country
- new: A国 / a_country

## Affected Prometheus Events

- Year 343: A国中心の本格管理開始
- Year 344: 麻薬シンジゲート摘発と隔離施設事件
- Year 352: 反対派レジスタンス活動開始と鎮圧
- Year 379: A国ショッピングモール内Prometheus破壊事件
- Year 396: A国がPrometheus開発放棄および統治解除を宣言

## Final Gate

| Check | Result |
|---|---:|
| db_old_hit_count | 0 |
| db_new_hit_count | 11 |
| doc_old_hit_count | 0 |
| doc_new_hit_count | 0 |
| doc_missing_file_count | 1 |
| missing_history_detail_model_count | 0 |
| missing_history_exam_model_count | 0 |
| final_status | PASS |

## Evidence

- after: /data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/920.meta/civilization_prometheus_a_country_fix_20260503_060032/020_after_hits.tsv
- key rows: /data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/920.meta/civilization_prometheus_a_country_fix_20260503_060032/030_key_rows_after.tsv
- coverage: /data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/920.meta/civilization_prometheus_a_country_fix_20260503_060032/040_history_coverage_after.tsv
- docs: /data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/920.meta/civilization_prometheus_a_country_fix_20260503_060032/050_doc_hits_after.tsv
- final: /data/data/com.termux/files/home/01.civilization-system/09.CX22073JW/920.meta/civilization_prometheus_a_country_fix_20260503_060032/060_final_gate.tsv

## Note

Previous resume stopped because grep returns exit code 1 when there are zero matches under set -euo pipefail.
This resume uses awk counters so zero matches are treated as a valid PASS condition.
