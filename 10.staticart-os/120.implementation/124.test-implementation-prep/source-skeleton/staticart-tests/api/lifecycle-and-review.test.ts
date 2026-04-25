import { getStaticArtTestEnv } from "../config/test-env";

describe("StaticArtOS lifecycle and review", () => {
  const env = getStaticArtTestEnv();

  it("AC-LC-001 draft can pass through self-check preparation flow", async () => {
    void env;

    // Arrange
    // - create draft
    // - upload required file roles
    // - save localization
    // - save rights/sales/subscription

    // Act
    // - run self check

    // Assert
    // - lifecycle becomes self_check_passed
    // - blocker list is empty
  });

  it("AC-RV-001 self_check_passed asset can create review request", async () => {
    // Arrange
    // - asset in self_check_passed

    // Act
    // - create review request

    // Assert
    // - review request created
    // - lifecycle becomes review_pending
  });

  it("AC-RV-002 creator cannot edit governed fields during review_pending", async () => {
    // Arrange
    // - asset in review_pending

    // Act
    // - attempt localization or rights update

    // Assert
    // - status 409
    // - error code STATICART_ASSET_STATE_CONFLICT
  });

  it("AC-RV-003 review_admin can approve reject rework or restrict", async () => {
    // Arrange
    // - pending review exists

    // Act
    // - decide review as each supported decision

    // Assert
    // - lifecycle transitions correctly
    // - audit row exists
  });

  it("AC-RV-004 creator cannot self-approve", async () => {
    // Arrange
    // - creator actor on own asset

    // Act
    // - attempt review decision

    // Assert
    // - status 403
    // - error code STATICART_FORBIDDEN
  });
});
