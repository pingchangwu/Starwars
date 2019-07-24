 ## Questions

 - Assuming the Star Wars API was slow, what are some optimizations that could be implemented to improve the user experience?
  I faced this problem when I found out that the API did not have a full call therefore whenever loading films, it would take a long time to load. To get around this, I implemented a lazy loader (pagination, load spinners would all work too) on the sections that required additional api calls. This reduced the load time greatly but it required the user to wait to see the data which may not be good user experience. A solution I consider was using Redis (in-memory data structure store) and storing all the data in memory. Afterwards I would set up a set interval task to call all the api's data in the background so the data stays up to date. I decided against it since I felt it was a bit over the top for the scope of the project.
  
 - Any improvements you would make to your application?
 I would make a pull request to the repo so users can make full api calls. This would reduce a lot of the problems that I have. I could have made a more elegant solution to check for bad data in the hash I was receiving from my API Helper. Something interesting would to make a more comprehensive search function that searches for everything instead of films.
