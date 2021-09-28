<h1 align=center>
	<b>CentOS Linux 8</b>
</h1>


<h2 align=center> Index </h2>
<h3><b>
	<a href="#Virtualization Server">1. Virtualization Server</br></a>
</b></h3>
	<span> • </span><a href="#What is Server Virtualization?">1.1 What is Server Virtualization?</br></a>
	<span> • </span><a href="#What are VMs used for?">1.2 What are VMs used for?</br></a>
	<span> • </span><a href="#What are the benefits of VMs?">1.3 What are the benefits of VMs?</br></a>
<h3><b>
	<a href="#CentOS">2. CentOS</br></a>
</b></h3>
	<span> • </span><a href="#Overview">2.1 Overview</br></a>
	<span> • </span><a href="#CentOS vs Debian">2.2 CentOS vs Debian</br></a>
<h3><b>
	<a href="#SELinux">3. SELinux</br></a>
</b></h3>
	<span> • </span><a href="#SEl">3.1 Overview</br></a>

<h3><b>
	<a href="#SSH">4. SSH</br></a>
</b></h3>
	<span> • </span><a href="#SS">4.1 Overview</br></a>
	<span> • </span><a href="#SS2">4.2 Installing & Configuring SSH</br></a>
<h3><b>
	<a href="#UFW">5. UFW</br></a>
</b></h3>
	<span> • </span><a href="#UF1">5.1 Overview</br></a>
	<span> • </span><a href="#UF2">5.2 Install and Setup UFW Firewall</br></a>
<h3><b>
	<a href="#Hostname, Users and Groups">6. Hostname, Users and Groups</br></a>
</b></h3>

<h3><b>
	<a href="#Setting 'sudo' in linux">7. Setting 'sudo' in linux</br></a>
</b></h3>

<h3><b>
	<a href="#ref">References</br></a>
</b></h3>


<h2 align=center id="Virtualization Server">
Virtualization Server
</h2>
<h2 id="What is Server Virtualization?">
What is Server Virtualization?
</h2>

Server virtualization is the process of creating multiple server instances from one physical server. Each server instance represents an isolated virtual environment. Within each virtual environment, you can run a separate operating system.

