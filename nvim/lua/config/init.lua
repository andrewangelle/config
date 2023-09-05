require('config.remap')
require('config.set')

require('onedark').setup {
  style = 'darker',
  transparent = true
}
require('onedark').load()

print('hello from lua slash config')
