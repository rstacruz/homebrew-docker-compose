class DockerCompose < Formula
  desc "Isolated development environments using Docker"
  homepage "https://docs.docker.com/compose/"
  head "https://github.com/docker/compose.git"

  depends_on :python => :recommended if MacOS.version <= :snow_leopard

  def install
    ENV.prepend_create_path "PYTHONPATH", "#{libexec}/lib/python2.7/site-packages"
    system "python", "./setup.py", "install", "--prefix=#{libexec}"
    prefix.install ["bin/docker-compose"]
  end
end
