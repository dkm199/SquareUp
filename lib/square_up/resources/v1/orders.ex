defmodule SquareUp.V1.Orders do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        "location_id" => spec(is_binary()),
        "order" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "batch_token" => spec(is_binary())
      })

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v1/#{Map.get(params, "location_id")}/orders"
    })
  end
end
