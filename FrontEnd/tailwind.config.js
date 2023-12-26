/** @type {import('tailwindcss').Config} */
module.exports = {
    purge: ['./src/**/*.{js,jsx,ts,tsx}', './public/index.html'],
    content: ["./src/**/*.{html,js,jsx}"],
    theme: {
        extend: {},
    },
    plugins: [],
};
