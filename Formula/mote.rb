class Mote < Formula
  desc "A fine-grained snapshot management tool for projects"
  homepage "https://github.com/shabaraba/mote"
  version "0.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1e7cf5937cbd8c70b6f1992b811e9daea690a2e6dfa29c78443b66939eba1e0b" # ARM64 macOS
    else
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "af883e38cff3d8d15dfe3e06fd56294cb19178a9867f99d17b6564a7312840ff" # x86_64 macOS
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e02733306d8c2109b14e4ce17370609d0e78a3bd062c03cb1557d021bed3ff9f" # ARM64 Linux
    else
      url "https://github.com/shabaraba/mote/releases/download/v#{version}/mote-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "33db5260328ab6bd94284344196e4fe692b8c3ff59e2f2e732c083e08a51e1c5" # x86_64 Linux
    end
  end

  def install
    bin.install "mote"
  end

  test do
    system "#{bin}/mote", "--version"
  end
end
