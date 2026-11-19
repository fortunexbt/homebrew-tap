cask "bollard" do
  version "3.0.1"
  sha256 "0a53b2a436f5b1c80d2df298b249e83a3e21ce5c6dec11926fba70237efd5471"

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
