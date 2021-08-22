FROM elixir:1.12-alpine

RUN apk add --no-cache git

WORKDIR /app

RUN mix local.hex --force && \
    mix local.rebar --force

COPY . .

CMD ["elixir", "app.exs"]
