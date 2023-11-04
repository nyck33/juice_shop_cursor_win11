/*
 * Copyright (c) 2014-2023 Bjoern Kimminich & the OWASP Juice Shop contributors.
 * SPDX-License-Identifier: MIT
 */
console.log('Entering app.ts');
// ... rest of the code ...
require('./lib/startup/validateDependencies')().then(() => {
  const server = require('./server')
  server.start()
})
console.log('Exiting app.ts');
