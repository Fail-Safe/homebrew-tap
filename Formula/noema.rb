class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.23.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.4/noema_0.23.4_darwin_arm64.tar.gz"
      sha256 "6b38d0f035b24a147a7b60c8781df1ffdab745b8dbfaef463bc739ce24f27f11"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.4/noema_0.23.4_darwin_amd64.tar.gz"
      sha256 "c7d9cdcb6558bfb52e8938519467ff7d64dbfbf4c560782f6b54cc850e6f12c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.4/noema_0.23.4_linux_arm64.tar.gz"
      sha256 "7fadd4c7dc78c896f25ff1269198b5139dfb61fd0460de528eb940e05fa3eb43"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.4/noema_0.23.4_linux_amd64.tar.gz"
      sha256 "77d7f8049b2efd48a3405943e1f6e263f6cd9b2ed3dc350796d15a297ab133c3"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
