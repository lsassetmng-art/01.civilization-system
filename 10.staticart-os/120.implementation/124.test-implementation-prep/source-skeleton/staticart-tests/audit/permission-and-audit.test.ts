import { getStaticArtTestEnv } from "../config/test-env";

describe("StaticArtOS permission and audit", () => {
  const env = getStaticArtTestEnv();

  it("AC-AU-001 governance actions create audit events", async () => {
    void env;

    // Arrange
    // - target asset exists

    // Act
    // - review decide
    // - publish
    // - restrict
    // - delist
    // - archive

    // Assert
    // - audit events exist for each action
    // - actor and request_id are traceable
  });

  it("AC-AU-002 support_readonly can read but cannot write", async () => {
    // Arrange
    // - support_readonly actor

    // Act / Assert
    // - read endpoints succeed
    // - write endpoints fail with 403
  });

  it("AC-AU-003 exhibition_builder_reader reads projection only", async () => {
    // Arrange
    // - projection exists

    // Act / Assert
    // - projection read succeeds
    // - canonical write fails with 403
  });

  it("AC-AU-004 same idempotency key same body does not double-apply", async () => {
    // Arrange
    // - choose idempotent endpoint

    // Act
    // - send same request twice with same key and body

    // Assert
    // - same result returned
    // - no double grant or duplicate state transition
  });
});
