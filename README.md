$ dotnet publish </br>
$ docker build -f Dockerfile -t <docker-image-name> . </br>
$ docker run --name <container-name> -p 8080:8080 <docker-image-name> </br>

### Replace the <container-name> in the launch.json with the one you created in above step
### Attach the debuger by selecting the .NET Core Remote Attach (Docker)
### Put a break point in the code and refresh the endpoint exposed via Dockerfile
### Press F5 and select the appropriate process to attach. For this example choose "dotnet dotnetcore-debug.dll"

# Happy debugging