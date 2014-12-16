defmodule Sieve do

  def primes(n) do
    _primes([], 
            :math.sqrt(n), 
            2..n |> Enum.into([]))

  end

  def _primes(primes, n, list) when hd(list) >= n, do: Enum.reverse(primes) ++ list
  def _primes(primes, n, [first | tail]) do
    _primes([first | primes],
            n, 
            Enum.filter(tl(tail), &(rem(&1, first) != 0)))

  end
end
