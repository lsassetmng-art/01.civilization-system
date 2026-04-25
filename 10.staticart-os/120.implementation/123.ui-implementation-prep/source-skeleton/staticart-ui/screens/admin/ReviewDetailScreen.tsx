import { ScreenShell } from "../../components/common/ScreenShell";
import { ReviewDecisionPanel } from "../../components/admin/ReviewDecisionPanel";

export function ReviewDetailScreen() {
  return (
    <ScreenShell
      shell={{
        title: "Review Detail",
        loadState: "ready",
      }}
    >
      <section>
        <p>Asset summary area</p>
        <p>File readiness area</p>
        <p>Rights and policy area</p>
      </section>

      <ReviewDecisionPanel
        approveEnabled={true}
        rejectEnabled={true}
        reworkEnabled={true}
        restrictEnabled={true}
      />
    </ScreenShell>
  );
}
