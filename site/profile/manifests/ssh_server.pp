class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_keys {'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDsfNR9o+6sCSZ+PU0B0gv3JllUjQ2GxJ5gBx1KlwKsPWtQB5FlbWt4ELx+1KPzLYf9fORYPOwVDryk1/dffsOnvzU/Pc1S4sbvTX54NkbJBmj/hJThrbXEvwwZIUPdlKf1nfxDOo3hpvFDE4Ihr8RNpeXF9xIz47sqhGZDQ02A6P1jcYAkv0evOhk02pJ+eaU6txon1kPjlauwIH1ED1+r3HsOoQaRqxOYnkEzgaK4289WeyzfugsoC2DT3nYEYFxjzYJQ0mmMyWiLRNXVYthtSskSkatlBrH0HMaJxYFcQv23v0Tmg/Y4J91NcS2k0YtbD515IDD1D0z3B4sfJj4J',
  }
}
