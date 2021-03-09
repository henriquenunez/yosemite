defmodule SimpleServer.Router do
	use Plug.Router
	use Plug.Debugger
	require Logger
plug(Plug.Logger, log: :debug)
plug(:match)
plug(:dispatch)

post "/frame" do
	{:ok, body, conn} = read_body(conn)
	#IO.inspect(body)
	file = File.open!("frame_data", [:write])
	IO.binwrite(file, body)
	send_resp(conn, 201, "Added")
end

end
