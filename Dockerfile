FROM fgracia/steamcmd

RUN mkdir -p /opt/csgo

WORKDIR /opt/steamcmd/bin
RUN ./steamcmd.sh +login exialanbdx Exialanbdx33 +force_install_dir /opt/csgo +app_update 740 validate +quit

VOLUME ["/opt/csgo"]

CMD ["/opt/csgo/srcds", "-game csgo", "-console", "-usercon", "+game_type 0", "+game_mode 1", "+mapgroup mg_active", "+map de_dust2"]