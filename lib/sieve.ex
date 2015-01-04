defmodule Sieve do

  def primes(n) do
    _primes([], 
            :math.sqrt(n), 
            2..n |> Enum.into([]))
  end

  def _primes(primes, n, list) do
    first = hd(list)
    cond do
      first >= n -> Enum.reverse(primes) ++ list
      true -> _primes([first | primes],
                      n, 
                      Enum.filter(tl(list), &(is_not_a_multiple(&1, first))))
    end

  end

  def is_not_a_multiple(m,n) do
    rem(m,n) != 0
  end
end
