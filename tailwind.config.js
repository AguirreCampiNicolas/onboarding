module.exports = {
  content: [
    './pages/**/*.{html,js}',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*',
    './node_modules/flowbite/**/*.js'
  ],
  theme: {
    extend: {
      backgroundImage: {
        'planit-blue-gradient': 'linear-gradient(46.99deg, #0F58B7 -4.4%, #62D9FF 120.42%)'
      },
      colors: {
        'planit-dark-blue': '#0F58B7',
        'planit-light-blue': '#9BC7FF',
        'planit-black': '#1C1C1C',
        'planit-grey-1': '#7D7D7D',
        'planit-grey-2': '#B3B3B3',
        'planit-grey-3': '#EEEEEE',
        'planit-grey-4': '#FBFBFB',
        'planit-white': '#FFFFFF'
      },
      boxShadow: {
        'planit': '2px 2px 10px 0px #00000040'
      },
      fontFamily: {
        sans: ['Poppins']
      },
      fontSize: {
        // big screen
        'h1-lg': ['70px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '600' }],
        'h2-lg': ['60px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '600' }],
        'h3-lg': ['48px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '600' }],
        'h4-lg': ['35px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '500' }],
        'h5-lg': ['30px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '500' }],
        'h6-lg': ['20px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '400' }],
        'text-lg': ['18px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '400' }],
        'bold-text-lg': ['18px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '500' }],
        'small-text-lg': ['16px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '400' }],
        'small-text-light-lg': ['16px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '300' }],
        'tiny-text-lg': ['14px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '300' }],
        'button-lg': ['16px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '500' }],
        // mobile
        'h1-sm': ['36px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '600' }],
        'h2-sm': ['25px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '500' }],
        'h3-sm': ['18px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '500' }],
        'h4-sm': ['16px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '500' }],
        'h5-sm': ['14px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '400' }],
        'h6-sm': ['12px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '400' }],
        'button-sm': ['14px', { lineHeight: '130%', letterSpacing: '-0.01em', fontWeight: '600' }]
      },
      padding: {
        '60': '15rem'
      },
      width: {
        '11': '2.75rem',
        '12': '3rem',
        '13': '3.25rem',
        '14': '3.5rem',
        '15': '3.75rem',
        '16': '4rem',
        '17': '4.25rem',
        '18': '4.5rem',
        '19': '4.75rem',
        '20': '5rem',
        '21': '5.25rem',
        '22': '5.5rem',
        '23': '5.75rem',
        '24': '6rem',
      }
    },
    screens: {
      'xl':	'1280px',
      'lg': '1024px',
      'md': '768px',
      'sm': '400px'
    },
  },
  plugins: [
    require('flowbite/plugin')
  ],
}
