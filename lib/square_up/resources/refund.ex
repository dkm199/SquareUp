defmodule SquareUp.Refund do
  import SquareUp.Client, only: [call: 2]

  def create(client, params) do
    call(client, %{
      method: :post,
      params: params,
      path: "/v1/#{Map.get(params, "location_id")}/refunds"
    })
  end
end