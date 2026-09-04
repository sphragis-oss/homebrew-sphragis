# Bumped by the choragos desktop release workflow. DO NOT EDIT version/sha256 by hand.
cask "choragos-desktop" do
  version "0.20.0"
  sha256 "181e7a17c8f24e88f6641abf37d2a691c8af2410240042d81d4fb550bc73b85c"

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
