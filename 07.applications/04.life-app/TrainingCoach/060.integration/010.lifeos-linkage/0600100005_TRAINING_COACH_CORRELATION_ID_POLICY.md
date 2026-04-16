# ============================================================
# TRAINING COACH CORRELATION ID POLICY
# ============================================================

status: canonical-draft
phase: implementation-readiness
system: TrainingCoach
layer: 060.integration
owner: Boss
prepared_by: Zero

purpose:
  - request / integration / audit を横断追跡するための correlation id ルールを固定する
  - デバッグと監査をしやすくする
  - user-facing identifier と内部追跡子を分離する

policy:
  - 全 request / response / integration event に correlation_id を付与する
  - 画面操作起点と system / integration 起点を識別できるようにする
  - correlation_id は表示用 ID としてユーザーに常時見せない

fields:
  correlation_id:
    type: string
    required: true
    format: tcorr_<uuid_or_equivalent>
  causation_id:
    type: string
    required: false
    description: 直前イベントの correlation id
  request_source:
    type: enum
    required: true
    allowed:
      - mobile_app
      - tablet_app
      - pc_app
      - integration_bodymetrics
      - integration_mealplanner
      - integration_lifeplanner
      - system_job

usage_rules:
  screen_request:
    - client generates correlation_id
    - response echoes same correlation_id
  internal_async_event:
    - system generates new correlation_id
    - sets causation_id from parent request
  integration_outbound:
    - outbound event gets new correlation_id
    - causation_id links to source business action
  audit_event:
    - stores correlation_id and causation_id if present

logging_policy:
  - error log に correlation_id を必須付与する
  - audit event に correlation_id を保存する
  - personal raw health content を correlation metadata に含めない
