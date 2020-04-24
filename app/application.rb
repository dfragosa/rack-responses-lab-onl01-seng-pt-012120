class Application
require 'rack'  

  def call(env)
    resp = Rack::Response.new
    return [200, {'Content-Type'=> 'text/html'}, greeting]
  end
  
  def greeting
    Time.now.hour < 12 ? ["<em>Good Morning</em>"] : ["<em>Good Afternoon</em>"]
  end
end

