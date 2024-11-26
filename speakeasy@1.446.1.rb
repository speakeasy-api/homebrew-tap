# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14461 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.446.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.446.1/speakeasy_darwin_amd64.zip"
      sha256 "8252c6f1154118a8e056a7e2bdbeafab6ef7a20b98b67d7283850e5bd66a6da0"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.446.1/speakeasy_darwin_arm64.zip"
      sha256 "3d76fdb8857f0ef544ab77c1a33020408d944c8ecf47350c3e722554c6c6d779"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.446.1/speakeasy_linux_amd64.zip"
        sha256 "95f26690104a4fb82c4ec1a35679dd0b9d6ed308c0bf8d900aa3022a71bd49f2"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.446.1/speakeasy_linux_arm64.zip"
        sha256 "121f98254e2d97b545413193ef7c47ae9d5ab3f071e6b444877f51f298e7251c"

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
