cask "bollard" do
  version "3.0.2"
  sha256 "32ce8a6d70eff4ec10269e3bd5f0a0753d6f197778b436e8f066a8ab13bf8fd4"

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
