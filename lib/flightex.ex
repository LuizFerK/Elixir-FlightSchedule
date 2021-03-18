defmodule Flightex do
  alias Flightex.Users.Agent, as: UserAgent
  alias Flightex.Users.CreateUser

  def start_agents do
    UserAgent.start_link(%{})
  end

  defdelegate create_user(params), to: CreateUser, as: :call
end
