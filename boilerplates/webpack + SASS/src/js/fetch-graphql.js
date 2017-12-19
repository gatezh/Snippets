let url = `https://heroes.com/graphql`;
const query = `
{
  hero {
    name
    height
    skills {
      hard
      soft
    }
    habits {
      good
      bad
    }
  }
  villains {
    name
    goal
  }
}
`;

module.exports = fetch(url, { 
    method: 'POST',
    Accept: 'application/json',
    'Content-Type': 'application/json',
    body: JSON.stringify({ query })
})
.then(response => response.json())
.then(response => {
    return response;
});
