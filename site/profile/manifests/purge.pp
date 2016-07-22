class profile::purge {
  hocon_setting { 'purge levels':
    path    => '/etc/puppetlabs/puppetserver/conf.d/code-manager.conf',
    setting => 'code-manager.purge-levels',
    value   => ['deployment', 'puppetfile'],
    type    => 'array',
  }

  hocon_setting { 'purge whitelist':
    path    => '/etc/puppetlabs/puppetserver/conf.d/code-manager.conf',
    setting => 'code-manager.purge-whitelist',
    value   => ['**/*.xpp'],
    type    => 'array',
  }
}
