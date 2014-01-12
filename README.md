#SWE Project: Advisor Matcher

##Setup

###Vagrant

This is the easiest way if you have `VirtualBox` and `Vagrant` installed.

First checkout the Github repository:

    git clone https://github.com/agejku/se
    cd se/

Start the virtual machine with:

    vagrant up

This may take some time if you dont have the virtual machine (~300MB) donwloaded. After the initialization of the machine has ended you can access `Advisor Matcher` via typing `http://localhost:8080` into your browser.

###Manual (Linux)

You will have to install the following software packages with the package manager of your choice:

    + apache2
    + php5 + php_mod for apache
    + mysql

The names of these packages depend on the Linux distribution in use. On `Ubuntu` you can use these command to install the dependencies:

    apt-get update >/dev/null 2>&1
    sudo DEBIAN_FRONTEND=noninteractive apt-get install -q -y --force-yes apache2 mysql-server-5.5 libapache2-mod-auth-mysql php5-mysql php5 libapache2-mod-php5 php5-mcrypt >/dev/null 2>&1

Now you have to copy the contents of the project to the apache server webroot e.g.:

    sudo cp /path/to/project/se/* /var/www/

Now you will be able to access `Advisor Matcher` by typing `http://localhost:80/` into your browser.

###Manual (Windows)

If you want to run `Advisor Matcher` in a Windows environment it is recommended to install [XAMPP](http://www.apachefriends.org/en/xampp-windows.html). For instructions on how to install XAMPP visit this [tutorial](http://www.wikihow.com/Install-XAMPP-for-Windows).

After installing the software stack you will have to copy the contents of the project into the `htdocs` folder. The location of this folder depends on your setup.
