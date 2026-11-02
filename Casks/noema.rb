cask "noema" do
  version "0.23.3"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "643108d1d062d9359642b3863cdb42ef6734a3d17bbd6ac146b798eb7dcd67a7", intel: "547f827b939c33d41660f7414570493fd73694843a9c85e09ad1d67dad766064"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.3/noema_0.23.3_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
