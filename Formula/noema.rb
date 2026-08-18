class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.20.0/noema_0.20.0_darwin_arm64.tar.gz"
      sha256 "22455eabe14380855a9f6c4eb5e05a24f36f2a747c6e980c568802fb63c20572"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.20.0/noema_0.20.0_darwin_amd64.tar.gz"
      sha256 "c6fc0d468dd7140bee68548ce2b8e1754979abd396c43964de81d9fc301d5bc8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.20.0/noema_0.20.0_linux_arm64.tar.gz"
      sha256 "d448f0dd3235756fa5dd62fe97289ec6ff28fac9d3a19f0d07258c8b2c4448ac"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.20.0/noema_0.20.0_linux_amd64.tar.gz"
      sha256 "6adda9976084019971525168666d83c5610c938ae6068150d9026d7d30430c91"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
