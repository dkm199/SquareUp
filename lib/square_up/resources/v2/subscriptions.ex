defmodule SquareUp.V2.Subscriptions do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def search(client, params \\ %{}) do
    norm_spec = spec(SquareUp.Schema.search_subscriptions_request())

    call(client, %{
      method: :post,
      params: params,
      spec: norm_spec,
      path: "/v2/subscriptions/search"
    })
  end
end
