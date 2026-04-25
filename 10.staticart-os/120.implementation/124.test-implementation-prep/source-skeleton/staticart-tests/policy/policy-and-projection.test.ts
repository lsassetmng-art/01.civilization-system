import { getStaticArtTestEnv } from "../config/test-env";

describe("StaticArtOS policy and projection", () => {
  const env = getStaticArtTestEnv();

  it("AC-PL-001 region block denies full open", async () => {
    void env;

    // Arrange
    // - asset region policy blocks actor region

    // Act
    // - request full access session

    // Assert
    // - status 403
    // - blocked_by_region or STATICART_REGION_POLICY_BLOCKED
  });

  it("AC-PL-003 restricted asset blocks new purchase sample and full open", async () => {
    // Arrange
    // - asset is restricted

    // Act / Assert
    // - purchase blocked
    // - sample blocked
    // - full open blocked
  });

  it("AC-CX-001 publish updates CX22073JW reference areas", async () => {
    // Arrange
    // - approved publishable asset

    // Act
    // - publish asset

    // Assert
    // - reference publish job queued
    // - projection/search reference areas updated
  });

  it("AC-CX-002 rights change refreshes exhibition eligibility", async () => {
    // Arrange
    // - published asset initially eligible

    // Act
    // - change rights to make exhibition unavailable

    // Assert
    // - projection becomes ineligible or revoked
    // - reason codes updated
  });

  it("AC-CX-003 CX helper signals do not overwrite canonical automatically", async () => {
    // Arrange
    // - CX-side suggestion exists

    // Act
    // - read canonical metadata after suggestion arrives

    // Assert
    // - canonical values unchanged
  });
});
