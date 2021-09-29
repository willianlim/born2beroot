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

<h2 align=center id="LVM">
LVM
</h2>
<h2 id="lv">
Overview
</h2>

![VM](https://cdn.thegeekdiary.com/wp-content/uploads/2014/10/LVM-basic-structure.png)

<p>

LVM stands for Logical Volume Management. It is a system of managing logical volumes, or filesystems, that is much more advanced and flexible than the traditional method of partitioning a disk into one or more segments and formatting that partition with a filesystem.

- PV – It’s a raw hard drive that it initialized to work with LVM, such as /dev/sdb, /dev/sdc, /dev/sdb1 etc.
- VG – Many PV is combined into one VG. You can create many VGs and each of them has a unique name.
- LV – You can create many LVs from a VG. You can extend, reduce the LV size on the fly. The LV also has unique names. You format the LV into ext4, zfs, btrfs etc filesystems, mount it and use it as you do other ordinary partitions.
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
[root@wrosendo42 ~]# sudo yum install openssh-clients
```
```console
[root@wrosendo42 ~]# sudo yum install openssh-server
```
```console
[root@wrosendo42 ~]# sudo systemctl status sshd
```

```console
[root@wrosendo42 ~]# sudo systemctl enable sshd
```

```console
[root@wrosendo42 ~]# sudo vi /etc/ssh/sshd_config
```

```console
[root@wrosendo42 ~]# Port 4242
```

```console
[root@wrosendo42 ~]# PermitRootLogin no
```

```console
[root@wrosendo42 ~]# dnf provides /usr/sbin/semanage
```

```console
[root@wrosendo42 ~]# dnf install policycoreutils-python-utils
```

```console
[root@wrosendo42 ~]# sudo semanage port -a -t ssh_port_t -p tcp 4242
```

```console
[root@wrosendo42 ~]# semanage -h
```

```console
[root@wrosendo42 ~]# systemctl restart ssh
```

<h2 id="SS3">
Testing the SSH key
</h2>

```console
[root@wrosendo42 ~]# semanage port -l | grep ssh
```

```console
[root@wrosendo42 ~]# semanage port -a -t ssh_port_t tcp 4242
```

```console
[root@wrosendo42 ~]# systemctl restart sshd
```

```console
[root@wrosendo42 ~]# ssh -tunlp
```

```console
[root@wrosendo42 ~]#
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
[root@wrosendo42 ~]# sudo dnf install epel-release -y
```

```console
[root@wrosendo42 ~]# sudo dnf install ufw -y
```

```console
[root@wrosendo42 ~]# sudo ufw enable
```

```console
[root@wrosendo42 ~]# sudo ufw status
```

```console
[root@wrosendo42 ~]# sudo ufw status numbered
```

```console
[root@wrosendo42 ~]# sudo ufw delete 1
```

```console
[root@wrosendo42 ~]# sudo ufw default allow outgoing
```

```console
[root@wrosendo42 ~]# sudo ufw default deny incoming
```

```console
[root@wrosendo42 ~]# sudo ufw allow 4242
```

```console
[root@wrosendo42 ~]#
```

<h2 align=center id="Hostname, Users and Groups">
Hostname, Users and Groups
</h2>

<h2 id="Hostname">
Hostname
</h2>

```console
[root@wrosendo42 ~]# sudo vi /etc/hostname
```

```console
[root@wrosendo42 ~]# sudo vi /etc/hosts
127.0.0.1	localhost localhost.localdomain localhost4 localhost4.locadomain4
::1			localhost localhost.localdomain localhost6 localhost6.locadomain6
```

```console
[root@wrosendo42 ~]# sudo reboot
```

<h2 id="Users">
Users
</h2>

```console
[root@wrosendo42 ~]# users
```

```console
[root@wrosendo42 ~]# useradd [options] <username>
```

```console
[root@wrosendo42 ~]# usermod [options] <username>
```

```console
[root@wrosendo42 ~]# userdel [options] <username>
```

```console
[root@wrosendo42 ~]# id -u <username> (UID - user ID)
```

```console
[root@wrosendo42 ~]#
```

<h2 id="Group">
Group
</h2>

```console
[root@wrosendo42 ~]# groups <username>
```

```console
[root@wrosendo42 ~]# groupadd [options] <group_name>
```

```console
[root@wrosendo42 ~]# groupdel [options] <group_name>
```

```console
[root@wrosendo42 ~]# gpasswd [options] <username> <group_name>
```

```console
[root@wrosendo42 ~]# getent group <groupname>
```

```console
[root@wrosendo42 ~]# id [options]
```


<h2 align=center id="Setting 'sudo' in linux">
Setting 'sudo' in linux
</h2>

```console
[root@wrosendo42 ~]# dnf install sudo
```

```console
[root@wrosendo42 ~]# mkdir /var/log/sudo/sudo.log
```

```console
[root@wrosendo42 ~]# visudo -f /etc/sudoers.d/sudoers-rules
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
[root@wrosendo42 ~]# sudo systemctl status sshd
```

```console
[root@wrosendo42 ~]# vi /var/log/sudo/sudo.log
sep 28 11:55:05 : root : TTY=tty1 ; PWD=/root ; USER=root;
	COMMAND=/usr/bin/systemctl status sshd
```

```console
[root@wrosendo42 ~]#
```

<h2 align=center id="Password Policy">
Password Policy
</h2>

> 1. Your password has to expire every 30 days.
> 2. The minimum number of days allowed before the modification of a password will be set to 2.
> 3. The user has to receive a warning message 7 days before their password expires.
> 4. Your password must be at least 10 characters long.
> 5. It must contain an uppercase letter and a number. Also, it must not contain more than 3 consecutive identical characters.
> 6. The password must not include the name of the user.
> 7. The following rule does not apply to the root password: The password must have at least 7 characters that are not part of the former password

```console
[root@wrosendo42 ~]# vi /etc/login.defs

:set number

# line 39: Maximum number of days a password may be used.
PASS_MAX_DAYS 30

# line 40: Minimum number of days allowed between password changes.
PASS_MIN_DAYS 2

# line 41: Minimum acceptable password length.
PASS_MIN_LEN

# line 42: Number of days warning given before a password expires.
PASS_WARN_AGE 7
```

```console
[root@wrosendo42 ~]# vi /etc/security/pwquality.conf

:set number

# line 6: Set number of characters in the new password that must not be present in the old password.
difok = 7

# line 11: Set minimum password length
minlen = 10

# line 15: Require at least one digit in the new password.
dcredit = -1

# line 20: Require at least one uppercase character in the new password.
ucredit = -1

# line 38: Set maximum number of allowed consecutive same characters in the new password.
maxrepeat = 3

# line 55: If it contains the user name in some form.
usercheck = 1

#line 70: Pronpt user at most N times before returning with error.
retry = 3
```

atulização
```console
[root@wrosendo42 ~]# vi /etc/pam.d/system-auth

:set number

# line 10:
password	requisite	pam_pwquality.so try_first_pass local_users_only retry=3 authtok_type= minlen=10 ucredit=-1 dcredit=-1 maxrepeat=3 difok=7 reject_username enforce_for_root
```

<h2 align=center id="WALL">
WALL
</h2>

```console
[root@wrosendo42 ~]# wall [options] [message-text/filename]
```

<h2 align=center id="cron">
cron
</h2>

```console
[root@wrosendo42 ~]# sudo dnf install crontabs
```

```console
[root@wrosendo42 ~]# sudo systemctl start crond.service
```

```console
[root@wrosendo42 ~]# sudo systemctl enable crond.service
```

```console
[root@wrosendo42 ~]#
```

```console
[root@wrosendo42 ~]#
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
<p><a href="https://www.snel.com/support/static-ip-configuration-centos-7/"><i><b>ip addres static</b></i></a></p>
<p><a href="https://www.techrepublic.com/article/how-to-configure-a-static-ip-address-in-centos-7/"><i><b>static IPv4 configuration</b></i></a></p>
<p><a href="https://www.server-world.info/en/note?os=CentOS_8&p=pam&f=1"><i><b>Pwquality : Set Password Rules</b></i></a></p>
<p><a href="https://www.tecmint.com/sudoers-configurations-for-setting-sudo-in-linux/"><i><b>Setting ‘sudo’ in Linux</b></i></a></p>
<p><a href="https://www.cyberciti.biz/faq/centos-8-change-hostname-computer-name-command/"><i><b>Change Hostname</b></i></a></p>
<p><a href="https://www.cyberciti.biz/faq/create-a-new-user-account-in-centos-7-8-linux/"><i><b>How to create new user</b></i></a></p>
<p><a href="https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/deployment_guide/s2-users-cl-tools"><i><b>Managing Users via command-line</b></i></a></p>
<p><a href="https://www.techrepublic.com/article/how-to-create-users-and-groups-in-linux-from-the-command-line/"><i><b>How to create users and groups</b></i></a></p>
<p><a href="https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/6/html/deployment_guide/s2-groups-cl-tools"><i><b>Managing Groups via command-line</b></i></a></p>
<p><a href="https://linuxize.com/post/how-to-add-user-to-sudoers-in-centos/"><i><b>How to Add User to Sudoers in CentOS</b></i></a></p>
<p><a href="https://github.com/caroldaniel/42sp-cursus-born2beroot/blob/master/guides/CentOS-en.md"><i><b>How to list all users in group</b></i></a></p>
<p><a href="https://phoenixnap.com/kb/linux-wall"><i><b>How to use the wall</b></i></a></p>
<p><a href="https://www.digitalocean.com/community/tutorials/how-to-use-cron-to-automate-tasks-centos-8-pt"><i><b>How to use the cron</b></i></a></p>
<p><a href="https://www.thegeekdiary.com/redhat-centos-a-beginners-guide-to-lvm-logical-volume-manager/"><i><b>Beginner's Guide to LVM</b></i></a></p>
<p><a href="https://linuxhint.com/install_lvm_centos/"><i><b>How to install and Configure LVM on CentOS</b></i></a></p>
<p><a href="https://docs.centos.org/en-US/centos/install-guide/CustomSpoke-x86/"><i><b>Manual Partitioning</b></i></a></p>
<p><a href="https://www.server-world.info/en/note?os=CentOS_8&p=lvm&f=3"><i><b>LVM : Manage Logical Volumes</b></i></a></p>
<p><a href="https://askubuntu.com/questions/264046/how-to-ssh-on-a-port-other-than-22"><i><b>How to SSH on a port</b></i></a></p>
