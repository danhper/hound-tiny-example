defmodule WebScraper do
  use Hound.Helpers

  def scrape_example do
    Hound.start_session
    navigate_to "http://www.example.com"
    result =
      find_element(:tag, "html")
      |> inner_html
    Hound.end_session

    result
  end
end
