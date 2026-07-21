FROM mcr.microsoft.com/mssql/server:2022-latest

ENV ACCEPT_EULA=Y
ENV MSSQL_SA_PASSWORD=SmithWessonMagnum357!

# USER root

# Jika perlu install
# RUN apt-get update \
#     && apt-get install -y mssql-tools18 \
#     && rm -rf /var/lib/apt/lists/*

ENV PATH="$PATH:/opt/mssql-tools18/bin"

VOLUME ["/var/opt/mssql"]
EXPOSE 1433
