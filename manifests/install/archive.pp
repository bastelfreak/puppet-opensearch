# @summary
#   Install opensearch via tarball.
#
# @api private
#
class opensearch::install::archive {
  assert_private()

  if $opensearch::version =~ Undef {
    fail("Using 'opensearch::package_source: archive' requires to set a version via 'opensearch::version: <version>'!")
  }

  $file = "opensearch-${opensearch::version}-linux-${opensearch::package_architecture}.tar.gz"

  user { 'opensearch':
    ensure     => $opensearch::package_ensure,
    home       => $opensearch::package_directory,
    managehome => false,
    system     => true,
    shell      => '/bin/false',
  }

  if $opensearch::package_ensure == 'present' {
    file { $opensearch::package_directory:
      ensure => 'directory',
      owner  => 'opensearch',
      group  => 'opensearch',
    }

    file { '/var/lib/opensearch':
      ensure => 'directory',
      owner  => 'opensearch',
      group  => 'opensearch',
    }

    file { '/var/log/opensearch':
      ensure => 'directory',
      owner  => 'opensearch',
      group  => 'opensearch',
    }

    archive { "/tmp/${file}":
      provider        => 'wget',
      path            => "/tmp/${file}",
      extract         => true,
      extract_path    => $opensearch::package_directory,
      extract_command => "tar -xvzf /tmp/${file} --wildcards opensearch-${opensearch::version}/* -C ${opensearch::package_directory}",
      user            => 'opensearch',
      group           => 'opensearch',
      creates         => "${opensearch::package_directory}/bin",
      cleanup         => true,
      source          => "https://artifacts.opensearch.org/releases/bundle/opensearch/${opensearch::version}/${file}",
    }
  } else {
    file { $opensearch::package_directory:
      ensure  => $opensearch::package_ensure,
      revsere => true,
      force   => true,
    }

    file { '/var/lib/opensearch':
      ensure  => $opensearch::package_ensure,
      revsere => true,
      force   => true,
    }

    file { '/var/log/opensearch':
      ensure  => $opensearch::package_ensure,
      revsere => true,
      force   => true,
    }
  }
}
