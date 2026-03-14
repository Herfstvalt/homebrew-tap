class Ossref < Formula
  desc "Track the intellectual lineage of your open source project"
  homepage "https://github.com/herfstvalt/ossref"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/herfstvalt/ossref/releases/download/v#{version}/ossref_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/herfstvalt/ossref/releases/download/v#{version}/ossref_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/herfstvalt/ossref/releases/download/v#{version}/ossref_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER"
    end
    on_intel do
      url "https://github.com/herfstvalt/ossref/releases/download/v#{version}/ossref_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "ossref"
  end

  test do
    system "#{bin}/ossref", "help"
  end
end
