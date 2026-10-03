cask "noema" do
  version "0.22.0"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "5662f845e9503607e7bd03c9c59cc4211ac02a72df79f57789a03dbb70fb5239", intel: "dbf1246fc8914dd57f606a3e6d9eccc0651918f92388b219d0b9ab5f66fc7bef"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.0/noema_0.22.0_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
