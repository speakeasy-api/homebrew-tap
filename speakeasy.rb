# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.340.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.340.1/speakeasy_darwin_amd64.zip"
      sha256 "770aef12b2f1c6b6f946557b31a0eb0a23fcda0b60f4c37a3ef43c22f1169961"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.340.1/speakeasy_darwin_arm64.zip"
      sha256 "4b843405d0423fff411c2087300aa64be96432258ba8e7917db7bf5e142c7418"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.340.1/speakeasy_linux_amd64.zip"
        sha256 "8b213e66e702dd573eda927f794d2ade8c82a363dadcd62b81b8684e1ffc7f92"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.340.1/speakeasy_linux_arm64.zip"
        sha256 "90bbddb4780400f10249d886c1753308136019d40689efceccb76c47ac8f6ae9"

        def install
          bin.install "speakeasy"
        end
      end
    end
  end

  test do
    system "#{bin}/speakeasy --version"
  end
end
