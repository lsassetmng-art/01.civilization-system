import { ScreenShell } from "../../components/common/ScreenShell";

export function AuditDetailScreen() {
  return (
    <ScreenShell
      shell={{
        title: "Restriction Delist Audit Detail",
        loadState: "ready",
      }}
    >
      <section>
        <p>Current lifecycle state</p>
        <p>Blocking effects</p>
        <p>Reason code timeline</p>
        <p>Projection refresh result</p>
      </section>
    </ScreenShell>
  );
}
