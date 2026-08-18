# Bumped by the choragos desktop release workflow. DO NOT EDIT version/sha256 by hand.
cask "choragos-desktop" do
  version "0.19.0"
  sha256 "2c0c929703d2bab5148df456ac9583a8bacf718b13ef1c5d7eb157506a3585d5"

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
