let url = `http://jsonplaceholder.typicode.com/posts`;

module.exports = fetch(url)
  .then(response => response.json())
  .then(response => {
    return response;
});
