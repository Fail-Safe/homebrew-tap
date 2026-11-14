class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.23.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.5/noema_0.23.5_darwin_arm64.tar.gz"
      sha256 "11a71d37c86dbfaa2a23d546b951e19e38d14fa6213b25a5b912552ddd9f8fe4"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.5/noema_0.23.5_darwin_amd64.tar.gz"
      sha256 "ba4027b95e5fde3b0ce5af50e8b6d85fb25d3ae7ff86bd66291c8341001be299"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.5/noema_0.23.5_linux_arm64.tar.gz"
      sha256 "e2887907b4bcb6cf852e252e0501f8713d77473f4ab306c1631daa0610de96fe"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.23.5/noema_0.23.5_linux_amd64.tar.gz"
      sha256 "bad0ce61101613a82c0ba251c513c560e7a818fb029f115f11b76bad2784df39"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
