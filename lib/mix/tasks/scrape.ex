defmodule Mix.Tasks.WebScraper.Scrape do
  use Mix.Task

  def run(_args) do
    {:ok, _started} = Application.ensure_all_started(:hound)
    IO.inspect(WebScraper.scrape_example())
  end
end
