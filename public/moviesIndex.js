axios.get("http://localhost:3000/api/movies-index").then(function(response) {
  var movies = response.data;
  console.log(movies);
});