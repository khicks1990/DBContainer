FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Install MySQL server non-interactively
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y mysql-server && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Add vscode user to the mysql group so it can access the socket
RUN usermod -aG mysql vscode

# Fix socket directory so mysql group members can enter it
RUN mkdir -p /var/run/mysqld && \
    chown mysql:mysql /var/run/mysqld && \
    chmod 755 /var/run/mysqld

# Allow vscode to start/stop mysql without a password prompt
RUN echo "vscode ALL=(ALL) NOPASSWD: /usr/sbin/service mysql *" \
    >> /etc/sudoers.d/mysql && \
    chmod 0440 /etc/sudoers.d/mysql
