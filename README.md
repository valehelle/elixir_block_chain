# ElixirBlockChain

A simple example for creating Blockchain in Elixir.

To run test
```
mix test
```

Run in console
```console
$ iex -S mix
```

```elixir
iex(17)> blockchain = ElixirBlockChain.Blockchain.new()
%ElixirBlockChain.Blockchain{
  chain: [
    %ElixirBlockChain.Blockchain.Block{
      data: "genesis data",
      hash: "F277BF9150CD035D55BA5B48CB5BCBE8E564B134E5AD0D56E439DD04A1528D3B",
      prev_hash: "-",
      timestamp: 1599909623805627
    }
  ]
}
iex(18)> blockchain = ElixirBlockChain.Blockchain.add_block(blockchain, "this is a new block")
%ElixirBlockChain.Blockchain{
  chain: [
    %ElixirBlockChain.Blockchain.Block{
      data: "genesis data",
      hash: "F277BF9150CD035D55BA5B48CB5BCBE8E564B134E5AD0D56E439DD04A1528D3B",
      prev_hash: "-",
      timestamp: 1599909623805627
    },
    %ElixirBlockChain.Blockchain.Block{
      data: "this is a new block",
      hash: "F39DF7F662BA53154E58519B49CF4A69A0D6DA98E0D5ACBD212C223E1A59E190",
      prev_hash: "F277BF9150CD035D55BA5B48CB5BCBE8E564B134E5AD0D56E439DD04A1528D3B",
      timestamp: 1607539616443197
    }
  ]
}
iex(19)> blockchain = ElixirBlockChain.Blockchain.add_block(blockchain, "this is the third block")
%ElixirBlockChain.Blockchain{
  chain: [
    %ElixirBlockChain.Blockchain.Block{
      data: "genesis data",
      hash: "F277BF9150CD035D55BA5B48CB5BCBE8E564B134E5AD0D56E439DD04A1528D3B",
      prev_hash: "-",
      timestamp: 1599909623805627
    },
    %ElixirBlockChain.Blockchain.Block{
      data: "this is a new block",
      hash: "F39DF7F662BA53154E58519B49CF4A69A0D6DA98E0D5ACBD212C223E1A59E190",
      prev_hash: "F277BF9150CD035D55BA5B48CB5BCBE8E564B134E5AD0D56E439DD04A1528D3B",
      timestamp: 1607539616443197
    },
    %ElixirBlockChain.Blockchain.Block{
      data: "this is the third block",
      hash: "0B2A9C2304A794554A54DE01F682F0C9B7AB7CD6B7A79DC99167C2D1C45F923B",
      prev_hash: "F39DF7F662BA53154E58519B49CF4A69A0D6DA98E0D5ACBD212C223E1A59E190",
      timestamp: 1607539628706044
    }
  ]
}
```



Tutorial from [https://medium.com/coinmonks/building-a-blockchain-in-elixir-part-1-4d4ed889525b](https://medium.com/coinmonks/building-a-blockchain-in-elixir-part-1-4d4ed889525b)



