class Diw < Formula
  desc "DIW is a CLI utility helper tool."
  homepage "https://dasistweb.de"
  url "https://github.com/MarcoFaul/diw/releases/download/v0.9.4.1/diw-0.9.4.1.tar.gz"
  version "0.9.4.1"
  sha256 "b23257901746c69b60737f75e865b5ece9e1fe4726a89e5056cb28489dad2283"

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
