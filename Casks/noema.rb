cask "noema" do
  version "0.23.0"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "fb4ab082f27f8738d23381270d2c1ab1e99e0c0925735176db567a7cde5d318e", intel: "86a12ddf6845a3b0a8bb6ca11de0258bba17cc91817b9bddd3d8f12938adc737"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.0/noema_0.23.0_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
