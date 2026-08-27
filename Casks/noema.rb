cask "noema" do
  version "0.21.4"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "403c8e5223b11d1fa78477036df4b57a814e29e13ce0b88f56f8efcb268b1da7", intel: "44daa4a55892f860006d6dbd234d6cd3da21acd8950d7f4e491106cebc085629"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.4/noema_0.21.4_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
