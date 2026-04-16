# ============================================================
# API BOUNDARY AND ENDPOINT CANONICAL
# ============================================================

status: fixed

api_boundary_principles:
  - API は診断結果を返さない
  - API は治療方針を返さない
  - API は reference を reference として返す
  - API は Family Care の scope を必ず適用した結果だけを返す
  - API は UI 表示責務に寄せて payload を固定する
  - API は runtime data と fixed knowledge を混在返却しても、知識正本は返さない

endpoint_groups:
  - record_write
  - trend_read
  - score_read
  - review_read
  - goal_write
  - provider_link
  - family_care
  - export

canonical_endpoints:
  - POST /life/bodymetrics/records/metric
  - POST /life/bodymetrics/records/blood-pressure
  - POST /life/bodymetrics/records/sleep
  - POST /life/bodymetrics/records/activity
  - GET  /life/bodymetrics/dashboard
  - GET  /life/bodymetrics/trends/{metric_type}
  - GET  /life/bodymetrics/health-score
  - GET  /life/bodymetrics/reviews/weekly
  - POST /life/bodymetrics/goals
  - POST /life/bodymetrics/providers/connect
  - GET  /life/bodymetrics/family-care/share-settings
  - POST /life/bodymetrics/family-care/share-settings
  - POST /life/bodymetrics/exports

response_shape_policy:
  - write API は saved / accepted と resource id を返す
  - graph API は points / overlays / reference_band を返す
  - score API は total + components + explanation を返す
  - dashboard API は card 単位の集約結果を返す
  - weekly review API は summary 主体で返す
  - Family Care API は effective scope を中心に返す

error_policy:
  - validation error
  - permission denied
  - scope denied
  - provider link failed
  - export rejected
  - unsupported metric
