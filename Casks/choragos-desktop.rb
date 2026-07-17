# Bumped by the choragos desktop release workflow. DO NOT EDIT version/sha256 by hand.
cask "choragos-desktop" do
  version "0.11.2"
  sha256 "5024a89d49b17b0603d2dc3cc5bf822dfcd8fdc558c7ff03e1101044d458d170"

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
