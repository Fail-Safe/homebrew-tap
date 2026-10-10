class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.22.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.2/noema_0.22.2_darwin_arm64.tar.gz"
      sha256 "dab7a01e24c6b97af3eb54b40b7310ac98437a1bb9404ec99ec5395b48ca0484"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.2/noema_0.22.2_darwin_amd64.tar.gz"
      sha256 "bed6e5988c7228bab6f80b04883ba0e5f7f55ce5004aca8da59377b3c4210a45"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.2/noema_0.22.2_linux_arm64.tar.gz"
      sha256 "85f4f204f3a97ff67fc29859f310fa924ea278ed903b14fd2dd7506d3d1f1412"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.2/noema_0.22.2_linux_amd64.tar.gz"
      sha256 "d9deb9443b4967205228a3f65e447c5da28e821a30d1ecf9f4a75249df6b2ce4"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
