 /** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./Website code/**/*.html"],
  theme: {
    screens: {
      sm: "480px",
      md: "768px",
      lg: "976px",
      xl: "1440px",
    },
    extend: {
      colors: {
          lightblue: "#7EFBF3",
          darkblue: "#030814",
      },
    },
  },
  plugins: [],
};
