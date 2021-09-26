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

