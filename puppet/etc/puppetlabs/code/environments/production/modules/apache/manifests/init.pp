class apache {


    case $::osfamily {
        
        "RedHat": {
            $pacote = "httpd"
        }

        "Debian": {
            $pacote = "apache2"
        }

    }


    package{$pacote:
        ensure => present
    }

    service{$pacote:
        ensure => running
    }

    file{"/var/www/html/index.html":
        source => "puppet:///modules/apache/index.html",
        ensure => present
    }    


}
