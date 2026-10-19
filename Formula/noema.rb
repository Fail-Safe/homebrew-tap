class Noema < Formula
  desc "The intentional memory layer for your AI agents"
  homepage "https://github.com/Fail-Safe/Noema"
  version "0.22.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.3/noema_0.22.3_darwin_arm64.tar.gz"
      sha256 "c1c3aed6b15e193b4078effe07d817e2a9d8da02bceb582c538f127f83eac32a"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.3/noema_0.22.3_darwin_amd64.tar.gz"
      sha256 "c4b8eecab4288bd87bae3d4cc9017bf86c936981f737f6333722b6ce953785d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.3/noema_0.22.3_linux_arm64.tar.gz"
      sha256 "c9ee1b1a71b7c204940306f8eed725035bf773b30f82ff91e789478f01901949"
    else
      url "https://github.com/Fail-Safe/Noema/releases/download/v0.22.3/noema_0.22.3_linux_amd64.tar.gz"
      sha256 "b92cd04ec61510b611d8001bcffb68ef457212d9b546286fdbb005b486d001ea"
    end
  end

  def install
    bin.install "noema"
  end

  test do
    system "#{bin}/noema", "version"
  end
end
