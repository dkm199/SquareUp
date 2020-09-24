defmodule SquareUp.V2.CashDrawerShifts do
  import Norm
  import SquareUp.Client, only: [call: 2]

  def list(client, params \\ %{}) do
    norm_spec =
      schema(%{
        "location_id" => spec(is_binary()),
        "sort_order" => spec(is_binary()),
        "begin_time" => spec(is_binary()),
        "end_time" => spec(is_binary()),
        "limit" => spec(is_integer()),
        "cursor" => spec(is_binary())
      })

    call(client, %{
      method: :get,
      params: params,
      spec: norm_spec,
      path: "/v2/cash-drawers/shifts"
    })
  end
end
