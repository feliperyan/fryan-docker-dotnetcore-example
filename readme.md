# Heroku .NET Core App 
### An example using Docker and the new build functionality

The interesting files in this repository are:

1. Dockerfile
2. heroku.yml

To reproduce this locally:

1. Install .Net Core SDK
2. Create an app  `dotnet new webApp -o myWebAppp`
3. Get dev certificate as https is on by default  `cd myWebAppp; dotnet dev-certs https --trust`
4. `dotnet restore`
5. `dotnet publish -c Release -o out`
6. Initialise git repo, add all files, commit
7. Create an app on heroku  `heroku create`
8. Set heroku's app stack to container  `heroku stack:container`
9. Use this repo's Dockerfile and heroku.yml as a template for your own Dockerfile and heroku.yml
10. `git push heroku master` to deploy

If you want to run it locally:

1. First build your image: `docker build . -t simpledotnet`
2. Run it `docker run -it -p 8080:8080 -e PORT=8080 simpledotnet`
