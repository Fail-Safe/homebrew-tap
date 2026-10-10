cask "noema" do
  version "0.22.2"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "dab7a01e24c6b97af3eb54b40b7310ac98437a1bb9404ec99ec5395b48ca0484", intel: "bed6e5988c7228bab6f80b04883ba0e5f7f55ce5004aca8da59377b3c4210a45"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.2/noema_0.22.2_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
