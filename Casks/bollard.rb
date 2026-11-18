cask "bollard" do
  version "3.0.0"
  sha256 "20f5f0428cdab6be213e6d0bfd9cf3fdc5c17a63885f8fe94e8e261b01870cad"

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
