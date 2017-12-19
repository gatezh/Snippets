const fetchData = require('./fetch-json');

fetchData.then(response => {
  console.log(response);
  response.forEach(record => {
    document.body.append(`${record.title}`);
  })
});
