const assert = require('assert');
const { formatTimeForTimezone } = require('../../src/js/clock');

describe('clock logic', () => {
  it('formats UTC time as HH:MM:SS', () => {
    const s = formatTimeForTimezone('UTC');
    assert.match(s, /\d{2}:\d{2}:\d{2}/);
  });
});
