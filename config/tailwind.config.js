const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}'
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
        trajan: ['Trajan Color']
      },
      minHeight: {
        '128': '32rem',
      },
      colors: {
        primary: {
          light: '#fceb00',
          DEFAULT: '#FCDF00',
          dark: '#fcc100'
        },
        secondary: {
          light: '#50c89e',
          DEFAULT: '#50C878',
          dark: '#50c866'
        },
        tertiary: {
          light: '#76460F',
          DEFAULT: '#663411',
          dark: '#662d11'
        }
      }
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
    require('@tailwindcss/typography'),
    require('@tailwindcss/container-queries'),
  ]
}
