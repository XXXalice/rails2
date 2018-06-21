class ApplicationController < ActionController::Base
  def hello
    render html: "haeelo"
  end
end
