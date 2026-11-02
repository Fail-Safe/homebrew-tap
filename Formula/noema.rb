class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.23.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.3/noema_0.23.3_darwin_arm64.tar.gz"
      sha256 "643108d1d062d9359642b3863cdb42ef6734a3d17bbd6ac146b798eb7dcd67a7"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.3/noema_0.23.3_darwin_amd64.tar.gz"
      sha256 "547f827b939c33d41660f7414570493fd73694843a9c85e09ad1d67dad766064"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.3/noema_0.23.3_linux_arm64.tar.gz"
      sha256 "c7d0051ff6507a88c554b45ffac5c1490adea37fd26b8ed092c556f2e62ccae2"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.3/noema_0.23.3_linux_amd64.tar.gz"
      sha256 "a1abc2da3e9e4b1fc1618a186a762195e5028849f09d7fcaccf510f70a699b0a"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
