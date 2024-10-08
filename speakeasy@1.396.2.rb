# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT13962 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.396.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.2/speakeasy_darwin_amd64.zip"
      sha256 "3b968e9af130000fd56526e5dcaae748be544b54f955970cfc01c739eb89f25d"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.2/speakeasy_darwin_arm64.zip"
      sha256 "8211dd06c21017fb73340c75bfd5ef684ab2d0e27ba734b91b549dd68258b864"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.2/speakeasy_linux_amd64.zip"
        sha256 "7804d80a87e6248a705d43480007f3f78bcdf1aca11711e9aabbedfc9694a8ab"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.396.2/speakeasy_linux_arm64.zip"
        sha256 "486aec87e51175315025d19512021a37be1d63d7e06fe43ffbdc24fc6c0ecdb2"

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
