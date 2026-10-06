# AIWorkerOS Web Public Infrastructure Exact Design

DOCUMENT_STATUS=CANONICAL_DESIGN
TARGET_OS=11.aiworker-os
LAYER=110.infrastructure
TARGET_SURFACE=aiworker-os-web
IMPLEMENTATION_STATUS=NOT_IMPLEMENTED
DEPLOYMENT_STATUS=NOT_DEPLOYED
PROVIDER_SELECTION=UNDECIDED
PUBLIC_ORIGIN=NOT_ASSIGNED

## 1. Purpose

This document defines the public infrastructure contract for:

`03.civilization-development/11.aiworker-os/aiworker-os-web`

Canonical AIWorkerOS Web entry:

`/aiworker-menu`

Portal remains the user-facing entry/router.
AIWorkerOS owns the AIWorkerOS Web surface and its routes.

## 2. Current state

Confirmed implementation state:

- AIWorkerOS owns `/aiworker-menu`.
- Portal no longer owns `/aiworker-menu`.
- Portal uses `NEXT_PUBLIC_AIWORKEROS_URL` to construct the AIWorkerOS destination.
- no production value for `NEXT_PUBLIC_AIWORKEROS_URL` is currently canonical;
- no AIWorkerOS Web public origin is currently canonical;
- no repository-defined AIWorkerOS Web deployment mechanism is currently canonical.

Therefore code ownership migration is complete but public reachability is not.

## 3. Public origin contract

`NEXT_PUBLIC_AIWORKEROS_URL` means the public origin of AIWorkerOS Web.

Portal destination contract:

`<NEXT_PUBLIC_AIWORKEROS_URL>/aiworker-menu`

Production requirements:

- value must be non-empty;
- value must identify AIWorkerOS Web;
- value must use the production public origin;
- value must not identify Portal;
- value must not identify the Runtime Execution HTTP API.

No production domain is assigned by this document.

## 4. Authentication handoff

Authentication remains owned by CivilizationOS.

Required responsibility flow:

1. user selects AI Worker from Civilization Portal;
2. Portal invokes its existing authentication gate;
3. the post-login destination points to the AIWorkerOS public origin plus `/aiworker-menu`;
4. CivilizationOS completes authentication according to its existing contract;
5. control returns to the requested AIWorkerOS destination;
6. subsequent AIWorkerOS navigation is owned by AIWorkerOS.

Portal must not regain ownership of the AIWorkerOS menu.

## 5. Runtime API separation

AIWorkerOS Web and the Runtime Execution HTTP API are separate surfaces.

The runtime API currently associated with:

`http://127.0.0.1:8787`

is not the AIWorkerOS Web public origin.

Rules:

- `NEXT_PUBLIC_AIWORKEROS_URL` must not point to port 8787;
- port 8787 must not be publicly exposed merely for Portal navigation;
- Web deployment must not silently change Runtime API ownership;
- Runtime API restart/deployment is outside this Web infrastructure scope.

## 6. Web runtime contract

AIWorkerOS Web is a Next.js application.

Current application lifecycle:

- build: `next build`
- start: `next start`

The selected hosting implementation must provide:

- Node.js-compatible Next.js runtime;
- production build;
- persistent service/process execution;
- public HTTPS origin;
- environment-variable management;
- restart procedure;
- rollback procedure.

## 7. Hosting provider gate

No current AIWorkerOS canon proves that AWS Amplify, EC2, ECS,
CloudFront, Vercel, or another provider is the required Web host.

Therefore:

`PROVIDER_SELECTION=UNDECIDED`

Provider selection must be evidence-based and must not be inferred only
because other Civilization infrastructure may use AWS.

## 8. Required production decisions

Before production deployment, resolve:

1. hosting provider;
2. public origin/domain;
3. deployment procedure;
4. process ownership;
5. HTTPS configuration;
6. Portal `NEXT_PUBLIC_AIWORKEROS_URL`;
7. restart procedure;
8. rollback procedure.

Secrets must not be stored in this design document.

## 9. Release acceptance

Production acceptance requires:

- AIWorkerOS Web build PASS;
- `/aiworker-menu` reachable from public origin;
- Portal destination resolves to AIWorkerOS public origin;
- authentication handoff reaches `/aiworker-menu`;
- Robot Rental Store route works from AIWorkerOS ownership;
- AIWorker Contracts route works from AIWorkerOS ownership;
- Application Contracts route works from AIWorkerOS ownership;
- Civilization Context Bridge route works from AIWorkerOS ownership;
- Runtime API port 8787 remains a separate surface;
- UI-centered verification PASS;
- rollback procedure available.

HTTP 200 alone is not sufficient for UI acceptance.

## 10. Implementation order

1. identify existing deploy/cloud assets read-only;
2. select hosting provider;
3. assign public origin;
4. implement AIWorkerOS Web deployment/runtime configuration;
5. deploy AIWorkerOS Web;
6. verify direct `/aiworker-menu`;
7. configure Portal `NEXT_PUBLIC_AIWORKEROS_URL`;
8. rebuild/redeploy Portal if required by its environment model;
9. verify Portal -> CivilizationOS -> AIWorkerOS handoff;
10. perform UI-centered Robot Rental Store verification;
11. preserve deployment and rollback evidence.

## 11. Current execution gates

CODE_PATCH=NO
ENV_WRITE=NO
AWS_WRITE=NO
DNS_WRITE=NO
DEPLOY=NO
SERVICE_RESTART=NO
GIT_ADD=NO
GIT_COMMIT=NO
GIT_PUSH=NO

A separate explicit GO is required before implementation,
external infrastructure modification, commit, or push.
