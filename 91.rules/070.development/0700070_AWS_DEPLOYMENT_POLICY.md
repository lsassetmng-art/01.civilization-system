# ============================================================
# AWS DEPLOYMENT POLICY
# Civilization System Canonical Development Rule
# ============================================================

status: canonical
scope: development
component: aws-deployment-policy

owner: Boss
prepared_by: Zero


# ============================================================
# PURPOSE
# ============================================================

Define the canonical deployment boundary
between GitHub development state
and AWS runtime state
for the Civilization System.

This policy applies to all OS,
portal, application, and shared runtime surfaces
that are deployed from GitHub to AWS.


# ============================================================
# SYSTEM RESPONSIBILITY BOUNDARY
# ============================================================

Canonical responsibility is separated as follows:

- Supabase owns database runtime and persisted application data
- GitHub owns version-controlled design documents and implementation source
- AWS owns deployed runtime execution

AWS is an execution environment.
AWS is not a source-code authoring authority.


# ============================================================
# SOURCE OF TRUTH RULE
# ============================================================

Deployment source-of-truth is GitHub.

AWS must consume approved GitHub state.
AWS must not become an independent source-of-truth
for source code, design documents, or deployment patches.


# ============================================================
# DEVELOPMENT RESPONSIBILITY RULE
# ============================================================

Each OS or application development chat owns:

- implementation
- local or designated development testing
- UI and functional verification
- commit creation
- GitHub push
- merge or approved main reflection
- final AWS deployment approval

The approval phrase is:

AWS反映GO

AWS deployment must not begin
until the responsible development chat
has reached this gate.


# ============================================================
# DEPLOYMENT GATE RULE
# ============================================================

A push to a work/* branch alone
must not trigger AWS deployment.

AWS deployment is allowed only when:

1. implementation is complete
2. required tests are complete
3. changes are committed
4. changes are pushed to GitHub
5. approved changes are reflected in main
6. the responsible development chat declares AWS反映GO

Multiple commits from one work unit
should be deployed together after the final gate
rather than pulled individually during active development.


# ============================================================
# AWS MUTATION PROHIBITION RULE
# ============================================================

AWS must not be used for normal source modification.

The following are prohibited on AWS
as part of normal deployment operation:

- editing application source to create a hotfix
- editing canonical design documents
- creating development commits
- pushing source changes to GitHub
- maintaining AWS-only source divergence

A deployment failure must be corrected
in the responsible development scope,
committed to GitHub,
and redeployed through the normal gate.


# ============================================================
# PULL RULE
# ============================================================

AWS source update must use a fast-forward-only flow.

Canonical sequence:

GitHub main
→ AWS fetch
→ target commit verification
→ pull --ff-only
→ build
→ service restart
→ health check

AWS must not use merge commits,
interactive conflict resolution,
or force-based source reconciliation
during deployment.


# ============================================================
# BUILD RULE
# ============================================================

Deployment is not complete
when source pull alone succeeds.

The target runtime must complete
its required production build
before the new version is treated as active.

A failed build is a deployment failure.


# ============================================================
# RUNTIME VERIFICATION RULE
# ============================================================

AWS-side verification is limited to runtime operation.

Required checks may include:

- service is active
- required listener is active
- local health endpoint responds
- reverse proxy responds
- expected HTTP status is returned
- required process survives service restart or host reboot

AWS-side verification does not replace
OS-specific UI or functional testing.


# ============================================================
# TEST RESPONSIBILITY RULE
# ============================================================

UI behavior, feature correctness,
workflow correctness, and application-specific testing
belong to the responsible OS or application development scope.

AWS deployment scope verifies only
that the approved build is executable and reachable.


# ============================================================
# ROLLBACK RULE
# ============================================================

Before deployment,
the currently running known-good revision
must be identifiable.

If build, startup, or health verification fails,
the deployment must not remain partially applied.

The runtime must return
to the previous known-good revision
or another explicitly approved known-good revision.

Failure must remain visible.
Silent partial deployment is prohibited.


# ============================================================
# AUTOMATION RULE
# ============================================================

Periodic automatic pull from GitHub main
is prohibited unless a separately approved CI/CD flow exists.

Future CI/CD may automate deployment only when it preserves:

- main-based approved source
- explicit deployment traceability
- build validation
- runtime health verification
- rollback behavior

Automation must not bypass the deployment gate.


# ============================================================
# FINAL RULE
# ============================================================

Development changes are completed and approved
before AWS deployment begins.

GitHub is the deployment source-of-truth.
AWS is the runtime execution environment.

The canonical deployment path is:

responsible development scope
→ test
→ commit
→ push
→ main
→ AWS反映GO
→ AWS pull --ff-only
→ build
→ restart
→ health check

AWS must not create an independent implementation state.
