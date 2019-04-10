local agent(arch='amd64') =
  if arch == 'amd64' then
    'amd64'
  else if arch == 'arm32v6' then
    'arm'
  else if arch == 'arm32v7' then
    'arm'
  else if arch == 'arm64v8' then
    'arm64'
  else
    arch;

{
  build(name, path='latest', version='latest', arch='amd64')::
    {
      kind: 'pipeline',
      name: arch + '-' + version,
      platform: {
        os: 'linux',
        arch: agent(arch),
      },
      steps: [
        {
          name: 'dryrun',
          image: 'plugins/docker:latest',
          pull: 'always',
          settings: {
            dry_run: true,
            tags: version + '-' + arch,
            dockerfile: path + '/Dockerfile.' + arch,
            context: path,
            repo: name,
          },
          when: {
            event: ['pull_request'],
          },
        },
        {
          name: 'publish',
          image: 'plugins/docker:latest',
          pull: 'always',
          settings: {
            tags: version + '-' + arch,
            dockerfile: path + '/Dockerfile.' + arch,
            context: path,
            repo: name,
            username: { from_secret: 'docker_username' },
            password: { from_secret: 'docker_password' },
          },
          when: {
            event: ['push'],
          },
        },
      ],
      trigger: {
        ref: [
          'refs/heads/master',
          'refs/pull/**',
        ],
      },
    },

  manifest(path='latest', version='latest', depends_on=[])::
    {
      kind: 'pipeline',
      name: 'manifest-' + version,
      platform: {
        os: 'linux',
        arch: agent('amd64'),
      },
      steps: [
        {
          name: 'manifest',
          image: 'plugins/manifest:1',
          pull: 'always',
          settings: {
            username: { from_secret: 'docker_username' },
            password: { from_secret: 'docker_password' },
            spec: path + '/manifest.tmpl',
            ignore_missing: true,
          },
        },
      ],
      depends_on: [x + '-' + version for x in depends_on],
      trigger: {
        ref: [
          'refs/heads/master',
        ],
      },
    },

  microbadger(depends_on=[])::
    {
      kind: 'pipeline',
      name: 'microbadger-update',
      platform: {
        os: 'linux',
        arch: agent('amd64'),
      },
      steps: [
        {
          name: 'microbadger',
          image: 'plugins/webhook:1',
          pull: 'always',
          settings: {
            url: { from_secret: 'microbadger_url' },
          },
        },
      ],
      depends_on: ['manifest-' + x for x in depends_on],
      trigger: {
        ref: [
          'refs/heads/master',
        ],
      },
    },

  downstream(depends_on=[], repositories=[])::
    {
      kind: 'pipeline',
      name: 'trigger-downstream',
      platform: {
        os: 'linux',
        arch: agent('amd64'),
      },
      steps: [
        {
          name: 'downstream',
          image: 'plugins/downstream:1',
          pull: 'always',
          settings: {
            server: 'https://cloud.drone.io',
            token: { from_secret: 'downstream_token' },
            repositories: repositories,
          },
        },
      ],
      depends_on: ['manifest-' + x for x in depends_on],
      trigger: {
        ref: [
          'refs/heads/master',
        ],
      },
    },
}
