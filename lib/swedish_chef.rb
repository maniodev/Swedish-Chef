# Middleware, gets text and provides swedish chef version
class SwedishChef
  def self.call(env)
    request_params = Rack::Request.new env
    input = request_params.params.keys.first
    output = `echo  \"#{input}\" | ./chef`
    [200, { 'Content-Type' => 'text/plain' }, [output]]
  end
end
