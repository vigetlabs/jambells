var dest = './priv/static';
var src = './src';

module.exports = {
  browserSync: {
    proxy: 'localhost:4000',
    files: [
      './priv/static/**'
    ]
  },
  sass: {
    src: src + '/sass/**/*.scss',
    dest: dest + '/css'
  },
  images: {
    src: src + '/images/**',
    dest: dest + '/images'
  },
  browserify: {
    debug         : true,
    extensions    : ['.js', '.jsx', '.coffee'],
    bundleConfigs : [{
      entries: src + '/javascript/app.js',
      dest: dest + '/js',
      outputName: 'app.js'
    }]
  }
};
