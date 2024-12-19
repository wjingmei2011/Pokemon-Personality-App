const path = require('path');
const htmlWebpackPlugin = require('html-webpack-plugin');

module.exports = {
  entry: './src/views/index.js',
  output: {
    path: path.resolve(__dirname, 'dist'),
    filename: 'bundle.js',
    clean: true,
  },
  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        exclude: /node_modules/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: [
              '@babel/preset-env',
              '@babel/preset-react'
            ]
          }
        }
      },
      {
        test: /\.css$/,
        use: ['style-loader', 'css-loader']
      },
    ]
  },
  resolve: {
    extensions: ['.js', '.jsx']
  },
  plugins: [
    new htmlWebpackPlugin(
      { template: './src/views/public/index.html',
        inject: true,
      }
    )
  ],
  devServer: {
    static: './dist',
    port: 8000,
    open: true,
    proxy:
      [

        {
          context: ['/pokemon'],
          target: process.env.BACKEND_URL || 'http://localhost:3000',
          changeOrigin: true,
          secure: false
        }
      ]
  },
  mode: 'development'
};