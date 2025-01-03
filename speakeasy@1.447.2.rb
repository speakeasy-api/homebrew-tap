# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14472 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.447.2"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.447.2/speakeasy_darwin_amd64.zip"
      sha256 "019ca5baa013ee1f70e23ab53c950e615ce658038d27120bec14bed3d0f50b1b"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.447.2/speakeasy_darwin_arm64.zip"
      sha256 "fb6dfae29ea170fb43b9b9d2df8875a7b320f7329d9aba839ddb687bf5aa6f97"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.447.2/speakeasy_linux_amd64.zip"
        sha256 "982220a5e300c58f380bc2eb4ee8ae16cc0bcf4c5ca9875482aa501ca5354c62"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.447.2/speakeasy_linux_arm64.zip"
        sha256 "53cf27c351ce1b904dcd05a1f839ab255ff0770ed30f320ad572721c9c1fd8cf"

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
