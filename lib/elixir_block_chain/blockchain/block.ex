defmodule ElixirBlockChain.Blockchain.Block do
  @moduledoc """
    This module is the single block struct in a blockchain
  """
 alias __MODULE__

  @type t :: %Block{
          timestamp: pos_integer(),
          prev_hash: String.t(),
          hash: String.t(),
          data: any()
        }
        
  defstruct ~w(timestamp prev_hash hash data)a

  @spec new(pos_integer(), String.t(), any()) :: Block.t()
  def new(timestamp, prev_hash, data) do
    hash = hash(timestamp, prev_hash, data)
    %__MODULE__{timestamp: timestamp, prev_hash: prev_hash, data: data, hash: hash}
  end

  @spec get_str(Block.t()) :: String.t()
  def get_str(block = %__MODULE__{}) do
    """
    Block
    timestamp: #{block.timestamp}
    prev_hash: #{block.prev_hash}
    hash: #{block.hash}
    data: #{block.data}
    """
  end

  @spec genesis() :: Block.t()
  def genesis() do
    __MODULE__.new(1_599_909_623_805_627, "-", "genesis data")
  end

  @spec mine_block(Block.t(), any()) :: Block.t()
  def mine_block(%__MODULE__{hash: prev_hash}, data) do
    __MODULE__.new(get_timestamp(), prev_hash, data)
  end

  @spec block_hash(Block.t()) :: any()
  def block_hash(%__MODULE__{prev_hash: prev_hash, timestamp: timestamp, data: data}) do
    hash(timestamp, prev_hash, data)
  end

  # private functions

  defp get_timestamp(), do: DateTime.utc_now() |> DateTime.to_unix(1_000_000)

  defp hash(timestamp, prev_hash, data) do
    data = "#{timestamp}:#{prev_hash}:#{Jason.encode!(data)}"
    Base.encode16(:crypto.hash(:sha256, data))
  end

 end