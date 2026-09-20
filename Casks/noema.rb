cask "noema" do
  version "0.21.8"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "703c0f3b1872117f2ef71534baa5a0d558f92b27d34de8971a9c5680e82bc1b2", intel: "62228675a656eade79630d768212c57ada17e34f9efe84e01eb38862d05e61a0"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.8/noema_0.21.8_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
