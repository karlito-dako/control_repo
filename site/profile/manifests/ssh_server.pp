class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQChnYk08dCOANgZ3hKXPffXMK++bsCTrnwKOxFNMbF3wqkxlYxD4cDHkHnxXW/+7mt8LP0LH/rXHWt69aD4rss6xE/lPZsZbbgS+9eoEW+dSje3Y7inIjKHV4FqDnPKhDl+fCOP/ftjt3c3KhzoegPRYuHAKxuofk4OFYUKrgDEF93yPfxaTFZbTjsst3Z/XchvTM6Qocs9q0fHJjc9Sq3zk8tEfzpAyG7owbR180zd5ZqfVnR+LOvjsxUXyzZIyW9+H3IMVBfwDZwXyiHHYgqqAgtuerfuxaxUELP8v9w6e9rDZ6wN1DKN2QxpUBCsctrX76EoB6XklCrFbGJ02q2X',
	}  
}
