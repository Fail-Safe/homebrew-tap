class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.21.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.6/noema_0.21.6_darwin_arm64.tar.gz"
      sha256 "efcac155df408213f2761d508840f3460cd4e373dcaebf8de91b2c0db216b2e3"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.6/noema_0.21.6_darwin_amd64.tar.gz"
      sha256 "894ced1a93db5dd20ff9fbac802c6c8f7dbfe35ceabe03d9a9f66820d2458cc2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.6/noema_0.21.6_linux_arm64.tar.gz"
      sha256 "6e897bd9745f8ce2ccd409afa8b48a2ffde2c5e8b481287d94c3d942d39edd2a"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.6/noema_0.21.6_linux_amd64.tar.gz"
      sha256 "c0e4aea0411a433687e47211731ab466cc3e24ae506bc1580c8ec9c45619f7b1"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
