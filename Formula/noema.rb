class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.21.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.4/noema_0.21.4_darwin_arm64.tar.gz"
      sha256 "403c8e5223b11d1fa78477036df4b57a814e29e13ce0b88f56f8efcb268b1da7"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.4/noema_0.21.4_darwin_amd64.tar.gz"
      sha256 "44daa4a55892f860006d6dbd234d6cd3da21acd8950d7f4e491106cebc085629"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.4/noema_0.21.4_linux_arm64.tar.gz"
      sha256 "1cedec677e060b11e0057dfbd814d0d925411b14d461b0d7ade33ae0df1a4933"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.21.4/noema_0.21.4_linux_amd64.tar.gz"
      sha256 "449d7e8145cf268054b8bb1297a40888ec1a54a7c3a0a90d78014d84384d9332"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
