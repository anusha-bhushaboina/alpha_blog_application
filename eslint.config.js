// eslint.config.js
export default [
  {
    languageOptions: {
      parserOptions: {
        ecmaVersion: 'latest',
        sourceType: 'module',
      },
      globals: {
        // Define global variables here
        browser: true,
        node: true,
      },
    },
    rules: {
      'no-console': 'warn',
      'indent': ['error', 2],
      // Add more rules as needed
    },
  },
];
  