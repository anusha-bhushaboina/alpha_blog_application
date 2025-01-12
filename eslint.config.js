export default [
  {
    files: ['**/*.js'],
    ignores: ['node_modules/**', 'vendor/**', 'dist/**'], // Exclude the vendor directory
    languageOptions: {
      parserOptions: {
        ecmaVersion: 'latest',
        sourceType: 'module',
      },
    },
    rules: {
      indent: ['error', 2],
      'no-console': 'warn',
      // Add more rules here
    },
  },
];
