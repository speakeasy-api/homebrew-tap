# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Speakeasy < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasyapi.dev"
  version "1.351.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.351.2/speakeasy_darwin_amd64.zip"
      sha256 "fb04a6f1fb5fcf9b4586b70a67afea3faad0cdcc7508d2c6d47ac599a5757bdf"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.351.2/speakeasy_darwin_arm64.zip"
      sha256 "24d4743cc081132c41fee9574024be3413a64ce41a9005914eee5b9f2f59190b"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.351.2/speakeasy_linux_amd64.zip"
        sha256 "027e0e63623caba51b54b88da19c0b0859e04c2a888ba46544091444a53c6389"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.351.2/speakeasy_linux_arm64.zip"
        sha256 "e768b19454106404757b4f5125f470ce83be69235d328469d52c7a85b874cc16"

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
