class Application

  def call(env)
    resp = Rack::Response.new

    if Time.now.hour > 12
      resp.write "Afternoon"
    else
      resp.write "Morning"
    end

    resp.finish
  end
end
