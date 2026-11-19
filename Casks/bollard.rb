cask "bollard" do
  version "3.1.0"
  sha256 "1a845207f1dbb006fbc44f3900c069f3b2790ce71e20e660cbad86bb12de45eb"

  url "https://github.com/fortunexbt/bollard/releases/download/v#{version}/Bollard-#{version}.dmg"
  name "Bollard"
  desc "Menu bar panel for every server, script and agent you left running"
  homepage "https://github.com/fortunexbt/bollard"

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "Bollard.app"
  binary "#{appdir}/Bollard.app/Contents/MacOS/Bollard", target: "bollard"

  uninstall quit: "com.fortunexbt.bollard"

  zap trash: [
    "~/Library/Application Support/Bollard",
    "~/Library/Preferences/com.fortunexbt.bollard.plist",
  ]
end
