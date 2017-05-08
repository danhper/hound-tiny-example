FROM elixir:1.4

RUN mix local.hex --force
RUN mix local.rebar --force
RUN mkdir /web_scraper
WORKDIR /web_scraper
ADD mix.exs /web_scraper/mix.exs
ADD mix.lock /web_scraper/mix.lock
RUN mix deps.get
ADD . /web_scraper
RUN mix compile
