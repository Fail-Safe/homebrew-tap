cask "noema" do
  version "0.22.1"
  arch arm: "arm64", intel: "amd64"
  sha256 arm: "3d60bc96aa3febaa9848dca939aa25472b511801d8f74ea57ef0944e5ab643be", intel: "313a1f63248ed46da38ab0fcdd4a024ddcb45ac58c51764a1dcab2cf1abec359"
  url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.1/noema_0.22.1_darwin_#{arch}.tar.gz"
  name "Noema"
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"

  binary "noema"

  postflight do
    system_command "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "#{staged_path}/noema"]
  end
end
