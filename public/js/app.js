function fmtTZ(tz){
  const now = new Date();
  return new Intl.DateTimeFormat('en-GB',{timeZone:tz,hour:'2-digit',minute:'2-digit',second:'2-digit',hour12:false}).format(now);
}

function update(){
  document.querySelector('#clock-UTC .time').textContent = fmtTZ('UTC');
  document.querySelector('#clock-Tokyo .time').textContent = fmtTZ('Asia/Tokyo');
}

update();
setInterval(update,1000);
