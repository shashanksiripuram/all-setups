 sudo yum install java-17-amazon-corretto -y
 sudo mkdir /app
 cd /app
  wget https://download.sonatype.com/nexus/3/nexus-3.68.1-02-unix.tar.gz
   sudo tar -zxvf nexus-3.68.1-02-unix.tar.gz
   useradd nexus
    sudo chown -R nexus:nexus nexus-3.68.1-02 sonatype-work
    cd nexus-3.68.1-02
    cd bin/
    vim nexus.rc
          run_as_user="nexus
    11  sudo vi /etc/systemd/system/nexus.service
[Unit]
Description=nexus service
After=network.target

[Service]
Type=forking
LimitNOFILE=65536
User=nexus
Group=nexus
ExecStart=/app/nexus/bin/nexus start
ExecStop=/app/nexus/bin/nexus stop
User=nexus
Restart=on-abort
[Install]
WantedBy=multi-user.target

     chkconfig nexus on
     ./nexus start
    ./neus status
  
