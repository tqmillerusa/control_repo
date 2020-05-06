class minecraft {
  file {'/opt/minecraft':
    ensure => directory,
  }
  file {'/opt/minecraft/minecraft_server.1.15.2.jar':
    ensure => file,
    source => 'https://launcher.mojang.com/v1/objects/bb2b6b1aefcd70dfd1892149ac3a215f6c636b07/server.jar'
  }
  package {'java':
    ensure => present,
  }
  file {'/opt/mincraft/eula.txt':
    ensure => file,
    content => 'eula=true',
  }
  file {'/etc/systemd/system/mincraft.service':
    ensure => file,
    source => 'puppet:///modules/minecraft/minecraft.service'
  }
}