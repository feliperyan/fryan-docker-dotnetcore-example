FROM microsoft/dotnet:sdk AS build-env
WORKDIR /app

# Build runtime image
FROM microsoft/dotnet:aspnetcore-runtime
WORKDIR /app
COPY /out .
CMD ASPNETCORE_URLS=http://+:$PORT dotnet myWebApp.dll