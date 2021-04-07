defmodule Erp.Scheduling.MachineExpense do
  use Ecto.Schema
  import Ecto.Changeset

  alias Erp.Repo

  alias Erp.Scheduling.MachineExpense

  schema "machineexpenses" do
    field :amount, :float
    field :job, :string
    field :processed, :boolean, default: false

    timestamps()
  end

  @doc false
  def changeset(machine_expense, attrs) do
    machine_expense
    |> cast(attrs, [:amount, :processed, :job])
    |> validate_required([:amount, :processed, :job])
  end

  @doc """
  Creates an expense.
  ## Examples
      iex> create_expense(%{field: value})
      {:ok, %MachineExpense{}}
      iex> create_expense(%{field: bad_value})
      {:error, %Ecto.Changeset{}}
  """
  def create_expense(amount, job) do
    float = Float.parse(amount) |> elem(0)
    Repo.insert %MachineExpense{amount: float, job: job, processed: false}
  end

  @doc """
  Gets a machine expense
  Raises `Ecto.NoResultsError` if the User does not exist.
  ## Examples
      iex> get_machineexpense!(123)
      %User{}
      iex> get_machineexpense!(asdasd)
      ** (Ecto.NoResultsError)
  """
  def get_machineexpense(id), do: Repo.get!(MachineExpense, id)

  @doc """
  Returns the list of machine expenses
  ## Examples
      iex> list_machineexpenses()
      [%MachineExpense{}, ...]
  """
  def list_machineexpenses() do
    Repo.all(MachineExpense)
  end

  @doc """
  Process a machine expense
  ## Examples
      iex> process_expense()
      [%MachineExpense{}, ...]
  """
  def process_expense(%MachineExpense{} = machineexpense, processed) do
    machineexpense
    |> MachineExpense.changeset(%{processed: processed})
    |> Repo.update()
  end
end