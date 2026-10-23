cask "bollard" do
  version "2.1.0"
  sha256 "3723f7ad4fda5baf470b599b8aa5559019e252d29aa533098ed199c3b24f3d47"

  url "https://github.com/fortunexbt/bollard/releases/download/v#{version}/Bollard-#{version}.dmg"
  name "Bollard"
  desc "Every server on your Mac, in the menu bar, with a Stop button that works"
  homepage "https://github.com/fortunexbt/bollard"

  depends_on macos: ">= :sonoma"

  app "Bollard.app"
  binary "#{appdir}/Bollard.app/Contents/MacOS/Bollard", target: "bollard"

  postflight do
    # Ad-hoc signed: clear the quarantine flag so Gatekeeper lets it open.
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{appdir}/Bollard.app"], sudo: false
  end

  uninstall quit: "com.fortunexbt.bollard"

  zap trash: [
    "~/Library/Application Support/Bollard",
    "~/Library/Preferences/com.fortunexbt.bollard.plist",
  ]
end
