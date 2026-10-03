FROM julia:1.11

WORKDIR /app

COPY . .

RUN julia -e 'using Pkg; Pkg.instantiate()'

EXPOSE 8080

CMD ["julia","server.jl"]
