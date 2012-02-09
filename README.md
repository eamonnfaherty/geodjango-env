# What is it:
It is an 'out of the box' vm configured for [Geo Django](https://docs.djangoproject.com/en/1.3/ref/contrib/gis/), using [Chef](http://wiki.opscode.com/display/chef/Home) and [Vagrant](http://vagrantup.com/)

* It installs and sets up postgresql with postgis
* It installs nginx
* It installs some utils (vim, screen and git)
* It installs some useful python utils (pip, virtualenv and virtualenvwrapper)
* It fixes VirtualBox issue where shared folders to not work due to addon/guesttools not being installed

### What it builds/prepares:
* apt - updates
* apt-upgrade upgrades vm packages (disabled by default)
* build-essential
* database - postgres + postgis
* geos - installs
* proj4 - installs
* git - installs
* nginx - installs
* python-pip - installs
* python-virtualenv - installs
* virtualenvwrapper - installs and adds virtualenvwrapper to profile
* screen - installs
* vim - installs
* virtualbox-guesttools - installs guest tools so that shared folders work

### What it doesn't build/prepare:
* django - you should install this in your virtualenv

### What doesn't it build/prepare but will do soon:
* user setup
* fabric template for project creation / deployment

### How to use it

	$ git clone https://github.com/eamonnfaherty/geodjango-env.git
	$ cd geodjango-env
	$ vim cookbooks/database/attributes/default.rb #edit db conf
	$ vagrant up

### Thanks to
* The guys at caffeinehit for their version which I used as a base : https://github.com/caffeinehit/chef-geodjango Thank you guys!