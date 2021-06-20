FROM hub.hamdocker.ir/archlinux:base-devel

RUN pacman -Syu --noconfirm
RUN pacman -S --noconfirm jdk11-openjdk sbt scala zsh zsh-theme-powerlevel10k openssh \
  && rm -rf /var/cache/pacman \
  && rm -rf /var/cache/pkgfile

RUN mkdir /setup/ \
  && cd /setup/ \
  && curl -fLo cs https://git.io/coursier-cli-"$(uname | tr LD ld)" \
  && chmod +x cs \
  && mv cs /usr/bin \
  && rm -rf /setup

RUN cs install --install-dir /opt/cs --only-prebuilt scalafmt scalafix metals bloop ammonite
RUN ssh-keygen -A
RUN useradd -m dev \
  && chsh -s /usr/bin/zsh dev 
COPY sshd_config /etc/ssh/
RUN chown -R dev:dev /etc/ssh/

USER dev

VOLUME ["/home/dev"]
EXPOSE 22
CMD ["/usr/bin/sshd", "-D", "-f", "/etc/ssh/sshd_config"]
