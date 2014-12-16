defmodule SieveTest do
  use ExUnit.Case

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "must start with 2" do
    assert hd(Sieve.primes(100)) == 2
  end

  #  test "tail test" do
  #    assert tl(Sieve.primes(10)) == [3,5,7]
  #  end

  test "primes for 10" do
    assert [2,3,5,7] == Sieve.primes(10)
  end

  # test "end case" do
  #   _primes([2,3], :math.sqrt(10), [5,7])
  # end

end
