# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT140210 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.402.10"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.10/speakeasy_darwin_amd64.zip"
      sha256 "48041a920431bdc2d1050786e7153357ff73a321940c1b54a53205979663cfec"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.10/speakeasy_darwin_arm64.zip"
      sha256 "799c2350bc5c6bf8eb9659daa3ac12b3f704125c7512abb786e60625c356662c"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.10/speakeasy_linux_amd64.zip"
        sha256 "06adf42a932eb9d7e83414b5fd1a09c933f8f938f992399d42fdf3997078c955"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.10/speakeasy_linux_arm64.zip"
        sha256 "39c9c3e2e6516bf7e292699d226f671536ed48884f84e052cab9de2f681dd2b6"

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
