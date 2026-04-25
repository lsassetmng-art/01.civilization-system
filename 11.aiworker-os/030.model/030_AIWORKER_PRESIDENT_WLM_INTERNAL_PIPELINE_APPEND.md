# AIWorkerOS Model Append: President / Manager / Leader / Worker Internal Pipeline

## Status

accepted-internal-only

## Canonical hierarchy

- HD-R5P / President / プレジデント
- HD-R5 / Manager / マネージャー
- HD-R4 / Leader / リーダー
- HD-R3 / Worker / ワーカー

## President

President is the top executive authority of an AI company.

President can operate in:

- FULL_AUTO
- HUMAN_POLICY
- HYBRID

Current accepted runtime state:

- President model_no: HD-R5P
- President authority: ACTIVE
- President runtime: READY
- internal Manager distribution: enabled

## Manager

Manager receives President internal distribution and converts it into:

- manager instruction acceptance
- manager plan
- Worker task
- Leader review task
- Manager final gate

## Leader

Leader reviews and integrates Worker output.

## Worker

Worker produces draft/internal output only.

## Safety model

The accepted pipeline is internal only.

The following remain disabled:

- external execution
- PG apply
- destructive action
