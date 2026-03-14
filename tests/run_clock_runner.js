const { formatTimeForTimezone } = require('../src/js/clock');

// Exercise the clock module to generate coverage
console.log('UTC:', formatTimeForTimezone('UTC'));
console.log('Asia/Tokyo:', formatTimeForTimezone('Asia/Tokyo'));

// exercise with a custom date
console.log('Custom:', formatTimeForTimezone('UTC', new Date('2020-01-01T12:34:56Z')));

process.exit(0);
