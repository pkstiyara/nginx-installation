#Nginx Installation Script
This script automates the installation of Nginx web server.

Author: Pankaj Kumar Singh 

Requirements:

Debian-based system (e.g., Ubuntu, Mint)
Root or sudo privileges
Instructions:

Save the script as install_nginx.sh.
Open a terminal window and navigate to the directory containing the script.
Make the script executable: chmod +x install_nginx.sh
Run the script: sudo ./install_nginx.sh
Script Breakdown:

Updates package list: Ensures the system has the latest information about available packages.
Installs dependencies: Downloads and installs necessary packages for building Nginx.
Creates source directory: Creates a directory to store the downloaded Nginx source code.
Downloads and extracts Nginx: Downloads the specified Nginx version (1.25.3 in this example) and extracts the archive.
Configures Nginx build: Specifies options for compiling Nginx, including:
User and group: Sets the user and group that will own the Nginx processes and files.
Installation prefix: Defines the directory where Nginx will be installed.
Paths for executables, configuration, logs, and PID/lock files: Specifies the locations for various Nginx files and directories.
Modules: Enables the HTTP SSL module for secure connections and the PCRE library for regular expressions.
Compiles Nginx: Builds the Nginx server from the source code.
Installs Nginx: Installs the compiled Nginx binary and configuration files into the specified directory.
Confirmation message: Prints a message indicating successful installation.
Note:

This script installs Nginx to a non-standard location (/data/nginx-1253). You might need to adjust your server configuration to reflect the custom installation path.
It's recommended to review the script and understand each step before running it on your system.