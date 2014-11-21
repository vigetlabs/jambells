var dest = './priv/static';
var src = './src';

module.exports = {
  browserSync: {
    proxy: 'localhost:4000'
    files: [
      './priv/static/**'
    ]
  },
  sass: {
    src: src + '/sass/*.{sass, scss}',
    dest: dest
  },
  images: {
    src: src + '/images/**',
    dest: dest + '/images'
  },
  browserify: {
    debug: true,
    extensions: ['.jsx'],
    bundleConfigs: [{
      entries: src + '/javascript/game.jsx',
      dest: dest,
      outputName: 'game.js'
    }]
  }
};
