require "json"

DEFAULT = 1

class Handler
  def run(req)
    begin
      params = JSON.parse(req)
    rescue
      params = {}
    end

    delay_s = params.fetch('delay_s', DEFAULT)

    delay_s = DEFAULT unless (delay_s < 120 and delay_s > 0)

    sleep delay_s.to_f
    { function_status: "success", result: { message: "Slept for #{delay_s} seconds" } }.to_json
  end
end
