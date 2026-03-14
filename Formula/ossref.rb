class Ossref < Formula
  desc "Track the intellectual lineage of your open source project"
  homepage "https://github.com/herfstvalt/ossref"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/herfstvalt/ossref/releases/download/v#{version}/ossref_darwin_arm64.tar.gz"
      sha256 "ec4d19690ae5fa83a74e3648b8dff1065154f7b5f5ffdea2c58a20c339a84ca9"
    end
    on_intel do
      url "https://github.com/herfstvalt/ossref/releases/download/v#{version}/ossref_darwin_amd64.tar.gz"
      sha256 "4dabfdb8eff1fb0143e313565a196fa096bf2f0f3dec1bb9542e84fefa81643a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/herfstvalt/ossref/releases/download/v#{version}/ossref_linux_arm64.tar.gz"
      sha256 "b9053b79003c21a3a71117f5e2e84cd9663baebaa8838b9151ee5b16ed3dece9"
    end
    on_intel do
      url "https://github.com/herfstvalt/ossref/releases/download/v#{version}/ossref_linux_amd64.tar.gz"
      sha256 "6b06cac3b83e038bec4311dbe0356c290a42c51282f2aa70a2cdb83107c8193e"
    end
  end

  def install
    bin.install "ossref"
  end

  test do
    system "#{bin}/ossref", "help"
  end
end
