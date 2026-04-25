import { ScreenShell } from "../../components/common/ScreenShell";
import { ViewerToolbar } from "../../components/library/ViewerToolbar";

export function ViewerScreen() {
  return (
    <ScreenShell
      shell={{
        title: "Viewer",
        loadState: "ready",
      }}
    >
      <ViewerToolbar />
      <section>
        <p>Viewer canvas area.</p>
      </section>
    </ScreenShell>
  );
}
