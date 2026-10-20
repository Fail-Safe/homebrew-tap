class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.23.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.2/noema_0.23.2_darwin_arm64.tar.gz"
      sha256 "b2dd96ce979ec5777de77706f18ebdf66d5776e5e3ee78604f0767923a21746b"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.2/noema_0.23.2_darwin_amd64.tar.gz"
      sha256 "f278f594c33df9f78f4c557460b5acfac0a8affad14a8cec7a117d6ffdb30dd1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.2/noema_0.23.2_linux_arm64.tar.gz"
      sha256 "c89a545a666dbe20344ea23d87bbdbe2fd5f07dfc9962df03845f0853472a74f"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.2/noema_0.23.2_linux_amd64.tar.gz"
      sha256 "36cba94b1c9f8c03cf46710f7aa9bd7247d31b2bdcf1356937f03e734df963dd"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
