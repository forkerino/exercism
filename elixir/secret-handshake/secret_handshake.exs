defmodule SecretHandshake do
  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @handshakes ["wink","double blink", "close your eyes", "jump"]
  use Bitwise
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) do
    if (code &&& 31) > 0 do
      Integer.digits(code,2) 
      |> Enum.reverse
      |> parse_list(@handshakes)
    else 
      []
    end
  end

  
  def parse_list([1],[],list) do list end
  def parse_list([],_, list) do Enum.reverse(list) end
  def parse_list(list, hands, acc) do
    if hd(list) == 1 do
      parse_list(tl(list),tl(hands),[hd(hands) | acc])
    else 
      parse_list(tl(list),tl(hands),acc)
    end  
  end
  def parse_list(list, hands) do
    if hd(list) == 1 do
      parse_list(tl(list),tl(hands),[hd(hands)])
    else 
      parse_list(tl(list),tl(hands),[])
    end  
  end
end

