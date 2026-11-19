cask "bollard" do
  version "3.2.0"
  sha256 "945859e5c86cf56147889c60ee0a68efabb61ff54d6a19ab78a55854de378ccd"

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
