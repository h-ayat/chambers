FROM hub.hamdocker.ir/archlinux:base-devel

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm jdk11-openjdk sbt scala 

RUN mkdir /setup/ \
  && cd /setup/ \
  && curl -fLo cs https://git.io/coursier-cli-"$(uname | tr LD ld)" \
  && chmod +x cs \
  && mv cs /usr/bin \
  && rm -rf /setup

RUN cs install --install-dir /opt/cs --only-prebuilt scalafmt scalafix

RUN useradd -m dev

USER dev
#RUN cs install bloop 
