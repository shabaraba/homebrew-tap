class Mote < Formula
  desc "A fine-grained snapshot management tool for projects"
  homepage "https://github.com/shabaraba/mote"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5ddd3ea1e03f952c635fb22b5311cf01d33e752ba78bbe8ffade6fbde4420ab7" # ARM64 macOS
    else
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "52bf24fe62f0ff2ad04a689ddc164ce34c16963a98cccc7ff023a1bd266ff65a" # x86_64 macOS
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "14ca5fa80018eba16bd6ffadcf553e613817934922a839b9152b946aecc05e91" # ARM64 Linux
    else
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "dfc0aef7dfc4da819c5f3bb00f5b7a5e5691b1c271c18a9ecaf13bbe36345af7" # x86_64 Linux
    end
  end

  def install
    bin.install "mote"
  end

  test do
    system "#{bin}/mote", "--version"
  end
end
