# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpeakeasyAT14023 < Formula
  desc "The Speakeasy CLI for interacting with the Speakeasy Platform"
  homepage "https://www.speakeasy.com"
  version "1.402.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.3/speakeasy_darwin_amd64.zip"
      sha256 "2e0491fa505d38b6270bdc97a0fc9cbba57ac9971062c48eb223dad614c74d4b"

      def install
        bin.install "speakeasy"
      end
    end
    on_arm do
      url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.3/speakeasy_darwin_arm64.zip"
      sha256 "065a121903c31d8dccd409ba630cad4afd7c50876c4fa86fa5f6afc531447d64"

      def install
        bin.install "speakeasy"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.3/speakeasy_linux_amd64.zip"
        sha256 "5610e5613b3f8014d8969ebb3d617a3374edbbcb771bf3f0b6679480814d76c9"

        def install
          bin.install "speakeasy"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/speakeasy-api/speakeasy/releases/download/v1.402.3/speakeasy_linux_arm64.zip"
        sha256 "0dc46fac0b650077240911562d87e1c771f74ee805c8bb1b3d981f60ec208e64"

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
