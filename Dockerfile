FROM microsoft/dotnet:2.0-sdk

RUN apt-get update
RUN apt-get install -y unzip procps
RUN curl -sSL https://aka.ms/getvsdbgsh | bash /dev/stdin -v latest -l ~/vsdbg

WORKDIR /app
COPY /bin/Debug/netcoreapp2.0/publish/ .
ENV ASPNETCORE_URLS=http://+:8080
EXPOSE 8080
ENTRYPOINT ["dotnet", "dotnetcore-debug.dll"]