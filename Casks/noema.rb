cask "noema" do
  version "0.22.3"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "c1c3aed6b15e193b4078effe07d817e2a9d8da02bceb582c538f127f83eac32a", intel: "c4b8eecab4288bd87bae3d4cc9017bf86c936981f737f6333722b6ce953785d4"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.3/noema_0.22.3_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
