class ShabaCli < Formula
  desc "Personal CLI toolkit by shabaraba"
  homepage "https://github.com/shabaraba/shaba-cli"
  version "0.1.0"
  license "MIT"

  on_macos do
    url "https://github.com/shabaraba/shaba-cli/releases/download/v#{version}/shaba-cli-darwin-arm64"
    sha256 "PLACEHOLDER"

    def install
      bin.install "shaba-cli-darwin-arm64" => "shaba-cli"
    end
  end

  on_linux do
    url "https://github.com/shabaraba/shaba-cli/releases/download/v#{version}/shaba-cli-linux-x64"
    sha256 "PLACEHOLDER"

    def install
      bin.install "shaba-cli-linux-x64" => "shaba-cli"
    end
  end

  test do
    assert_match "Personal CLI toolkit", shell_output("#{bin}/shaba-cli --help")
  end
end
