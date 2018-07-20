const os = require('os')

const platforms = Object.assign(Object.create(null), {
	linux: 'linux',
	darwin: 'macos'
})

const platform = platforms[os.platform()]
if (!platform) {
  console.error(`Unsupported platform ${os.platform()}.`)
  process.exit(1)
}

if (os.arch() !== 'x64') {
  console.error('Unsupported architecture.')
  process.exit(1)
}

module.exports = require('pax-static-' + platform)
