# Bumped by the choragos desktop release workflow. DO NOT EDIT version/sha256 by hand.
cask "choragos-desktop" do
  version "0.21.0"
  sha256 "ae1b0c1658fcc93547cbd67b8e8595396081e7ea68ab3887be3951dfdf1c2f62"

  url "https://github.com/sphragis-oss/choragos/releases/download/desktop/v#{version}/Choragos-#{version}.dmg"
  name "Choragos"
  desc "Desktop app for the choragos multi-agent development orchestrator"
  homepage "https://github.com/sphragis-oss/choragos"

  livecheck do
    skip "Auto-generated on release."
  end

  depends_on :macos

  app "Choragos.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Choragos.app"]
  end
end