![VM](https://azurecomcdn.azureedge.net/cvt-c6423f74796365dad64d76835f10a79b10d64b0ec5f06b8061d1a854a4cd1ed1/images/page/overview/what-is-a-virtual-machine/overview-img.png)

<h2 id="What are VMs used for?">
What are VMs used for?
</h2>

<p>Here are a few ways virtual machines are used:

- Building and deploying apps to the cloud.
Trying out a new operating system (OS), including beta releases.
- Spinning up a new environment to make it simpler and quicker for developers to run dev-test scenarios.
- Backing up your existing OS.
- Accessing virus-infected data or running an old application by installing an older OS.
- Running software or apps on operating systems that they weren't originally intended for.
</p>

<h2 id="What are the benefits of VMs?">
What are the benefits of VMs?
</h2>

<p>

- Cost Savings.
- Agility and speed.
- Lowered downtime.
- Scalability.
- Security benefits.
</p>

<h2 align=center id="CentOS">
CentOS
</h2>
<h2 id="Overview">
Overview
</h2>

<p>

- CentOS — Community Enterprise Operating System — is a free, open source Linux distribution. CentOS is functionally compatible with Red Hat Enterprise Linux (RHEL). And it's derived from RHEL.
- CentOS is good for enterprise Linux without the costs of RHEL.
</p>

<h2 id="CentOS vs Debian">
CentOS vs Debian
</h2>

CentOS|Debian
---|---
CentOS is more stable and supported by a large community|Debian has relatively less market preference.
Mission-critical servers are hosted on CentOS|Ubuntu is fast catching up. A lot of people are betting on it.
Usually, it is very difficult to upgrade a version of CentOS locally. Official sources recommend installing a newer version then to upgrade an older one.|Upgrading Debian from one stable version to another is easy and not painf
It does not have an easy GUI. | It has desktop friendly applications and GUI.
The core software of CentOS, such as the RHEL/CentOS components, also the kernel and all its utilities, come from the distribution, while the add-on software like Apache, PHP, Java, and MySQL come from newer sources such as Fedora or from vendors directly such as MySQL | A real reason to use Debian is if they provide unique functionality that is necessary for a system; in such cases switching to Debian makes sense. Apt repositories in package managers have the latest source code for several open-source languages and frameworks like ruby, rails, PostgreSQL, Golang, selenium, angular2-dart etc. Ubuntu is very suitable to work with when using Docker file/s docker containers.

<h2 align=center id="SELinux">
SELinux
</h2>
<h2 id="SEl">
Overview
</h2>

<p>

- Security-Enhanced Linux (SELinux) is a mandatory access control (MAC) security mechanism implemented in the kernel. SELinux was first introduced in CentOS 4 and significantly enhanced in later CentOS releases. These enhancements mean that content varies as to how to approach SELinux over time to solve problems.
</p>

<h2 align=center id="SSH">
SSH
</h2>
<h2 id="SS">
Overview
</h2>

![VM](https://www.oracle.com/webfolder/technetwork/tutorials/obe/cloud/dbaas/obe_dbaas_connecting_to_an_instance/images/key%20based%20authentication.jpg)

<p>

- SSH, also known as Secure Shell or Secure Socket Shell, is a network protocol that gives users, particularly system administrators, a secure way to access a computer over an unsecured network.
</p>

<h2 id="SS2">
Installing & Configuring SSH
</h2>

```console
foo@bar:~$ sudo yum install openssh-clients
```
```console
foo@bar:~$ sudo yum install openssh-server
```
```console
foo@bar:~$ sudo systemctl status sshd
```

```console
foo@bar:~$ sudo systemctl enable sshd
```

```console
foo@bar:~$ sudo vi /etc/ssh/sshd_config
```

```console
foo@bar:~$ Port 4242
```

```console
foo@bar:~$ PermitRootLogin no
```

```console
foo@bar:~$ dnf provides /usr/sbin/semanage
```

```console
foo@bar:~$ dnf install policycoreutils-python-utils
```

```console
foo@bar:~$ sudo semanage port -a -t ssh_port_t -p tcp 4242
```

```console
foo@bar:~$ semanage -h
```

```console
foo@bar:~$ systemctl restart ssh
```

<h2 align=center id="UFW">
UFW
</h2>
<h2 id="UF1">
Overview
</h2>

<h2 id="UF2">
Install and Setup UFW Firewall
</h2>

```console
foo@bar:~$ sudo dnf install epel-release -y
```

```console
foo@bar:~$ sudo dnf install ufw -y
```

```console
foo@bar:~$ sudo ufw enable
```

```console
foo@bar:~$ sudo ufw status
```

```console
foo@bar:~$ sudo ufw status numbered
```

```console
foo@bar:~$ sudo ufw delete 1
```

```console
foo@bar:~$ sudo ufw default allow outgoing
```

```console
foo@bar:~$ sudo ufw default deny incoming
```

```console
foo@bar:~$ sudo ufw allow 4242
```

```console
foo@bar:~$
```

<h2 align=center id="Hostname, Users and Groups">
Hostname, Users and Groups
</h2>

```console
foo@bar:~$ sudo vi /etc/hostname
```

```console
foo@bar:~$ sudo vi /etc/hosts
127.0.0.1	localhost localhost.localdomain localhost4 localhost4.locadomain4
::1			localhost localhost.localdomain localhost6 localhost6.locadomain6
```

```console
foo@bar:~$ sudo reboot
```

<h2 align=center id="Setting 'sudo' in linux">
Setting 'sudo' in linux
</h2>

```console
foo@bar:~$ dnf install sudo
```

```console
foo@bar:~$ mkdir /var/log/sudo/sudo.log
```

```console
foo@bar:~$ visudo -f /etc/sudoers.d/sudoers-rules
# Set a Secure PATH
Defaults	secure_path=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/snap/bin

# Enable sudo on TTY User Login Session
Defaults	requiretty

# Create a Sudo Log File
Defatults	logfile=/var/log/sudo/sudo.log

# Show Custom Message When You Enter Wrong sudo Password
Defaults	badpass_message="Password is wrond, please try again"

# Increase sudo Password Tries Limit
Defaults	passwd_tries=5
```

For test:

```console
foo@bar:~$ sudo systemctl status sshd
```

```console
foo@bar:~$ vi /var/log/sudo/sudo.log
sep 28 11:55:05 : root : TTY=tty1 ; PWD=/root ; USER=root;
	COMMAND=/usr/bin/systemctl status sshd
```

```console
foo@bar:~$
```

<h2 align=center id="Password Policy">
Password Policy
</h2>

```console
foo@bar:~$
```

<h2 id="ref">
	<b>References</b>
</h2>
<p><a href="https://phoenixnap.com/kb/what-is-server-virtualization"><i><b>What is Server Virtualization?</b></i></a></p>
<p><a href="https://azure.microsoft.com/en-us/overview/what-is-a-virtual-machine/#overview"><i><b>What is a virtual machine(VM)?</b></i></a></p>
<p><a href="https://phoenixnap.com/kb/what-is-hypervisor-type-1-2"><i><b>What is a Hypervisior?Types of Hypervisors 1 & 2?</b></i></a></p>
<p><a href="https://www.openlogic.com/blog/what-centos"><i><b>What is a CentOS?</b></i></a></p>
<p><a href="https://www.openlogic.com/blog/centos-vs-debian"><i><b>CentOS vs Debian</b></i></a></p>
<p><a href="https://www.tecmint.com/difference-between-apt-and-aptitude/"><i><b>What is APT and Aptitude?</b></i></a></p>
<p><a href="https://wiki.centos.org/HowTos/SELinux"><i><b>SELinux</b></i></a></p>
<p><a href="https://www.tecmint.com/mandatory-access-control-with-selinux-or-apparmor-linux/"><i><b>Impementing Mandatory Access Control with SELinux or AppArmor in Linux</b></i></a></p>
<p><a href="https://www.redhat.com/sysadmin/apparmor-selinux-isolation"><i><b>A comparision of AppArmor and SELinux</b></i></a></p>
<p><a href="https://elinux.org/images/3/39/SecureOS_nakamura.pdf"><i><b>SELinux vs AppArmor</b></i></a></p>
<p><a href="https://searchsecurity.techtarget.com/definition/Secure-Shell"><i><b>Secure Socket Shell (SSH)</b></i></a></p>
<p><a href="https://linuxhint.com/enable_ssh_centos8/"><i><b>How to Enable SSH on CentOS 8</b></i></a></p>
<p><a href="https://ostechnix.com/linux-troubleshooting-semanage-command-not-found-in-centos-7rhel-7/"><i><b>semanage command nott found</b></i></a></p>
<p><a href="https://shouts.dev/install-and-setup-ufw-firewall-on-centos-8-rhel-8"><i><b>Install and Setup UFW Firewall</b></i></a></p>
<p><a href="https://linuxconfig.org/rhel-8-configure-static-ip-address"><i><b>How to configure a static IP address</b></i></a></p>
<p><a href="https://www.server-world.info/en/note?os=CentOS_8&p=pam&f=1"><i><b>Pwquality : Set Password Rules</b></i></a></p>
<p><a href="https://www.tecmint.com/sudoers-configurations-for-setting-sudo-in-linux/"><i><b>Setting ‘sudo’ in Linux</b></i></a></p>
<p><a href="https://www.cyberciti.biz/faq/centos-8-change-hostname-computer-name-command/"><i><b>Change Hostname</b></i></a></p>
<p><a href="https://www.techrepublic.com/article/how-to-create-users-and-groups-in-linux-from-the-command-line/"><i><b>How to create users and groups</b></i></a></p>

