class Diw < Formula
  desc "DIW is a CLI utility helper tool."
  homepage "https://dasistweb.de"
  url "https://github.com/MarcoFaul/diw/releases/download/v0.9.4.0/diw-0.9.4.0.tar.gz"
  version "0.9.4.0"
  sha256 "b0fcc0ccc59947b96c0d66622b6030670ef6cb921038a7f16414a31ba5a89537"
  license ""

  def install
    prefix.install Dir["*"]
  end

  def post_install
    if !(File.exist?((etc/"diw-override.config.yaml"))) then
      (etc/"diw-override.config.yaml").write override_conf
    end
  end

  def override_conf; <<~EOS
    docker:
      container:
  EOS
  end

  def caveats
    <<~EOS
      Diw is a CLI utility helper tool made for DIW

      To start diw simply run:

            diw

        Documentation is available at: https://diw-tool.netlify.app/
        Created by Marco Faul
    EOS
  end

    test do
      system "#{bin}/diw"
    end
end
