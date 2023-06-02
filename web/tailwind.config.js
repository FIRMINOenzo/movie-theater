/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/components/**/*.{js,ts,jsx,tsx,mdx}",
    "./src/app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  theme: {
    extend: {
      fontFamily: {
        sans: "var(--font-roboto)",
        alt: "var(--font-bai-jamjuree)",
      },
      colors: {
        gray: {
          200: "#151515",
        },
        purple: {
          50: "#BD86E9",
          100: "#A044FF",
          200: "#6A3093",
          300: "#7A26BB",
        },
      },
    },
  },
  plugins: [],
};
