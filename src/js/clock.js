// Node-friendly logic used by unit tests
function formatTimeForTimezone(tz, now = new Date()){
  const fmt = new Intl.DateTimeFormat('en-GB', { timeZone: tz, hour: '2-digit', minute: '2-digit', second: '2-digit', hour12: false });
  return fmt.format(now);
}

module.exports = { formatTimeForTimezone };
