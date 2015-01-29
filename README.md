# RAM Solver


## Usage

    $0  total_ram_to_use  mysql_global  mysql_per  apache_per
    
    NOTE: use the same units for each value and provide values without units.
    EXAMPLE: ./ramsolver.pl 3800 300 2.8 32
    
    total_ram_to_use  How much RAM do you want MySQL and Apache to use up?
    mysql_global      MySQL total buffers
    mysql_per         MySQL per-thread buffers
    apache_per        average or expected RAM usage per Apache child process

